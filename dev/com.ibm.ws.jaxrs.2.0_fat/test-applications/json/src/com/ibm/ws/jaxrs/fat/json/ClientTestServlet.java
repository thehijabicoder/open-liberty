/*******************************************************************************
 * Copyright (c) 2019 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.jaxrs.fat.json;

import static org.junit.Assert.assertEquals;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.core.MediaType;

@WebServlet("/TestServlet")
public class ClientTestServlet extends HttpServlet {

    private static final long serialVersionUID = 6483141066276996160L;
    private static final String jsonwar = "json";
    private String serverIP;
    private String serverPort;

    private static Client client;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter pw = resp.getWriter();

        String testMethod = req.getParameter("test");
        if (testMethod == null) {
            pw.write("no test to run");
            return;
        }

        runTest(testMethod, pw, req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    private void runTest(String testMethod, PrintWriter pw, HttpServletRequest req, HttpServletResponse resp) {
        try {
            client = ClientBuilder.newClient();
            Method testM = this.getClass().getDeclaredMethod(testMethod, new Class[] { Map.class, StringBuilder.class });
            Map<String, String> m = new HashMap<String, String>();

            Iterator<String> itr = req.getParameterMap().keySet().iterator();

            while (itr.hasNext()) {
                String key = itr.next();
                if (key.indexOf("@") == 0) {
                    m.put(key.substring(1), req.getParameter(key));
                }
            }

            serverIP = req.getLocalAddr();
            serverPort = String.valueOf(req.getLocalPort());
            m.put("serverIP", serverIP);
            m.put("serverPort", serverPort);

            StringBuilder ret = new StringBuilder();
            testM.invoke(this, m, ret);
            pw.write(ret.toString());

        } catch (Exception e) {
            e.printStackTrace(); // print to the logs too since the test client only reads the first line of the pw output
            if (e instanceof InvocationTargetException) {
                e.getCause().printStackTrace(pw);
            } else {
                e.printStackTrace(pw);
            }
        } finally {
            client.close();
        }
    }

    private String getAddress(String path) {
        return "http://" + serverIP + ":" + serverPort + "/" + jsonwar + "/" + path;
    }

    public void testCountriesUpperCase(Map<String, String> param, StringBuilder ret) {
        Country[] countries = client.target(getAddress("rest/country/upper")).request().accept(MediaType.TEXT_PLAIN, MediaType.APPLICATION_JSON).get(Country[].class);
        assertEquals("DANMARK", countries[0].getName());
        assertEquals("ÆGYPTEN", countries[1].getName());
        ret.append("OK");
    }

    public void testCountriesLowerCase(Map<String, String> param, StringBuilder ret) {
        Country[] countries = client.target(getAddress("rest/country/lower")).request().accept(MediaType.TEXT_PLAIN, MediaType.APPLICATION_JSON).get(Country[].class);
        assertEquals("danmark", countries[0].getName());
        assertEquals("ægypten", countries[1].getName());
        ret.append("OK");
    }

    public void testInvalidBody(Map<String, String> param, StringBuilder ret) throws ProtocolException, MalformedURLException, IOException {
        ret.append(sendInvalidJson("rest/country/returnCapital"));
    }

    protected int sendInvalidJson(String path) throws ProtocolException, MalformedURLException, IOException {
        URL url = new URL(getAddress(path));
        HttpURLConnection con = (HttpURLConnection)url.openConnection();
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json");
        con.setRequestProperty("Accept", "application/json");
        con.setDoOutput(true);

        String jsonInputString = "invalid json";

        try(OutputStream os = con.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        }

        try(BufferedReader br = new BufferedReader(
                                                   new InputStreamReader(con.getInputStream(), "utf-8"))) {
                                                     StringBuilder response = new StringBuilder();
                                                     String responseLine = null;
                                                     while ((responseLine = br.readLine()) != null) {
                                                         response.append(responseLine.trim());
                                                     }
                                                     System.out.println(response.toString());
                                                 }
        return con.getResponseCode();
    }
}
