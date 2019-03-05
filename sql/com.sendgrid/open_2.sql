-- AUTO-GENERATED BY igluctl DO NOT EDIT
-- Generator: igluctl 0.4.1
-- Generated: 2019-02-28 16:16 UTC

CREATE SCHEMA IF NOT EXISTS atomic;

CREATE TABLE IF NOT EXISTS atomic.com_sendgrid_open_2 (
    "schema_vendor"                      VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_name"                        VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_format"                      VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "schema_version"                     VARCHAR(128)  ENCODE ZSTD NOT NULL,
    "root_id"                            CHAR(36)      ENCODE RAW  NOT NULL,
    "root_tstamp"                        TIMESTAMP     ENCODE ZSTD NOT NULL,
    "ref_root"                           VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "ref_tree"                           VARCHAR(1500) ENCODE ZSTD NOT NULL,
    "ref_parent"                         VARCHAR(255)  ENCODE ZSTD NOT NULL,
    "asm_group_id"                       SMALLINT      ENCODE ZSTD,
    "category"                           VARCHAR(5000) ENCODE ZSTD,
    "email"                              VARCHAR(4096) ENCODE ZSTD,
    "ip"                                 VARCHAR(15)   ENCODE ZSTD,
    "marketing_campaign_id"              BIGINT        ENCODE ZSTD,
    "marketing_campaign_name"            VARCHAR(4096) ENCODE ZSTD,
    "marketing_campaign_split_id"        BIGINT        ENCODE ZSTD,
    "marketing_campaign_version"         VARCHAR(4096) ENCODE ZSTD,
    "newsletter.newsletter_id"           VARCHAR(4096) ENCODE ZSTD,
    "newsletter.newsletter_send_id"      VARCHAR(4096) ENCODE ZSTD,
    "newsletter.newsletter_user_list_id" VARCHAR(4096) ENCODE ZSTD,
    "sg_event_id"                        VARCHAR(48)   ENCODE ZSTD,
    "sg_message_id"                      VARCHAR(4096) ENCODE ZSTD,
    "smtp_id"                            VARCHAR(4096) ENCODE ZSTD,
    "timestamp"                          TIMESTAMP     ENCODE ZSTD,
    "useragent"                          VARCHAR(4096) ENCODE ZSTD,
    FOREIGN KEY (root_id) REFERENCES atomic.events(event_id)
)
DISTSTYLE KEY
DISTKEY (root_id)
SORTKEY (root_tstamp);

COMMENT ON TABLE atomic.com_sendgrid_open_2 IS 'iglu:com.sendgrid/open/jsonschema/2-0-0';
