CREATE DATABASE `expensemgr` /*!40100 DEFAULT CHARACTER SET utf8 */;

CREATE TABLE `tblexpense` (
  `eid` bigint(20) NOT NULL AUTO_INCREMENT,
  `Userid` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `amount` decimal(14,4) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `edate` datetime DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `UpdatedDate` datetime DEFAULT NULL,
  `isActive` int(11) DEFAULT NULL,
  `addedBy` int(11) DEFAULT NULL,
  `paymentBy` int(11) DEFAULT NULL,
  `remark` longtext,
  `Filepath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_exp_get`(v_Userid bigint(20))
BEGIN

select count(1) into @count from tblexpense where Userid=v_Userid;
select *,@count as Count from tblexpense where Userid=v_Userid;

END$$
DELIMITER ;

