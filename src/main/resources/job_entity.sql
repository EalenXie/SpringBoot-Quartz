SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS `job_entity`;
CREATE TABLE `job_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `group` varchar(255) DEFAULT NULL,
  `cron` varchar(255) DEFAULT NULL,
  `parameter` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `vm_param` varchar(255) DEFAULT NULL,
  `jar_path` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
INSERT INTO `job_entity` VALUES ('1',  'first', 'helloworld', '0/2 * * * * ? ', '1', '第一个', '', null, 'OPEN');
INSERT INTO `job_entity` VALUES ('2',  'second', 'helloworld', '0/5 * * * * ? ', '2', '第二个', null, null, 'OPEN');
INSERT INTO `job_entity` VALUES ('4',  'third', 'helloworld', '0/15 * * * * ? ', '3', '第三个', null, null, 'OPEN');
INSERT INTO `job_entity` VALUES ('5',  'four', 'helloworld', '0 0/1 * * * ? *', '4', '第四个', null, null, 'CLOSE');
INSERT INTO `job_entity` VALUES ('6',  'OLAY Job', 'Nomal', '0 0/2 * * * ?', '', '第五个', null, 'C:\\EalenXie\\Download\\JDE-Order-1.0-SNAPSHOT.jar', 'CLOSE');
