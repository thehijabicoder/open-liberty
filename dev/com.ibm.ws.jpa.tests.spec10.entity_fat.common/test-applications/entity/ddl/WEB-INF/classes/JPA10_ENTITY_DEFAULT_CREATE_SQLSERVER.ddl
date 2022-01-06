CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(255) NOT NULL, SEQ_COUNT BIGINT NULL, PRIMARY KEY (SEQ_NAME));

INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('TableType2Generator', 0);
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('XMLTableType2Generator', 0);
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0);
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN_TABLE', 0);
INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN_SEQUENCE', 0);

CREATE TABLE AnnEmbedMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE AnnMSCMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE AnnMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE DatatypeSupPropTestEntity (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault CHAR(1), charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE DatatypeSupTestEntity (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault CHAR(1), charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE EmbeddableIdEntity (country VARCHAR(255) NOT NULL, id INT NOT NULL, intVal INT, PRIMARY KEY (country, id));
CREATE TABLE EmbeddedObjectAOEntity (id INT NOT NULL, localIntVal INT, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal CHAR(1), doubleVal FLOAT(32), floatVal REAL, intValCol INT, longValCol BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE EmbeddedObjectEntity (id INT NOT NULL, localIntVal INT, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal CHAR(1), doubleVal FLOAT(32), floatVal REAL, intVal INT, longVal BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE IdClassEntity (country VARCHAR(255) NOT NULL, id INT NOT NULL, intVal INT, PRIMARY KEY (country, id));
CREATE TABLE PKEntityByte (pkey TINYINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityByteWrapper (pkey TINYINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityChar (pkey CHAR(1) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityCharacterWrapper (pkey CHAR(1) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityInt (pkey INT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityIntWrapper (pkey INT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityJavaSqlDate (pkey DATETIME NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityJavaUtilDate (pkey DATETIME NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityLong (pkey BIGINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityLongWrapper (pkey BIGINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityShort (pkey SMALLINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityShortWrapper (pkey SMALLINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKEntityString (pkey VARCHAR(255) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE PKGenAutoEntity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE PKGenIdentityEntity (id INT NOT NULL IDENTITY, intVal INT, PRIMARY KEY (id));
CREATE TABLE PKGenTableType1Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE PKGenTableType2Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE PKGenTableType3Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE PKGenTableType4Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE ReadOnlyEntity (id INT NOT NULL, intVal INT, noInsertIntVal INT, noUpdatableIntVal INT, readOnlyIntVal INT, PRIMARY KEY (id));
CREATE TABLE SEC_TABLE1 (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));
CREATE TABLE SEC_TABLE2AMSC (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));
CREATE TABLE SEC_TABLEEMB (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));
CREATE TABLE SerialDatatypeSupPropTE (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault CHAR(1), charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE SerialDatatypeSupTE (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault TEXT, charAttrDefault CHAR(1), charWrapperArrayAttrDefault TEXT, characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE TableIDGen4Table (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME));
CREATE TABLE TableIDGenTable (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME));
CREATE TABLE VersionedIntEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version INT, PRIMARY KEY (id));
CREATE TABLE VersionedIntWrapperEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version INT, PRIMARY KEY (id));
CREATE TABLE VersionedLongEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id));
CREATE TABLE VersionedLongWrapperEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id));
CREATE TABLE VersionedShortEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id));
CREATE TABLE VersionedShortWrapperEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id));
CREATE TABLE VersionedSqlTimestampEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version DATETIME2, PRIMARY KEY (id));

CREATE TABLE XMLDatatypeSupPropTestEntity (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault CHAR(1), charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE XMLDatatypeSupTestEntity (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault CHAR(1), charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE XMLEmbeddableIdEntity (country VARCHAR(255) NOT NULL, id INT NOT NULL, intVal INT, PRIMARY KEY (country, id));
CREATE TABLE XMLEmbeddedObjectAOEntity (id INT NOT NULL, localIntVal INT, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal CHAR(1), doubleVal FLOAT(32), floatVal REAL, intValCol INT, longValCol BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE XMLEmbeddedObjectEntity (id INT NOT NULL, localIntVal INT, localStrVal VARCHAR(255), booleanVal BIT, byteVal TINYINT, charVal CHAR(1), doubleVal FLOAT(32), floatVal REAL, intVal INT, longVal BIGINT, shortVal SMALLINT, stringVal VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE XMLEmbedMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE XMLIdClassEntity (country VARCHAR(255) NOT NULL, id INT NOT NULL, intVal INT, PRIMARY KEY (country, id));
CREATE TABLE XMLMSCMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE XMLMultiTableEnt (id INT NOT NULL, name VARCHAR(255), PRIMARY KEY (id));
CREATE TABLE XMLPKEntityByte (pkey TINYINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityByteWrapper (pkey TINYINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityChar (pkey CHAR(1) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityCharacterWrapper (pkey CHAR(1) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityInt (pkey INT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityIntWrapper (pkey INT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityJavaSqlDate (pkey DATETIME NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityJavaUtilDate (pkey DATETIME NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityLong (pkey BIGINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityLongWrapper (pkey BIGINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityShort (pkey SMALLINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityShortWrapper (pkey SMALLINT NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKEntityString (pkey VARCHAR(255) NOT NULL, intVal INT, PRIMARY KEY (pkey));
CREATE TABLE XMLPKGenAutoEntity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLPKGenIdentityEntity (id INT NOT NULL IDENTITY, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLPKGenTableType1Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLPKGenTableType2Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLPKGenTableType3Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLPKGenTableType4Entity (id INT NOT NULL, intVal INT, PRIMARY KEY (id));
CREATE TABLE XMLReadOnlyEntity (id INT NOT NULL, intVal INT, noInsertIntVal INT, noUpdatableIntVal INT, readOnlyIntVal INT, PRIMARY KEY (id));
CREATE TABLE XMLSerialDatatypeSupPropTE (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault CHAR(1), charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE XMLSerialDatatypeSupTE (id INT NOT NULL, bigDecimalAttrDefault NUMERIC, bigIntegerAttrDefault BIGINT, booleanAttrDefault BIT, booleanWrapperAttrDefault BIT, byteArrayAttrDefault IMAGE, byteAttrDefault TINYINT, byteWrapperArrayAttrDefault IMAGE, byteWrapperAttrDefault TINYINT, charArrayAttrDefault VARCHAR(255), charAttrDefault CHAR(1), charWrapperArrayAttrDefault VARCHAR(255), characterWrapperAttrDefault CHAR(1), doubleAttrDefault FLOAT(32), doubleWrapperAttrDefault FLOAT(32), enumeration SMALLINT, floatAttrDefault REAL, floatWrapperAttrDefault REAL, intAttrDefault INT, integerWrapperAttrDefault INT, longAttrDefault BIGINT, longWrapperAttrDefault BIGINT, serializableClass IMAGE, shortAttrDefault SMALLINT, shortWrapperAttrDefault SMALLINT, sqlDateAttrDefault DATETIME, sqlTimeAttrDefault DATETIME, sqlTimestampAttrDefault DATETIME2, stringAttrDefault VARCHAR(255), utilCalendarAttrDefault DATETIME, utilDateAttrDefault DATETIME, PRIMARY KEY (id));
CREATE TABLE XMLTableIDGen4Table (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME));
CREATE TABLE XMLTableIDGenTable (GEN_NAME VARCHAR(255) NOT NULL, GEN_VAL BIGINT, PRIMARY KEY (GEN_NAME));
CREATE TABLE XMLVersionedIntEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version INT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedIntWrapperEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version INT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedLongEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedLongWrapperEnt (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version BIGINT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedShortEntity (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedShortWrapperEnt (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version SMALLINT, PRIMARY KEY (id));
CREATE TABLE XMLVersionedSqlTimestampEnt (id INT NOT NULL, intVal INT, stringVal VARCHAR(255), version DATETIME2, PRIMARY KEY (id));
CREATE TABLE XSEC_TABLE1 (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));
CREATE TABLE XSEC_TABLE2AMSC (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));
CREATE TABLE XSEC_TABLEEMB (id INT, city VARCHAR(255), state VARCHAR(255), street VARCHAR(255), zip VARCHAR(255));

INSERT INTO TableIDGenTable(GEN_NAME, GEN_VAL) values ('TableType3Generator', 0);
INSERT INTO TableIDGen4Table(GEN_NAME, GEN_VAL) values ('TableType4Generator', 0);
INSERT INTO XMLTableIDGenTable(GEN_NAME, GEN_VAL) values ('XMLTableType3Generator', 0);
INSERT INTO XMLTableIDGen4Table(GEN_NAME, GEN_VAL) values ('XMLTableType4Generator', 0);

CREATE INDEX I_SC_TBL1_ID ON SEC_TABLE1 (id);
CREATE INDEX I_SC_TMSC_ID ON SEC_TABLE2AMSC (id);
CREATE INDEX I_SC_TLMB_ID ON SEC_TABLEEMB (id);
CREATE INDEX I_XSC_BL1_ID ON XSEC_TABLE1 (id);
CREATE INDEX I_XSC_MSC_ID ON XSEC_TABLE2AMSC (id);
CREATE INDEX I_XSC_LMB_ID ON XSEC_TABLEEMB (id);

create schema jpaschema;

CREATE TABLE jpaschema.ACfgFldEn (id INT NOT NULL, floatValColumnPrecision NUMERIC, floatValColumnScale NUMERIC, intValColName INT, notNullable IMAGE NOT NULL, stringValColumnLength VARCHAR(12), stringValEager VARCHAR(255), stringValLazy VARCHAR(255), stringValOptional VARCHAR(255), uniqueConstraintString VARCHAR(255) NOT NULL, uniqueString VARCHAR(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT U_CFGFLDN_UNIQUESTRING UNIQUE (uniqueString), CONSTRAINT U_CFGFLDN_UNIQUECONSTRAINTSTRING UNIQUE (uniqueConstraintString));
CREATE TABLE jpaschema.AltColumnTable (ATTRCONFIGFIELDENTITY_ID INT, id INT, intValCol INT);
CREATE TABLE jpaschema.XACfgFldE (id INT NOT NULL, floatValColumnPrecision NUMERIC, floatValColumnScale NUMERIC, intValColName INT, notNullable IMAGE NOT NULL, stringValColumnLength VARCHAR(12), stringValEager VARCHAR(255), stringValLazy VARCHAR(255), stringValOptional VARCHAR(255), uniqueConstraintString VARCHAR(255) NOT NULL, uniqueString VARCHAR(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT U_XCFGFLD_UNIQUESTRING UNIQUE (uniqueString), CONSTRAINT U_XCFGFLD_UNIQUECONSTRAINTSTRING UNIQUE (uniqueConstraintString));
CREATE TABLE jpaschema.XAltColumnTable (XMLATTRCONFIGFIELDENTITY_ID INT, id INT, XMLIntValCol INT);

CREATE INDEX jpaschema.I_LTCLTBL_ATTRCONFIGFIELDENTITY_ID ON jpaschema.AltColumnTable (ATTRCONFIGFIELDENTITY_ID);
CREATE INDEX jpaschema.I_XLTCTBL_XMLATTRCONFIGFIELDENTITY_ID ON jpaschema.XAltColumnTable (XMLATTRCONFIGFIELDENTITY_ID);