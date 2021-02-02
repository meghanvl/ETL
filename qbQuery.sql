
--Joining all my tables to get all of the QBs and stats in the same place
CREATE TABLE qb_stats AS
SELECT sb.season, sb.super_bowl,sb.quarterback,sb.team,sb.win_vs_loss,pr.passer_rating,cp.comp_percent,ypa.ypa,ip.int_percent,yd.yds,td.td
FROM sb_qbs AS sb
INNER JOIN pass_td AS td ON sb.quarterback = td.player
INNER JOIN int_percent AS ip ON sb.quarterback = ip.player
INNER JOIN comp_percent AS cp ON sb.quarterback = cp.player
INNER JOIN pass_yards AS yd ON sb.quarterback = yd.player
INNER JOIN yards_per_attempt AS ypa ON sb.quarterback = ypa.player
INNER JOIN passer_rating AS pr ON sb.quarterback = pr.player
ORDER BY sb.season 
;

--Inserting in the stats of some QBs who didnt have enough pass attempts to qualify to the leaderboards... and Brett Favre for some reason
INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1969,'IV','Joe Kapp','Minnesota Vikings','Loss',55.1,'48.9%',6.4,'7.0%',5911,40);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1970,'V','Johnny Unitas','Baltimore Colts','Win',78.2,'54.6%',7.8,'4.9%',40239,290);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1976,'XI','Ken Stabler','Oakland Raiders','Win',75.3,'59.8%',7.4,'5.9%',27938,194);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1982,'XVII','David Woodley','Miami Dolphins','Loss',65.7,'52.8%',6.6,'4.8%',8558,48);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1996,'XXXI','Brett Favre','Green Bay Packers','Win',86.0,'62.0%',7.1,'3.3%',71838,508);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (1997,'XXXII','Brett Favre','Green Bay Packers','Loss',86.0,'62.0%',7.1,'3.3%',71838,508);

INSERT INTO qb_stats(season,super_bowl,quarterback,team,win_vs_loss,passer_rating,comp_percent,ypa,int_percent,yds,td)
VALUES (2019,'LIV','Jimmy Garoppolo','San Francisco 49ers','Loss',98.9,'67.5%',8.2,'2.7%',8042,51);

--Reordering my table so the new values are sorted in by season
CREATE TABLE sb_qb_stats AS
SELECT * FROM qb_stats
ORDER BY season;

SELECT * FROM sb_qb_stats;