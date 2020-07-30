/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : demo

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-03-16 16:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for paperinfo
-- ----------------------------
DROP TABLE IF EXISTS `paperinfo`;
CREATE TABLE `paperinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paperName` varchar(100) DEFAULT NULL,
  `paperTimeOut` int(11) DEFAULT NULL,
  `paperScore` tinyint(4) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paperinfo
-- ----------------------------
INSERT INTO `paperinfo` VALUES ('1', 'PHP基础语法考试题（一）', '1800', '90', '2018-03-16 15:09:50');
INSERT INTO `paperinfo` VALUES ('2', 'PHP基础语法考试题（一）', '1800', '100', '2018-03-16 15:17:29');

-- ----------------------------
-- Table structure for qtypeinfo
-- ----------------------------
DROP TABLE IF EXISTS `qtypeinfo`;
CREATE TABLE `qtypeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paperID` int(11) DEFAULT NULL,
  `qTypeName` varchar(50) DEFAULT NULL,
  `qTypeScore` tinyint(4) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qtypeinfo
-- ----------------------------
INSERT INTO `qtypeinfo` VALUES ('1', '1', '判断题', '20', '2018-03-16 15:10:11');
INSERT INTO `qtypeinfo` VALUES ('2', '1', '单选题', '20', '2018-03-16 15:10:18');
INSERT INTO `qtypeinfo` VALUES ('3', '1', '多选题', '30', '2018-03-16 15:17:58');
INSERT INTO `qtypeinfo` VALUES ('4', '1', '填空题', '20', '2018-03-16 15:18:01');
INSERT INTO `qtypeinfo` VALUES ('5', '2', '判断题', '20', '2018-03-16 15:18:01');
INSERT INTO `qtypeinfo` VALUES ('6', '2', '单选题', '30', '2018-03-16 15:18:02');
INSERT INTO `qtypeinfo` VALUES ('7', '2', '多选题', '30', '2018-03-16 15:18:02');
INSERT INTO `qtypeinfo` VALUES ('8', '2', '填空题', '20', '2018-03-16 15:18:03');

-- ----------------------------
-- Table structure for questioninfo
-- ----------------------------
DROP TABLE IF EXISTS `questioninfo`;
CREATE TABLE `questioninfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qTypeID` int(11) DEFAULT NULL,
  `qTitle` varchar(255) DEFAULT NULL,
  `qOption` varchar(255) DEFAULT NULL,
  `qAnswer` varchar(255) DEFAULT NULL,
  `addDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questioninfo
-- ----------------------------
INSERT INTO `questioninfo` VALUES ('1', '1', '使用PHP写好的程序，在Linux和Windows平台上都可以运行。', '对**错', '对', '2018-03-16 15:11:31');
INSERT INTO `questioninfo` VALUES ('2', '1', 'PHP可以支持MySQL数据库，但不支持其它的数据库。', '对**错', '错', '2018-03-16 15:24:47');
INSERT INTO `questioninfo` VALUES ('3', '1', 'PHP有很多流行的MVC框架，这些框架可以使PHP的开发更加快捷。PHP有很多流行的MVC框架，这些框架可以使PHP的开发更加快捷。', '对**错', '对', '2018-03-16 15:24:47');
INSERT INTO `questioninfo` VALUES ('4', '1', 'Zend Studio是PHP中常用的IDE（集成开发环境）。', '对**错', '对', '2018-03-16 15:24:47');
INSERT INTO `questioninfo` VALUES ('5', '1', '进行PHP程序开发时，可以借助软件和工具来提高效率。', '对**错', '对', '2018-03-16 15:26:12');
INSERT INTO `questioninfo` VALUES ('6', '5', '在\".php\"后缀的文件中，所有的PHP代码都只能写在\"<?php ?>\"标记内。', '对**错', '错', '2018-03-16 15:29:54');
INSERT INTO `questioninfo` VALUES ('7', '5', '标量类型包括布尔型、整型、字符串型和数组型。', '对**错', '错', '2018-03-16 15:29:55');
INSERT INTO `questioninfo` VALUES ('8', '5', 'var_dump是PHP中用于打印变量或表达式的类型与值等相关信息的函数。', '对**错', '对', '2018-03-16 15:29:55');
INSERT INTO `questioninfo` VALUES ('9', '5', '如果if语句的代码块中只包含一条语句，那么if语句的大括号可以省略。', '对**错', '对', '2018-03-16 15:29:55');
INSERT INTO `questioninfo` VALUES ('10', '5', '当浮点型数据自动转换为整型数据时，其值将向下取整。', '对**错', '对', '2018-03-16 15:29:55');
INSERT INTO `questioninfo` VALUES ('11', '2', '下列选项中，不是URL地址中所包含的信息是（ ）。', '主机名**端口号**网络协议**软件版本', 'D', '2018-03-16 15:32:12');
INSERT INTO `questioninfo` VALUES ('12', '2', 'PHP是一种（ ）的编程语言。', '解释型**编译型**两者都是**两者都不是', 'A', '2018-03-16 15:32:12');
INSERT INTO `questioninfo` VALUES ('13', '2', 'PHP支持多种风格的标记，以下不是PHP标记的是（ ）。', '<?php  ?>**<?     ?>**<!--    -->**<%    %>', 'C', '2018-03-16 15:32:12');
INSERT INTO `questioninfo` VALUES ('14', '2', '下列选项中，函数返回的关键字是（ ）。', 'back**go**return**break', 'C', '2018-03-16 15:32:12');
INSERT INTO `questioninfo` VALUES ('15', '2', 'PHP中存在多种变量，其中在函数内部定义的变量称之为（ ）。', '可变变量**局部变量**全局变量**内部变量', 'B', '2018-03-16 15:32:13');
INSERT INTO `questioninfo` VALUES ('16', '6', '下列选项中，不区分大小写的标识符是（ ）。', '函数名**常量名**变量名**属性名', 'A', '2018-03-16 15:37:19');
INSERT INTO `questioninfo` VALUES ('17', '6', '下列选项中，不能作为常量名的是（ ）。', 'ROOT**__PI__**e**CLASS', 'D', '2018-03-16 15:37:19');
INSERT INTO `questioninfo` VALUES ('18', '6', '语句\"echo 2+3;\"的输出结果是（ ）。', '2+3**5**程序报错**以上答案都不正确', 'B', '2018-03-16 15:37:19');
INSERT INTO `questioninfo` VALUES ('19', '6', '下列选项中，不属于赋值运算符的是（ ）。', '=**+=**.=**++', 'D', '2018-03-16 15:37:19');
INSERT INTO `questioninfo` VALUES ('20', '6', '下面关于多维数组的说法正确的是（ ）。', '所谓多维数组，就是指一个数组的元素又是一个数组**所谓多维数组，就是指数组的所有元素必须都是数组**PHP中的数组维数不能超过三维**以上说法都不正确', 'A', '2018-03-16 15:37:20');
INSERT INTO `questioninfo` VALUES ('21', '3', '下列选项中，关于数据类型的说法描述正确的是（ ）。', '浮点数指的是数学中的小数，不能保存整数**在双引号内的变量会被解析，而单引号内的变量会被原样输出**布尔类型只有true和false两个值，且区分大小写**对于整数59可以使用十六进制数0x3b进行表示', 'B**D', '2018-03-16 16:00:24');
INSERT INTO `questioninfo` VALUES ('22', '3', '下列选项中，可以作为PHP的输出语句的是（ ）。', 'echo**var_dump**print_r**以上答案都不正确', 'A**S**C', '2018-03-16 16:00:24');
INSERT INTO `questioninfo` VALUES ('23', '3', '下面关于if语句的说法正确的是（ ）。', 'if语句也成为单分支语句**if语句的判断条件是布尔类型数据**if语句的判断条件是一个字符串类型数据**以上答案都不正确', 'A**B', '2018-03-16 16:00:24');
INSERT INTO `questioninfo` VALUES ('24', '3', '下列选项中，可以用来操作数组的运算符是（ ）。', '联合 +**自增 ++**相等 ==**全等 ===', 'A**C**D', '2018-03-16 16:00:24');
INSERT INTO `questioninfo` VALUES ('25', '3', '若在当前运行的脚本中需要调用其他文件的函数，可以使用以下哪个语句（ ）。', 'import**namespace**include**require', 'C**D', '2018-03-16 16:00:25');
INSERT INTO `questioninfo` VALUES ('26', '7', '下列选项中，哪些可以用于输出数组中所有的元素（ ）。', 'print_r()**print()**echo()**var_dump()', 'A**D', '2018-03-16 16:06:19');
INSERT INTO `questioninfo` VALUES ('27', '7', '下列选项中，可以作为PHP开始标记的是（ ）。', '<?php**<%**<?**<<<eof', 'A**B**C', '2018-03-16 16:06:20');
INSERT INTO `questioninfo` VALUES ('28', '7', '下列选项中，关于文件包含语句写法正确的是（ ）。', 'include \"./demo/test.php\"**include ./demo/test.php**include(\"./demo/test.php\")**include(./demo/test.php)', 'A**C', '2018-03-16 16:06:20');
INSERT INTO `questioninfo` VALUES ('29', '7', '下列选项中，其值可以自动转换为布尔类型值false的是（ ）。', '整型值0**空字符串**array( array() )**浮点型值0.0', 'A**B**D', '2018-03-16 16:06:20');
INSERT INTO `questioninfo` VALUES ('30', '7', '若在当前运行的脚本中需要调用其他文件的函数，可以使用以下哪个语句（ ）。', 'import**namespace**include**require', 'C**D', '2018-03-16 16:06:20');
INSERT INTO `questioninfo` VALUES ('31', '4', 'Apache的httpd服务程序默认使用的是____端口。', null, '80', '2018-03-16 16:06:22');
INSERT INTO `questioninfo` VALUES ('32', '4', '在PHP中，____函数能将数组转化为字符串。', null, 'implode', '2018-03-16 16:06:22');
INSERT INTO `questioninfo` VALUES ('33', '8', '在PHP中，标识符允许包含字母、数字和____。', null, '下划线', '2018-03-16 16:06:23');
INSERT INTO `questioninfo` VALUES ('34', '8', 'substr()函数用于获取字符串中的子串，则substr(\"itcast\",1,3) 的返回值是____。', null, 'tca', '2018-03-16 16:06:23');
