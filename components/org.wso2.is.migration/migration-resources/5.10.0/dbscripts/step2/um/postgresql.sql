/* User should have the Superuser permission */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

ALTER TABLE UM_USER
    ADD COLUMN UM_USER_ID CHAR(36) DEFAULT uuid_generate_v4(),
    ADD CONSTRAINT UM_USER_UUID_CONSTRAINT UNIQUE(UM_USER_ID);
