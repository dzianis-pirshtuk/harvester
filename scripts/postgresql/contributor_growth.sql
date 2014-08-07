/*
 PostgreSQL
 Date: 08/06/2014 22:51:41 PM
*/

-- ----------------------------
--  Table structure for contributor_growth
-- ----------------------------
DROP TABLE IF EXISTS "contributor_growth";
CREATE TABLE "contributor_growth" (
	"time" timestamp(6) NULL,
	"harvest_id" varchar(255) NOT NULL COLLATE "default",
	"territory" varchar(255) COLLATE "default",
	"network" varchar(75) COLLATE "default",
	"contributor_id" varchar(255) COLLATE "default",
	"contributor_longitude" float8,
	"contributor_latitude" float8,
	"contributor_geohash" varchar(100) COLLATE "default",
	"likes" int8,
	"talking_about_count" int8,
	"checkins" int8,
	"views" int8,
	"subscribers" int8,
	"statuses_count" int8,
	"listed_count" int8,
	"followers" int8,
	"following" int8,
	"were_here_count" int8
)
WITH (OIDS=FALSE);

-- ----------------------------
--  Primary key structure for table contributor_growth
-- ----------------------------
ALTER TABLE "contributor_growth" ADD PRIMARY KEY ("harvest_id") NOT DEFERRABLE INITIALLY IMMEDIATE;

-- ----------------------------
--  Indexes structure for table contributor_growth
-- ----------------------------
CREATE INDEX  "cg_contributor_id_key" ON "contributor_growth" USING btree(contributor_id COLLATE "default" DESC NULLS LAST);
CREATE INDEX  "cg_time_key" ON "contributor_growth" USING btree("time" DESC NULLS LAST);

