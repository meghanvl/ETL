DROP TABLE IF EXISTS sb_qbs;
DROP TABLE IF EXISTS passer_rating;
DROP TABLE IF EXISTS pass_td;
DROP TABLE IF EXISTS int_percent;
DROP TABLE IF EXISTS yards_per_attempt;
DROP TABLE IF EXISTS pass_yards;
DROP TABLE IF EXISTS comp_percent;

CREATE TABLE "sb_qbs" (
	"season" integer,
	"super_bowl" varchar,
	"quarterback" varchar,
	"team" varchar,
	"win_vs_loss" varchar
	);
	
CREATE TABLE "passer_rating" (
	"rank" integer,
	"player" varchar,
	"passer_rating" DECIMAL(4,1),
	"years" varchar,
	"tm" varchar
	);

CREATE TABLE "pass_td" (
	"rank" integer,
	"player" varchar,
	"td" integer,
	"years" varchar,
	"tm" varchar
	);
	
CREATE TABLE "int_percent" (
	"rank" integer,
	"player" varchar,
	"int_percent" varchar,
	"years" varchar,
	"tm" varchar
	);
	
CREATE TABLE "yards_per_attempt" (
	"rank" integer,
	"player" varchar,
	"ypa" decimal(2,1),
	"years" varchar,
	"tm" varchar
	);

CREATE TABLE "pass_yards" (
	"rank" integer,
	"player" varchar,
	"yds" integer,
	"years" varchar,
	"tm" varchar
	);
	
CREATE TABLE "comp_percent" (
	"rank" integer,
	"player" varchar,
	"comp_percent" varchar,
	"years" varchar,
	"tm" varchar
	);
	
SELECT * FROM sb_qbs;