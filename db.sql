CREATE TABLE `depth` (
  `time_ymd` char(8) NOT NULL,
  `time_hms` char(6) NOT NULL,
  `file_order` int NOT NULL,
  `ask_bid` char(3) NOT NULL,
  `ask_bid_order` smallint NOT NULL,
  `link` double NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

###################################################################
use  exchange
select count(*) from depth where time_ymd = '20200512';
Create Table depth_20200512 (select * from depth where time_ymd = '20200512');


SELECT time_ymd, ask_bid, link, 
(SUM(amount) / (SELECT count(distinct file_order) FROM 		depth_20200513)) as amount, 
(SELECT count(distinct file_order) FROM			depth_20200513) as count 
from														depth_20200513 group by time_ymd, ask_bid, link 
order by time_ymd, ask_bid, link;



###################################################################

select time_ymd, count(distinct time_hms) from depth group by time_ymd

###################################################################

USE  exchange;
SELECT COUNT(*) FROM depth;
SELECT distinct time_ymd, time_hms, file_order, ask_bid from depth order by time_ymd, time_hms, file_order;
SELECT * FROM depth where file_order;

SELECT count(distinct file_order) FROM depth order by file_order desc;


use  exchange;

select distinct time_ymd, ask_bid, 
sum(amount) / (SELECT count(distinct file_order) FROM depth), 
(SELECT count(distinct file_order) FROM depth) as ccount  
from depth group by time_ymd, ask_bid;


select max(file_order) from depth;
delete from depth where file_order = 309;




