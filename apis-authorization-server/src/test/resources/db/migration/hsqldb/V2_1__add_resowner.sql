CREATE MEMORY TABLE PUBLIC.RESOURCEOWNER(ID BIGINT NOT NULL PRIMARY KEY,CREATIONDATE TIMESTAMP,MODIFICATIONDATE TIMESTAMP,USERNAME VARCHAR(255),PASSWORD VARCHAR(255),CONSTRAINT U_ROWN_USERNAME UNIQUE(USERNAME));
CREATE INDEX I_RSCOWN_USERNAME ON PUBLIC.RESOURCEOWNER(USERNAME);