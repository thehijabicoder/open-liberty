/*******************************************************************************
 * Copyright (c) 2022 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package test.jakarta.concurrency.ejb;

import static jakarta.enterprise.concurrent.ContextServiceDefinition.APPLICATION;

import java.util.concurrent.Executor;

import jakarta.annotation.Resource;
import jakarta.ejb.Stateless;
import jakarta.enterprise.concurrent.ContextServiceDefinition;
import jakarta.enterprise.concurrent.ManagedExecutorDefinition;
import jakarta.enterprise.concurrent.ManagedExecutorService;
import jakarta.enterprise.concurrent.ManagedScheduledExecutorDefinition;
import jakarta.enterprise.concurrent.ManagedThreadFactoryDefinition;

import test.context.list.ListContext;
import test.context.location.ZipCode;
import test.context.timing.Timestamp;

// Use the same name as a context service in ConcurrencyTestServlet,
// which must be permitted because it is scoped to a different module.
@ContextServiceDefinition(name = "java:module/concurrent/ZLContextSvc",
                          propagated = { ZipCode.CONTEXT_NAME, ListContext.CONTEXT_NAME, APPLICATION },
                          cleared = Timestamp.CONTEXT_NAME,
                          unchanged = "Priority")
@ManagedExecutorDefinition(name = "java:comp/concurrent/executor8",
                           context = "java:app/concurrent/appContextSvc",
                           hungTaskThreshold = 480000,
                           maxAsync = 1)
@ManagedScheduledExecutorDefinition(name = "java:module/concurrent/executor9",
                                    context = "java:module/concurrent/ZLContextSvc",
                                    hungTaskThreshold = 540000,
                                    maxAsync = 2)
@ManagedThreadFactoryDefinition(name = "java:module/concurrent/tf",
                                context = "java:app/concurrent/appContextSvc",
                                priority = 6)
@Stateless
public class ExecutorBean implements Executor {
    @Resource(lookup = "java:comp/concurrent/executor8", name = "java:app/env/concurrent/executor8ref")
    ManagedExecutorService executor8;

    @Override
    public void execute(Runnable runnable) {
        runnable.run();
    }
}