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


###################################################################

START TRANSACTION;                    
	SELECT * FROM my_table;                    
	DELETE FROM my_table WHERE gender = 'M';  
	SELECT * FROM my_table;    

ROLLBACK;                               
	SELECT * FROM my_table;                     
	START TRANSACTION;                       
	DELETE FROM my_table WHERE gender = 'M';    

COMMIT;                                    
	SELECT * FROM my_table;                     

###################################################################


SELECT 		# group by, having에서는 select 컬럼의 별칭 사용 가능, 같은 select 컬럼에서 앞 컬럼의 별칭 사용 불가 (sub 쿼리에 where에 사요 가능, but 일반적인 호출은 불가)
	DATE_FORMAT(A.reg_date, "%Y-%m") AS C_DATE_YM,
	DATE_FORMAT(A.reg_date + INTERVAL -1 MONTH, "%Y-%m") as P_DATE_YM, 
    
    SUM(A.user_base) AS C_SUM_USER_BASE, 
    (
        SELECT SUM(B.user_base) FROM test_ori AS B WHERE DATE_FORMAT(B.reg_date, "%Y-%m") = P_DATE_YM
	) AS P_SUM_USER_BASE,
    #	C_SUM_VALUE + Error Code: 1054. Unknown column
    (
		CONCAT
        (
			((SELECT SUM(B.user_base) FROM test_ori AS B WHERE DATE_FORMAT(B.reg_date, "%Y-%m") = P_DATE_YM)  / SUM(A.user_base) - 1) * 100, 
            "%"
		)
	) AS RATIO 
FROM test_ori AS A 
#WHERE DATE_FORMAT(A.reg_date, "%Y-%m") >= "2017-04" 
GROUP BY C_DATE_YM, P_DATE_YM HAVING C_SUM_USER_BASE > 1 ORDER BY C_DATE_YM
;







CREATE TABLE `depth` (
  `input_01` int NOT NULL,
  `input_02` int NOT NULL,
  `input_03` int NOT NULL,
  `input_04` int NOT NULL,
  `input_05` double NOT NULL,
  `input_06` double NOT NULL,
  `input_07` double NOT NULL,

  `need_time` int NOT NULL,  
  `result_ratio` double NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



SELECT * FROM depth ORDER BY result_ratio, amount DESC LIMIT 100;
SELECT AVG(result_ration) WHERE depth;
SELECT AVG(need_time) WHERE depth;

