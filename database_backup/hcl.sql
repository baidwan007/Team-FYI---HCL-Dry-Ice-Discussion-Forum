-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: hcl
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `answer`
--

DROP TABLE IF EXISTS `answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer` (
  `ans` varchar(1000) DEFAULT NULL,
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `upvote` int(11) DEFAULT NULL,
  `downvote` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `uid` (`uid`),
  KEY `qid` (`qid`),
  CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`qid`) REFERENCES `question` (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer`
--

LOCK TABLES `answer` WRITE;
/*!40000 ALTER TABLE `answer` DISABLE KEYS */;
INSERT INTO `answer` VALUES ('For an organization\'s information technology, infrastructure management (IM) is the management of essential operation components, such as policies, processes, equipment, data, human resources, and external contacts, for overall effectiveness.',5,1,5,4,0),('Among other purposes, infrastructure management seeks to:\r\n\r\nReduce duplication of effort\r\nEnsure adherence to standards\r\nEnhance the flow of information throughout an information system\r\nPromote adaptability necessary for a changeable environment\r\nEnsure interoperability among organizational and external entities\r\nMaintain effective\r\nchange management policies and practices',6,1,5,0,2),('The World Bank estimates that a 10 percent rise in infrastructure assets directly increases GDP by up to 1 percentage point.1 Insufficient or underdeveloped infrastructure presents one of the biggest obstacles for economic growth and social development worldwide. In Brazil, for example, development is constrained by narrow roads, a lack of railways in the new agricultural frontiers, and bottlenecked ports, all of which are unable to meet the transport needs of a newly wealthy consumer mass.\r\n\r\n',7,1,6,11,0),('Infrastructure projects are high on governments’ agendas, and the infrastructure-development and investment pipeline is huge. The current global project pipeline is estimated at $9 trillion, one-third of it in Asia. India is expected to spend some $550 billion on large-scale projects over the next five years, half of which will be in the energy and utility sectors (Exhibit 1). Developed economies also have significant infrastructure plans. The United Kingdom, for example, has identified an infrastructure pipeline of over 500 projects that is worth more than £250 billion.\r\n\r\n',8,1,6,0,0),('Interoperability describes the extent to which systems and devices can exchange data, and interpret that shared data. For two systems to be interoperable, they must be able to exchange data and subsequently present that data such that it can be understood by a user.\r\n\r\n',9,1,8,0,0),('Reduces product failure risk via customer validation.\r\nBeta Testing allows a company to test post-launch infrastructure.\r\nImproves product quality via customer feedback\r\nCost effective compared to similar data gathering methods\r\nCreates goodwill with customers and increases customer satisfaction',10,1,9,0,0),('Pre-Alpha:- Software is a prototype. UI is complete. But not all features are completed. At this stage software is not published.\r\n\r\n\r\nAlpha: Software is near its development and is internally tested for bugs/issues\r\n\r\n\r\nBeta: Software is stable and is released to limited user base. The goal is to get customer feedback on the product and make changes in software accordingly\r\n\r\n\r\nRelease Candidate (RC): Based on the feedback of Beta Test, you make changes to the software and want to test out the bug fixes. At this stage,  you do not want to make radical changes in functionality but just check for bugs. RC is also put out to the public\r\n\r\n\r\nRelease: All works, software is released to public.\r\n\r\n\r\n',11,1,11,0,0),('Development - refers to the primary implementation of new projects. Once an initial development project is complete, and the clients/stakeholders have accepted it, then you will typically move into a new phase--either maintenance or enhancement.\r\nMaintenance - refers to ongoing administration of accepted and \"completed\" functionalities/features. For instance, you may have a maintenance contract to: provide ongoing support to end-users, to fix previously unknown bugs in the accepted functionality, to ensure that the server doesn\'t go down, and so on.\r\nEnhancement - refers to adding new features to an already completed project. For example, if you make me a social media application, and 2 years later, I ask your team to add e-commerce functionality that wasn\'t previously expected or scoped, that\'s an enhancement.\r\n',13,1,12,0,0),('Organizations exist to exchange value with customers and other stakeholders - that’s strategy. They do this via a series of coordinated activities across a number of functional elements of the organization - that’s a process. It makes sense to optimize these processes so that they satisfy the requirements of customers and other stakeholders - that’s process improvement. Taking a coordinated view of the performance of all of the processes by which an organization exchanges value, optimizes performance - that’s process management. Process management allows organizations to focus on activities that create the value exchange outcomes described by the strategy - that’s execution.\r\n\r\n',14,1,14,0,0);
/*!40000 ALTER TABLE `answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `comm` varchar(1000) DEFAULT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `uid` (`uid`),
  KEY `aid` (`aid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`aid`) REFERENCES `answer` (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `title` varchar(200) DEFAULT NULL,
  `descript` varchar(500) DEFAULT NULL,
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  KEY `uid` (`uid`),
  CONSTRAINT `question_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES ('What are the roles involved in infrastructure management?','What all actually comes under Infrastructure Management?',5,'Infrastructure Services',1),('What are the risks involved in infrastructure management?','A Risk Management approach to a successful infrastructure project is really important. It would be great if someone could guide me through it.',6,'Infrastructure Services',1),('What is the concept of inter-operability?','I was unable to understand the concept of inter-operability Can someone explain what is actually meant by it?',8,'Infrastructure Services',1),('What is Beta testing?','Why is it so important to do beta testing?',9,'Product Engineering And Testing',1),('What are the different phases of Testing?','Alpha and Beta tests are typically carried for \"off-the shelf\" software or product oriented companies. The Phases of Testing for a product company typically varies from a service oriented organization. What are the other intermediate testing phases?\r\n\r\n',11,'Product Engineering And Testing',1),('What is the difference between Maintenance and Development?','\r\nMy question is... Is there a specific definition that can define the differences between maintenance/development/enhancement? And, does that definition also depend on the type of process your team is using (i.e. we are currently using SVN and making a transition to git)?\r\n\r\n',12,'Application Development And Maintenance',1),('What is the link between organizational strategy and business process management?','How can we connect business process management and organizational strategy?',14,'Business Processes',1);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `name` varchar(40) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(32) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('kadd','kadd',1,'kadd');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-23 15:30:27
