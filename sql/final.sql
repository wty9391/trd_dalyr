
-- ----------------------------
-- 2 basic Table structure of original data
-- ----------------------------
DROP TABLE IF EXISTS `trd_dalyr_withbonus`;
CREATE TABLE `trd_dalyr_withbonus` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` int DEFAULT NULL,
  `value` double(15,6) DEFAULT NULL,
  `roi` double(15,6) DEFAULT NULL,
  `profit` double(15,6) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `category_roi` double DEFAULT NULL,
  `category_roi_exclude_self` double DEFAULT NULL,
  `market_roi` double DEFAULT NULL,
  `market_roi_exclude_self` double DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿Stkcd_year_index` (`﻿Stkcd`,`year`) USING HASH,
  KEY `date_category_index` (`date`,`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- 4806335

DROP TABLE IF EXISTS `trd_dalyr_withoutbonus`;
CREATE TABLE `trd_dalyr_withoutbonus` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `year` int DEFAULT NULL,
  `value` double(15,6) DEFAULT NULL,
  `roi` double(15,6) DEFAULT NULL,
  `profit` double(15,6) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `category_roi` double DEFAULT NULL,
  `category_roi_exclude_self` double DEFAULT NULL,
  `market_roi` double DEFAULT NULL,
  `market_roi_exclude_self` double DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿Stkcd_year_index` (`﻿Stkcd`,`year`) USING HASH,
  KEY `date_category_index` (`date`,`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- 4560422

-- ----------------------------
-- 4 basic Table structure of category 1
-- ----------------------------
DROP TABLE IF EXISTS `category_1_adjusted_nost`;
CREATE TABLE `category_1_adjusted_nost` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_1_adjusted_st`;
CREATE TABLE `category_1_adjusted_st` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `category_1_noadjusted_nost`;
CREATE TABLE `category_1_noadjusted_nost` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_1_noadjusted_st`;
CREATE TABLE `category_1_noadjusted_st` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- 4 basic Table structure of category 2
-- ----------------------------
DROP TABLE IF EXISTS `category_2_adjusted_nost`;
CREATE TABLE `category_2_adjusted_nost` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_2_adjusted_st`;
CREATE TABLE `category_2_adjusted_st` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `category_2_noadjusted_nost`;
CREATE TABLE `category_2_noadjusted_nost` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_2_noadjusted_st`;
CREATE TABLE `category_2_noadjusted_st` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- 4 basic Table structure of category all
-- ----------------------------
DROP TABLE IF EXISTS `category_all1_adjusted`;
CREATE TABLE `category_all1_adjusted` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_all1_noadjusted`;
CREATE TABLE `category_all1_noadjusted` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `category_all2_adjusted`;
CREATE TABLE `category_all2_adjusted` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `﻿year_index` (`year`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `category_all2_noadjusted`;
CREATE TABLE `category_all2_noadjusted` (
  `﻿Stkcd` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  KEY `﻿Stkcd_index` (`﻿Stkcd`) USING HASH,
  KEY `category_index` (`category`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



-- ----------------------------
-- update year of trd_dalyr_withbonus and trd_dalyr_withoutbonus
-- ----------------------------
UPDATE trd_dalyr_withbonus SET `year` = YEAR(`date`);
UPDATE trd_dalyr_withoutbonus SET `year` = YEAR(`date`);

-- ----------------------------
-- update profit of trd_dalyr_withbonus and trd_dalyr_withoutbonus
-- ----------------------------
UPDATE trd_dalyr_withbonus SET `Profit` = `value`*`roi`;
UPDATE trd_dalyr_withoutbonus SET `Profit` = `value`*`roi`;


-- ----------------------------
-- trd_dalyr_withbonus
-- ----------------------------
-- create 

-- category_1_adjusted_st 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_adjusted_st;
CREATE TABLE trd_dalyr_withbonus_category_1_adjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_1_adjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_1_adjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_1_adjusted_st;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_1_adjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_1_adjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_1_adjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_1_adjusted_st;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_1_adjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_1_adjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_1_adjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_1_adjusted_st a
JOIN category_sum_trd_dalyr_withbonus_category_1_adjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_1_adjusted_st a
JOIN market_sum_trd_dalyr_withbonus_category_1_adjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_adjusted_st_y;
CREATE TABLE trd_dalyr_withbonus_category_1_adjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_1_adjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_1_adjusted_nost 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_adjusted_nost;
CREATE TABLE trd_dalyr_withbonus_category_1_adjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_1_adjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_1_adjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_1_adjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_1_adjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_1_adjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_1_adjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_1_adjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_1_adjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_1_adjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_1_adjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_1_adjusted_nost a
JOIN category_sum_trd_dalyr_withbonus_category_1_adjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_1_adjusted_nost a
JOIN market_sum_trd_dalyr_withbonus_category_1_adjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_adjusted_nost_y;
CREATE TABLE trd_dalyr_withbonus_category_1_adjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_1_adjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_2_adjusted_st 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_adjusted_st;
CREATE TABLE trd_dalyr_withbonus_category_2_adjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_2_adjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_2_adjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_2_adjusted_st;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_2_adjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_2_adjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_2_adjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_2_adjusted_st;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_2_adjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_2_adjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_2_adjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_2_adjusted_st a
JOIN category_sum_trd_dalyr_withbonus_category_2_adjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_2_adjusted_st a
JOIN market_sum_trd_dalyr_withbonus_category_2_adjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_adjusted_st_y;
CREATE TABLE trd_dalyr_withbonus_category_2_adjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_2_adjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_2_adjusted_nost 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_adjusted_nost;
CREATE TABLE trd_dalyr_withbonus_category_2_adjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_2_adjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_2_adjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_2_adjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_2_adjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_2_adjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_2_adjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_2_adjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_2_adjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_2_adjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_2_adjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_2_adjusted_nost a
JOIN category_sum_trd_dalyr_withbonus_category_2_adjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_2_adjusted_nost a
JOIN market_sum_trd_dalyr_withbonus_category_2_adjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_adjusted_nost_y;
CREATE TABLE trd_dalyr_withbonus_category_2_adjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_2_adjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all1_adjusted 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_all1_adjusted;
CREATE TABLE trd_dalyr_withbonus_category_all1_adjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_all1_adjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_all1_adjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_all1_adjusted;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_all1_adjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_all1_adjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_all1_adjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_all1_adjusted;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_all1_adjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_all1_adjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_all1_adjusted(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_all1_adjusted a
JOIN category_sum_trd_dalyr_withbonus_category_all1_adjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_all1_adjusted a
JOIN market_sum_trd_dalyr_withbonus_category_all1_adjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_all1_adjusted_y;
CREATE TABLE trd_dalyr_withbonus_category_all1_adjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_all1_adjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all2_adjusted 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_all2_adjusted;
CREATE TABLE trd_dalyr_withbonus_category_all2_adjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_all2_adjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withbonus_category_all2_adjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_all2_adjusted;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_all2_adjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_all2_adjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_all2_adjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_all2_adjusted;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_all2_adjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_all2_adjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_all2_adjusted(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_all2_adjusted a
JOIN category_sum_trd_dalyr_withbonus_category_all2_adjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_all2_adjusted a
JOIN market_sum_trd_dalyr_withbonus_category_all2_adjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_all2_adjusted_y;
CREATE TABLE trd_dalyr_withbonus_category_all2_adjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_all2_adjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_1_noadjusted_st 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_noadjusted_st;
CREATE TABLE trd_dalyr_withbonus_category_1_noadjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_1_noadjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_1_noadjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_1_noadjusted_st;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_1_noadjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_1_noadjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_1_noadjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_1_noadjusted_st;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_1_noadjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_1_noadjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_1_noadjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_1_noadjusted_st a
JOIN category_sum_trd_dalyr_withbonus_category_1_noadjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_1_noadjusted_st a
JOIN market_sum_trd_dalyr_withbonus_category_1_noadjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_noadjusted_st_y;
CREATE TABLE trd_dalyr_withbonus_category_1_noadjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_1_noadjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_1_noadjusted_nost 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_noadjusted_nost;
CREATE TABLE trd_dalyr_withbonus_category_1_noadjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_1_noadjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_1_noadjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_1_noadjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_1_noadjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_1_noadjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_1_noadjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_1_noadjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_1_noadjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_1_noadjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_1_noadjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_1_noadjusted_nost a
JOIN category_sum_trd_dalyr_withbonus_category_1_noadjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_1_noadjusted_nost a
JOIN market_sum_trd_dalyr_withbonus_category_1_noadjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_1_noadjusted_nost_y;
CREATE TABLE trd_dalyr_withbonus_category_1_noadjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_1_noadjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_2_noadjusted_st 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_noadjusted_st;
CREATE TABLE trd_dalyr_withbonus_category_2_noadjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_2_noadjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_2_noadjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_2_noadjusted_st;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_2_noadjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_2_noadjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_2_noadjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_2_noadjusted_st;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_2_noadjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_2_noadjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_2_noadjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_2_noadjusted_st a
JOIN category_sum_trd_dalyr_withbonus_category_2_noadjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_2_noadjusted_st a
JOIN market_sum_trd_dalyr_withbonus_category_2_noadjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_noadjusted_st_y;
CREATE TABLE trd_dalyr_withbonus_category_2_noadjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_2_noadjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_2_noadjusted_nost 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_noadjusted_nost;
CREATE TABLE trd_dalyr_withbonus_category_2_noadjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_2_noadjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_2_noadjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_2_noadjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_2_noadjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_2_noadjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_2_noadjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_2_noadjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_2_noadjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_2_noadjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_2_noadjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_2_noadjusted_nost a
JOIN category_sum_trd_dalyr_withbonus_category_2_noadjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_2_noadjusted_nost a
JOIN market_sum_trd_dalyr_withbonus_category_2_noadjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_2_noadjusted_nost_y;
CREATE TABLE trd_dalyr_withbonus_category_2_noadjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_2_noadjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all1_noadjusted 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_all1_noadjusted;
CREATE TABLE trd_dalyr_withbonus_category_all1_noadjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_all1_noadjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_all1_noadjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_all1_noadjusted;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_all1_noadjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_all1_noadjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_all1_noadjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_all1_noadjusted;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_all1_noadjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_all1_noadjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_all1_noadjusted(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_all1_noadjusted a
JOIN category_sum_trd_dalyr_withbonus_category_all1_noadjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_all1_noadjusted a
JOIN market_sum_trd_dalyr_withbonus_category_all1_noadjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_all1_noadjusted_y;
CREATE TABLE trd_dalyr_withbonus_category_all1_noadjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_all1_noadjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all2_noadjusted 
-- of
-- trd_dalyr_withbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withbonus_category_all2_noadjusted;
CREATE TABLE trd_dalyr_withbonus_category_all2_noadjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withbonus a
INNER JOIN category_all2_noadjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withbonus_category_all2_noadjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withbonus_category_all2_noadjusted;
CREATE TABLE category_sum_trd_dalyr_withbonus_category_all2_noadjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withbonus_category_all2_noadjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withbonus_category_all2_noadjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withbonus_category_all2_noadjusted;
CREATE TABLE market_sum_trd_dalyr_withbonus_category_all2_noadjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withbonus_category_all2_noadjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withbonus_category_all2_noadjusted(`date`) using HASH;


UPDATE trd_dalyr_withbonus_category_all2_noadjusted a
JOIN category_sum_trd_dalyr_withbonus_category_all2_noadjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withbonus_category_all2_noadjusted a
JOIN market_sum_trd_dalyr_withbonus_category_all2_noadjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withbonus_category_all2_noadjusted_y;
CREATE TABLE trd_dalyr_withbonus_category_all2_noadjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withbonus_category_all2_noadjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- trd_dalyr_withoutbonus
-- ----------------------------
-- create 

-- category_1_adjusted_st 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_adjusted_st;
CREATE TABLE trd_dalyr_withoutbonus_category_1_adjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_1_adjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_1_adjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_1_adjusted_st;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_1_adjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_1_adjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_1_adjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_1_adjusted_st;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_1_adjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_1_adjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_1_adjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_1_adjusted_st a
JOIN category_sum_trd_dalyr_withoutbonus_category_1_adjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_1_adjusted_st a
JOIN market_sum_trd_dalyr_withoutbonus_category_1_adjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_adjusted_st_y;
CREATE TABLE trd_dalyr_withoutbonus_category_1_adjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_1_adjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_1_adjusted_nost 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_adjusted_nost;
CREATE TABLE trd_dalyr_withoutbonus_category_1_adjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_1_adjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_1_adjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_1_adjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_1_adjusted_nost a
JOIN category_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_1_adjusted_nost a
JOIN market_sum_trd_dalyr_withoutbonus_category_1_adjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_adjusted_nost_y;
CREATE TABLE trd_dalyr_withoutbonus_category_1_adjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_1_adjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_2_adjusted_st 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_adjusted_st;
CREATE TABLE trd_dalyr_withoutbonus_category_2_adjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_2_adjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_2_adjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_2_adjusted_st;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_2_adjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_2_adjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_2_adjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_2_adjusted_st;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_2_adjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_2_adjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_2_adjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_2_adjusted_st a
JOIN category_sum_trd_dalyr_withoutbonus_category_2_adjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_2_adjusted_st a
JOIN market_sum_trd_dalyr_withoutbonus_category_2_adjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_adjusted_st_y;
CREATE TABLE trd_dalyr_withoutbonus_category_2_adjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_2_adjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_2_adjusted_nost 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_adjusted_nost;
CREATE TABLE trd_dalyr_withoutbonus_category_2_adjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_2_adjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_2_adjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_2_adjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_2_adjusted_nost a
JOIN category_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_2_adjusted_nost a
JOIN market_sum_trd_dalyr_withoutbonus_category_2_adjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_adjusted_nost_y;
CREATE TABLE trd_dalyr_withoutbonus_category_2_adjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_2_adjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all1_adjusted 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all1_adjusted;
CREATE TABLE trd_dalyr_withoutbonus_category_all1_adjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_all1_adjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_all1_adjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_all1_adjusted;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_all1_adjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_all1_adjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_all1_adjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_all1_adjusted;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_all1_adjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_all1_adjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_all1_adjusted(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_all1_adjusted a
JOIN category_sum_trd_dalyr_withoutbonus_category_all1_adjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_all1_adjusted a
JOIN market_sum_trd_dalyr_withoutbonus_category_all1_adjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all1_adjusted_y;
CREATE TABLE trd_dalyr_withoutbonus_category_all1_adjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_all1_adjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all2_adjusted 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all2_adjusted;
CREATE TABLE trd_dalyr_withoutbonus_category_all2_adjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_all2_adjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd` and a.`year` = b.`year`;
create index date_index on trd_dalyr_withoutbonus_category_all2_adjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_all2_adjusted;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_all2_adjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_all2_adjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_all2_adjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_all2_adjusted;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_all2_adjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_all2_adjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_all2_adjusted(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_all2_adjusted a
JOIN category_sum_trd_dalyr_withoutbonus_category_all2_adjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_all2_adjusted a
JOIN market_sum_trd_dalyr_withoutbonus_category_all2_adjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all2_adjusted_y;
CREATE TABLE trd_dalyr_withoutbonus_category_all2_adjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_all2_adjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_1_noadjusted_st 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_noadjusted_st;
CREATE TABLE trd_dalyr_withoutbonus_category_1_noadjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_1_noadjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_1_noadjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_1_noadjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_1_noadjusted_st a
JOIN category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_1_noadjusted_st a
JOIN market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_noadjusted_st_y;
CREATE TABLE trd_dalyr_withoutbonus_category_1_noadjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_1_noadjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_1_noadjusted_nost 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_noadjusted_nost;
CREATE TABLE trd_dalyr_withoutbonus_category_1_noadjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_1_noadjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_1_noadjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_1_noadjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_1_noadjusted_nost a
JOIN category_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_1_noadjusted_nost a
JOIN market_sum_trd_dalyr_withoutbonus_category_1_noadjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_1_noadjusted_nost_y;
CREATE TABLE trd_dalyr_withoutbonus_category_1_noadjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_1_noadjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;


-- ----------------------------
-- create 

-- category_2_noadjusted_st 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_noadjusted_st;
CREATE TABLE trd_dalyr_withoutbonus_category_2_noadjusted_st AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_2_noadjusted_st b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_2_noadjusted_st(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_2_noadjusted_st GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_2_noadjusted_st a
JOIN category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_2_noadjusted_st a
JOIN market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_st b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_noadjusted_st_y;
CREATE TABLE trd_dalyr_withoutbonus_category_2_noadjusted_st_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_2_noadjusted_st where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_2_noadjusted_nost 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_noadjusted_nost;
CREATE TABLE trd_dalyr_withoutbonus_category_2_noadjusted_nost AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_2_noadjusted_nost b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_2_noadjusted_nost(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_2_noadjusted_nost GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_2_noadjusted_nost a
JOIN category_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_2_noadjusted_nost a
JOIN market_sum_trd_dalyr_withoutbonus_category_2_noadjusted_nost b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_2_noadjusted_nost_y;
CREATE TABLE trd_dalyr_withoutbonus_category_2_noadjusted_nost_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_2_noadjusted_nost where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all1_noadjusted 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all1_noadjusted;
CREATE TABLE trd_dalyr_withoutbonus_category_all1_noadjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_all1_noadjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_all1_noadjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_all1_noadjusted;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_all1_noadjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_all1_noadjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_all1_noadjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_all1_noadjusted;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_all1_noadjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_all1_noadjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_all1_noadjusted(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_all1_noadjusted a
JOIN category_sum_trd_dalyr_withoutbonus_category_all1_noadjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_all1_noadjusted a
JOIN market_sum_trd_dalyr_withoutbonus_category_all1_noadjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all1_noadjusted_y;
CREATE TABLE trd_dalyr_withoutbonus_category_all1_noadjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_all1_noadjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

-- ----------------------------
-- create 

-- category_all2_noadjusted 
-- of
-- trd_dalyr_withoutbonus 
-- ----------------------------
DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all2_noadjusted;
CREATE TABLE trd_dalyr_withoutbonus_category_all2_noadjusted AS SELECT
  a.﻿Stkcd, a.`date`, a.`year`, a.value, a.roi, a.profit, b.category as category, a.category_roi, a.category_roi_exclude_self, a.market_roi, a.market_roi_exclude_self
FROM
  trd_dalyr_withoutbonus a
INNER JOIN category_all2_noadjusted b 
ON a.`﻿Stkcd` = b.`﻿Stkcd`;
create index date_index on trd_dalyr_withoutbonus_category_all2_noadjusted(`date`) using HASH;


DROP TABLE if EXISTS category_sum_trd_dalyr_withoutbonus_category_all2_noadjusted;
CREATE TABLE category_sum_trd_dalyr_withoutbonus_category_all2_noadjusted AS SELECT
  category, `date`, SUM(profit) as sum_profit, SUM(value) as sum_value from trd_dalyr_withoutbonus_category_all2_noadjusted GROUP BY category,`date`;
create index date_category_index on category_sum_trd_dalyr_withoutbonus_category_all2_noadjusted(`date`,category) using HASH;


DROP TABLE if EXISTS market_sum_trd_dalyr_withoutbonus_category_all2_noadjusted;
CREATE TABLE market_sum_trd_dalyr_withoutbonus_category_all2_noadjusted AS SELECT
  `date`,SUM(sum_profit) as market_profit,SUM(sum_value) as market_value from category_sum_trd_dalyr_withoutbonus_category_all2_noadjusted GROUP BY `date`;
create index date_index on market_sum_trd_dalyr_withoutbonus_category_all2_noadjusted(`date`) using HASH;


UPDATE trd_dalyr_withoutbonus_category_all2_noadjusted a
JOIN category_sum_trd_dalyr_withoutbonus_category_all2_noadjusted b ON a.`date` = b.`date` and a.category = b.category
SET a.category_roi = b.sum_profit/b.sum_value, a.category_roi_exclude_self = (b.sum_profit-a.profit)/(b.sum_value-a.value);


UPDATE trd_dalyr_withoutbonus_category_all2_noadjusted a
JOIN market_sum_trd_dalyr_withoutbonus_category_all2_noadjusted b ON a.`date` = b.`date`
SET a.market_roi = b.market_profit/b.market_value, a.market_roi_exclude_self = (b.market_profit-a.profit)/(b.market_value-a.value);


DROP TABLE if EXISTS trd_dalyr_withoutbonus_category_all2_noadjusted_y;
CREATE TABLE trd_dalyr_withoutbonus_category_all2_noadjusted_y AS SELECT
  ﻿Stkcd,`year`,COUNT(*) as n, SUM(roi) as `sum` from trd_dalyr_withoutbonus_category_all2_noadjusted where category_roi_exclude_self is not null GROUP BY ﻿Stkcd,`year`;

