CREATE TABLE OPENJPA_SEQUENCE_TABLE (ID SMALLINT NOT NULL, SEQUENCE_VALUE BIGINT, PRIMARY KEY (ID));
CREATE TABLE tempo_acl (id BIGINT NOT NULL, action VARCHAR(254), DTYPE VARCHAR(254), PRIMARY KEY (id));
CREATE TABLE tempo_acl_map (TASK_ID BIGINT, ELEMENT_ID BIGINT);
CREATE TABLE tempo_attachment (id BIGINT NOT NULL, payload_url VARCHAR(254), METADATA_ID BIGINT, PRIMARY KEY (id));
CREATE TABLE tempo_attachment_map (PATASK_ID BIGINT, ELEMENT_ID BIGINT);
CREATE TABLE tempo_attachment_meta (id BIGINT NOT NULL, creation_date TIMESTAMP, description VARCHAR(254), file_name VARCHAR(254), mime_type VARCHAR(254), title VARCHAR(254), widget VARCHAR(254), PRIMARY KEY (id));
CREATE TABLE tempo_notification (id BIGINT NOT NULL, failure_code VARCHAR(254), failure_reason VARCHAR(254), input_xml CLOB(1M), priority INTEGER, state SMALLINT, PRIMARY KEY (id));
CREATE TABLE tempo_pa (id BIGINT NOT NULL, complete_soap_action VARCHAR(254), deadline TIMESTAMP, failure_code VARCHAR(254), failure_reason VARCHAR(254), input_xml CLOB(1M), is_chained_before SMALLINT, output_xml CLOB(1M), previous_task_id VARCHAR(254), priority INTEGER, process_id VARCHAR(254), state SMALLINT, PRIMARY KEY (id));
CREATE TABLE tempo_pipa (id BIGINT NOT NULL, init_message VARCHAR(254), init_soap VARCHAR(254), process_endpoint VARCHAR(254), PRIMARY KEY (id));
CREATE TABLE tempo_role (ACL_ID BIGINT, element VARCHAR(254), TASK_ID BIGINT);
CREATE TABLE tempo_task (id BIGINT NOT NULL, creation_date TIMESTAMP, description VARCHAR(254), form_url VARCHAR(254), taskid VARCHAR(254), internal_id INTEGER, PRIMARY KEY (id));
CREATE TABLE tempo_user (ACL_ID BIGINT, element VARCHAR(254), TASK_ID BIGINT);
CREATE UNIQUE INDEX OPENJPA_SEQUENCE_TABLE_IDX ON OPENJPA_SEQUENCE_TABLE (ID);
CREATE INDEX I_TMPO_CL_DTYPE ON tempo_acl (DTYPE);
CREATE INDEX I_TMP__MP_ELEMENT ON tempo_acl_map (ELEMENT_ID);
CREATE INDEX I_TMP__MP_TASK_ID ON tempo_acl_map (TASK_ID);
CREATE INDEX I_TMP_MNT_METADATA ON tempo_attachment (METADATA_ID);
CREATE INDEX I_TMP__MP_ELEMENT1 ON tempo_attachment_map (ELEMENT_ID);
CREATE INDEX I_TMP__MP_PATASK_I ON tempo_attachment_map (PATASK_ID);
CREATE INDEX I_TMP_ROL_ACL_ID ON tempo_role (ACL_ID);
CREATE INDEX I_TMP_ROL_TASK_ID ON tempo_role (TASK_ID);
CREATE INDEX I_TMP_USR_ACL_ID ON tempo_user (ACL_ID);
CREATE INDEX I_TMP_USR_TASK_ID ON tempo_user (TASK_ID);
