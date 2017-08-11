-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2017 at 09:48 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mmajlis`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `LogId` int(11) NOT NULL,
  `TableName` varchar(100) NOT NULL,
  `NewData` text NOT NULL,
  `OldData` text NOT NULL,
  `UserId` int(10) NOT NULL,
  `Action` varchar(20) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RecordId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`LogId`, `TableName`, `NewData`, `OldData`, `UserId`, `Action`, `CreatedDate`, `RecordId`) VALUES
(1, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"1";s:12:"SubmissionId";s:5:"11481";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:16:"this is accepted";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 00:08:07";}}', 'a:0:{}', 2, 'change_status', '2017-02-24 17:08:07', 11481),
(2, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"2";s:12:"SubmissionId";s:5:"11481";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:25:"its inappropriate content";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 00:08:37";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"1";s:12:"SubmissionId";s:5:"11481";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:16:"this is accepted";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 00:08:07";}}', 2, 'change_status', '2017-02-24 17:08:37', 11481),
(3, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"3";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"1";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 23:41:54";}}', 'a:0:{}', 2, 'change_status', '2017-02-25 16:41:54', 11492),
(4, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"4";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 23:42:28";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"3";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"1";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-25 23:41:54";}}', 2, 'change_status', '2017-02-25 16:42:28', 11492),
(5, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"5";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"5";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-26 01:32:23";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"4";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-26 00:36:13";}}', 2, 'change_status', '2017-02-25 18:32:23', 11492),
(6, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"6";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-26 01:33:02";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"5";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"5";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-26 01:32:23";}}', 2, 'change_status', '2017-02-25 18:33:02', 11492),
(7, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"7";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 01:26:07";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"6";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"2";s:11:"CreatedDate";s:19:"2017-02-26 01:33:02";}}', 1, 'change_status', '2017-02-27 18:26:07', 11492),
(8, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"8";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 01:26:18";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"7";s:12:"SubmissionId";s:5:"11492";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 01:26:07";}}', 1, 'change_status', '2017-02-27 18:26:18', 11492),
(9, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"9";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:13:"this is test ";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:29:53";}}', 'a:0:{}', 1, 'change_status', '2017-02-27 19:29:53', 11491),
(10, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"10";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:36:47";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:1:"9";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:13:"this is test ";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:36:47";}}', 1, 'change_status', '2017-02-27 19:36:47', 11491),
(11, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"11";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:8:"afafsafd";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:37:53";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"10";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:37:53";}}', 1, 'change_status', '2017-02-27 19:37:53', 11491),
(12, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"12";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"1";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:40:19";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"11";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:8:"afafsafd";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:40:19";}}', 1, 'change_status', '2017-02-27 19:40:19', 11491),
(13, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"13";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:40:26";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"12";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"1";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:40:26";}}', 1, 'change_status', '2017-02-27 19:40:26', 11491),
(14, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"14";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:42:26";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"13";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:42:26";}}', 1, 'change_status', '2017-02-27 19:42:26', 11491),
(15, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"15";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"7";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:44:43";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"14";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"9";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:44:43";}}', 1, 'change_status', '2017-02-27 19:44:43', 11491),
(16, 'submission_status_map', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"16";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"5";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:45:25";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"15";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"7";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:45:25";}}', 1, 'change_status', '2017-02-27 19:45:25', 11491),
(17, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"17";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:04";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"16";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"5";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:04";}}', 1, 'change_status', '2017-02-27 19:49:04', 11491),
(18, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"18";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:04";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"17";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:04";}}', 1, 'change_status', '2017-02-27 19:49:04', 11491),
(19, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"19";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:12";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"18";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:12:"this is test";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:12";}}', 1, 'change_status', '2017-02-27 19:49:12', 11491),
(20, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"20";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:12";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"19";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 02:49:12";}}', 1, 'change_status', '2017-02-27 19:49:12', 11491),
(21, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"21";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:01:53";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"20";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"3";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:01:53";}}', 1, 'change_status', '2017-02-27 20:01:53', 11491),
(22, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"22";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:01:53";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"21";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:01:53";}}', 1, 'change_status', '2017-02-27 20:01:53', 11491),
(23, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"23";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:05";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"22";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"4";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:05";}}', 1, 'change_status', '2017-02-27 20:02:05', 11491),
(24, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"24";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:05";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"23";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:05";}}', 1, 'change_status', '2017-02-27 20:02:05', 11491),
(25, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"25";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:20";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"24";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"2";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:20";}}', 1, 'change_status', '2017-02-27 20:02:20', 11491),
(26, 'SUBMISSION_STATUS_MAP', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"26";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"1";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:20";}}', 'a:1:{i:0;O:8:"stdClass":9:{s:2:"Id";s:2:"25";s:12:"SubmissionId";s:5:"11491";s:8:"StatusId";s:1:"8";s:15:"InternalComment";s:0:"";s:15:"ExternalComment";s:0:"";s:17:"CommentAttachment";s:1:"0";s:8:"IsActive";s:1:"0";s:6:"UserId";s:1:"1";s:11:"CreatedDate";s:19:"2017-02-28 03:02:20";}}', 1, 'change_status', '2017-02-27 20:02:20', 11491);

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `MediaId` int(11) NOT NULL,
  `UserId` int(11) DEFAULT NULL,
  `MediaPath` varchar(255) DEFAULT NULL,
  `MediaTo` int(11) DEFAULT NULL,
  `MediaType` varchar(255) DEFAULT NULL,
  `MediaName` mediumtext,
  `MedaiStatus` smallint(6) DEFAULT NULL,
  `MediaFileType` int(1) DEFAULT '1' COMMENT '1=image;2=video',
  `MediaIsExternal` int(1) DEFAULT '0',
  `MediaCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MediaUpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`MediaId`, `UserId`, `MediaPath`, `MediaTo`, `MediaType`, `MediaName`, `MedaiStatus`, `MediaFileType`, `MediaIsExternal`, `MediaCreatedAt`, `MediaUpdatedAt`) VALUES
(35, 109, 'uploads/media/profile/109.jpg', 109, 'profile', 'uploads/media/profile/109.jpg', 1, 1, 0, '2014-11-10 02:56:51', '2017-02-19 06:10:49'),
(36, 19, 'uploads/media/profile/19.jpg', 19, 'profile', 'uploads/media/profile/19.jpg', 1, 1, 0, '2014-11-20 04:08:22', '2017-02-19 06:10:49'),
(43, 27, 'uploads/media/profile/27.jpg', 27, 'profile', 'uploads/media/profile/27.jpg', 1, 1, 0, '2014-11-10 22:31:54', '2017-02-19 06:10:49'),
(44, 29, 'uploads/media/profile/29.jpg', 29, 'profile', 'uploads/media/profile/29.jpg', 1, 1, 0, '2014-11-11 22:14:17', '2017-02-19 06:10:49'),
(65, 147, 'uploads/media/profile/147.jpeg', 147, 'profile', 'uploads/media/profile/147.jpeg', 1, 1, 0, '2014-11-16 21:06:10', '2017-02-19 06:10:49'),
(114, 37, 'uploads/media/profile/37.jpg', 37, 'profile', 'uploads/media/profile/37.jpg', 1, 1, 0, '2014-11-20 04:26:25', '2017-02-19 06:10:49'),
(129, 159, 'uploads/media/profile/159.png', 159, 'profile', 'uploads/media/profile/159.png', 1, 1, 0, '2014-11-21 00:51:36', '2017-02-19 06:10:49'),
(142, 61, 'uploads/media/profile/61.png', 61, 'profile', 'uploads/media/profile/61.png', 1, 1, 0, '2014-11-21 04:06:34', '2017-02-19 06:10:49'),
(253, 221, 'uploads/media/profile/221.png', 221, 'profile', 'uploads/media/profile/221.png', 1, 1, 0, '2014-11-24 08:10:19', '2017-02-19 06:10:49'),
(269, 65, 'uploads/media/profile/65.', 65, 'profile', 'uploads/media/profile/65.', 1, 1, 0, '2015-01-11 02:04:14', '2017-02-19 06:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `brain_storming`
--

CREATE TABLE `brain_storming` (
  `BrainStormingId` int(11) NOT NULL,
  `BrainStormingTitleAr` varchar(255) NOT NULL,
  `BrainStormingTitleEn` varchar(255) NOT NULL,
  `BrainStormingDescriptionAr` text NOT NULL,
  `BrainStormingDescriptionEn` text NOT NULL,
  `BrainStormingStatus` int(1) NOT NULL,
  `BrainStormingStartingDate` datetime NOT NULL,
  `BrainStormingEndingDate` datetime NOT NULL,
  `BrainStormingCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BrainStormingUpdatedAt` datetime NOT NULL,
  `BrainStormingType` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brain_storming_answers`
--

CREATE TABLE `brain_storming_answers` (
  `BSAnswerId` int(11) NOT NULL,
  `BrainStormingId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Dated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BSOptionAnswer` text NOT NULL,
  `BSOptionId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brain_storming_options`
--

CREATE TABLE `brain_storming_options` (
  `BSOptionId` int(11) NOT NULL,
  `BSOptionAr` varchar(255) NOT NULL,
  `BSOptionEn` varchar(255) NOT NULL,
  `BSOptionStatus` tinyint(1) NOT NULL,
  `BSOptionCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BSOptionUpdatedAt` datetime NOT NULL,
  `BrainStormingId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `brain_storming_types`
--

CREATE TABLE `brain_storming_types` (
  `BSTypeId` int(11) NOT NULL,
  `BSTypeNameEn` varchar(255) NOT NULL,
  `BSTypeNameAr` varchar(255) NOT NULL,
  `BSTypeStatus` tinyint(1) NOT NULL,
  `BSTypeCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `BSTypeUpdadatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brain_storming_types`
--

INSERT INTO `brain_storming_types` (`BSTypeId`, `BSTypeNameEn`, `BSTypeNameAr`, `BSTypeStatus`, `BSTypeCreatedAt`, `BSTypeUpdadatedAt`) VALUES
(1, 'Multiple choice', 'عدة اختيارات', 1, '2017-02-14 20:00:00', '2017-02-14 20:00:00'),
(2, 'Rating', 'تقييم', 1, '2017-02-20 20:00:00', '2017-02-14 20:00:00'),
(3, 'Free Text', 'نص', 1, '2017-02-07 20:00:00', '2017-02-07 20:00:00'),
(4, 'Yes or No', 'نعم او لا', 1, '2017-02-13 20:00:00', '2017-02-07 20:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

CREATE TABLE `campaign` (
  `Id` int(11) NOT NULL,
  `TitleEn` text,
  `TitleAr` text,
  `DescriptionEn` text,
  `DescriptionAr` text,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `Banner` varchar(255) DEFAULT NULL,
  `CategoryId` int(10) DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `CreatedBy` int(10) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`Id`, `TitleEn`, `TitleAr`, `DescriptionEn`, `DescriptionAr`, `StartDate`, `EndDate`, `Banner`, `CategoryId`, `CreatedAt`, `CreatedBy`, `Status`) VALUES
(1, 'Some thing', 'some thing in arabic', ' this is some description', 'this is some description in arabic', '2017-02-27 00:00:00', '2017-03-07 00:00:00', '4331235759eb386f3b829d98270cec8b.jpg', 22, '2017-02-25 17:21:06', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CatId` int(11) NOT NULL,
  `CatParent` int(11) DEFAULT '0',
  `CatNameEn` varchar(255) DEFAULT NULL,
  `CatDescEn` mediumtext,
  `CatDescAr` mediumtext,
  `CatStatus` smallint(6) NOT NULL,
  `CatDepId` int(11) NOT NULL,
  `CatColorCode` varchar(8) DEFAULT NULL,
  `CatWeight` int(11) DEFAULT NULL,
  `CatNameAr` varchar(255) DEFAULT NULL,
  `CatSel` int(11) DEFAULT '0',
  `CatOrder` int(11) NOT NULL,
  `SubtId` int(11) DEFAULT NULL,
  `CatShow` smallint(6) NOT NULL,
  `CatCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CatUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CatId`, `CatParent`, `CatNameEn`, `CatDescEn`, `CatDescAr`, `CatStatus`, `CatDepId`, `CatColorCode`, `CatWeight`, `CatNameAr`, `CatSel`, `CatOrder`, `SubtId`, `CatShow`, `CatCreatedAt`, `CatUpdatedAt`) VALUES
(18, 0, 'Transportation', 'Parent category', NULL, 1, 10, '#9e6ec4', 40, 'المواصلات', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(19, 0, 'Utilities', 'Parent category', NULL, 1, 11, '#8877b8', 50, 'الكهرباء والمياه والصرف الصحي', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(20, 0, 'Tourism & Leisure', 'Parent category', NULL, 1, 12, '#37db51', 20, 'السياحة والترفيه', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(21, 0, 'Safety & Security', 'Parent category', NULL, 1, 13, '#4744cf', 60, 'الأمن والأمان', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(22, 18, 'Metro, Taxis, Buses, Tram', '', NULL, 1, 10, '#5e3dba', 1, 'المترو، سيارات الأجرة، الباصات، الترام', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(23, 19, 'Electricity', '', NULL, 1, 11, '#5062a3', 1, 'الكهرباء', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(24, 19, 'Water', '', NULL, 1, 11, '#6928bd', 2, 'المياه', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(25, 20, 'Shopping', '', NULL, 1, 12, '#33b047', 3, 'التسوق', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(26, 20, 'Entertainment', '', NULL, 1, 12, '#2a74b8', 2, 'الترفيه', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(27, 20, 'Tourism', '', NULL, 1, 12, '#56db4b', 1, 'السياحة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(29, 0, 'Doing Business & Entrepreunership', 'Parent category', NULL, 1, 19, '#56db4b', 10, 'مزاولة وريادة الأعمال ', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(30, 0, 'Health', 'Parent category', NULL, 1, 22, '#56db4b', 80, 'الصحة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(31, 0, 'Education', 'Education', NULL, 1, 23, '#56db4b', 90, 'التعليم', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(32, 0, 'Smart City', 'Parent category', NULL, 1, 24, '#56db4b', 70, 'المدينة الذكية', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(34, 0, 'Environment', 'Parent category', NULL, 1, 28, '#56db4b', 160, 'البيئة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(35, 0, 'Law & Justice', 'Parent cateogory', NULL, 1, 30, '#56db4b', 130, 'القانون والقضاء', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(36, 0, 'Charity & Social Responsibility', 'Parent category', NULL, 1, 39, '#56db4b', 120, 'المسؤولية الاجتماعية والأعمال الخيرية', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(37, 0, 'Youth', 'Parent category', NULL, 1, 32, '#56db4b', 140, 'الشباب', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(38, 0, 'Arts & Culture', 'Parent category', NULL, 1, 33, '#56db4b', 130, 'الفنون والثقافة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(39, 0, 'Sports', 'Parent category', NULL, 1, 34, '#56db4b', 150, 'الرياضة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(40, 0, 'Media', 'Parent category', NULL, 1, 36, '#56db4b', 170, 'الإعلام', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(41, 0, 'Other', 'Parent cateogry', NULL, 1, 31, '#56db4b', 200, 'أخرى', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(42, 18, 'Air and Airports', '', NULL, 1, 14, '#56db4b', 2, 'الجوية والمطارات', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(44, 19, 'Renewable Energy', '', NULL, 1, 41, '#56db4b', 4, 'الطاقة المتجددة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(45, 29, 'Trade', '', NULL, 1, 17, '#56db4b', 3, 'التجارة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(49, 29, 'Free Zones', '', NULL, 1, 21, '#56db4b', 5, 'المناطق الحرة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(50, 0, 'Parks and Beaches', '', NULL, 1, 28, '#ffa500', 30, 'الحدائق والمنتزهات والشواطئ', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(52, 0, 'Government Services', '', NULL, 1, 16, '#ffa500', 190, 'الخدمات الحكومية', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(54, 29, 'Customs', '', NULL, 1, 38, '#ffa500', 7, 'الجمارك', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(55, 29, 'Residency', '', NULL, 1, 37, '#ffa500', 6, 'شؤون الإقامة ', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(56, 29, 'Entrepreunership', '', NULL, 1, 19, '#ffa500', 2, 'الريادة', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(57, 50, 'Parks', '', NULL, 1, 28, '#ffa500', 1, 'الحدائق والمنتزهات', 1, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(58, 50, 'Beaches', '', NULL, 1, 28, '#ffa500', 2, 'الشواطئ', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(59, 50, 'Public Spaces', '', NULL, 1, 28, '#ffa500', 3, 'الأماكن العامة', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(60, 19, 'Sewage', '', NULL, 1, 28, '#ffa500', 3, 'الصرف الصحي', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(61, 0, 'Roads & Traffic', '', NULL, 1, 10, '#ffa500', 110, 'الطرق والمرور', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(62, 0, 'Real Estate & Housing', '', NULL, 1, 29, '#ffa500', 180, 'العقارات والإسكان', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(63, 32, 'Smart Applications', '', NULL, 1, 24, '#ffa500', 1, 'التطبيقات الذكية', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(64, 32, 'Communications', '', NULL, 1, 24, '#ffa500', 2, 'الاتصالات', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(65, 29, 'Doing Businesss', '', NULL, 0, 19, '#ffa500', 1, 'مزاولة الأعمال', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(66, 29, 'Investments', '', NULL, 1, 19, '#ffa500', 4, 'الاستثمارات', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(67, 18, 'Sea', '', NULL, 1, 10, '#ffa500', 3, 'البحرية', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(70, 21, 'Police', NULL, NULL, 1, 13, '#ffa500', 1, 'الشرطة', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(72, 21, 'Civil Defense', NULL, NULL, 1, 44, '#ffa500', 2, 'الدفاع المدني', 0, 0, NULL, 1, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(77, 0, 'DU', NULL, NULL, 1, 45, '#ffa500', 100, 'دو', 0, 0, NULL, 0, '2017-02-16 13:12:42', '2017-02-16 13:12:42'),
(78, 0, 'Etisalat', NULL, NULL, 1, 46, '#ffa500', 100, 'اتصالات', 0, 0, NULL, 0, '2017-02-16 13:12:42', '2017-02-16 13:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `category_questions`
--

CREATE TABLE `category_questions` (
  `CatQuestionId` bigint(22) NOT NULL,
  `CatQuestionTextEn` varchar(255) NOT NULL,
  `CatQuestionTextAr` varchar(255) NOT NULL,
  `CatQuestionCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CatId` int(11) NOT NULL,
  `CatQuestionUpdatedAt` timestamp NULL DEFAULT NULL,
  `CatQuestionStatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_questions`
--

INSERT INTO `category_questions` (`CatQuestionId`, `CatQuestionTextEn`, `CatQuestionTextAr`, `CatQuestionCreatedAt`, `CatId`, `CatQuestionUpdatedAt`, `CatQuestionStatus`) VALUES
(1, 'this is question', 'this is qeustion', '2017-02-24 15:30:58', 78, '2017-02-24 15:30:58', 1),
(2, 'this is question 2', 'this is qeustion 2', '2017-02-24 15:31:21', 78, '2017-02-24 15:31:21', 1),
(4, 'this is du question', 'this is du question ar', '2017-02-24 15:32:00', 77, '2017-02-24 15:32:00', 1),
(5, 'test', 'dfasdf', '2017-02-24 16:00:01', 78, '2017-02-24 16:00:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `codes`
--

CREATE TABLE `codes` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_arb` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codes`
--

INSERT INTO `codes` (`id`, `type`, `name`, `name_arb`, `value`, `status`) VALUES
(59, 'gender', 'Male', 'ذكر‎', '1', '1'),
(60, 'gender', 'Female', 'انثى‎', '2', '1'),
(581, 'resident', 'Resident of Dubai', 'مقيم في دبي', '1', '1'),
(582, 'resident', 'Not Dubai Resident', ' غير مقيم في دبي', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepId` int(11) NOT NULL,
  `DepParent` int(11) DEFAULT '0',
  `DepNameEn` varchar(255) DEFAULT NULL,
  `DepNameAr` varchar(255) DEFAULT NULL,
  `DepAbbrev` varchar(255) DEFAULT NULL,
  `DepDescEn` mediumtext,
  `DepDescAr` mediumtext,
  `DepStatus` smallint(6) NOT NULL DEFAULT '1',
  `DepColorCode` varchar(8) DEFAULT NULL,
  `DepCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DepUpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepId`, `DepParent`, `DepNameEn`, `DepNameAr`, `DepAbbrev`, `DepDescEn`, `DepDescAr`, `DepStatus`, `DepColorCode`, `DepCreatedAt`, `DepUpdatedAt`) VALUES
(10, 0, 'Road and Transport Authority', 'هيئة الطرق والمواصلات', 'RTA', 'Road and Transport Authority ', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(11, 0, 'Dubai Electricity & Water Authority', 'هيئة كهرباء ومياه دبي', 'DEWA', 'Dubai Electricity and Water Authority', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(12, 0, 'Dubai Tourism', 'دائرة السياحة والتسويق التجاري', 'DTCM', 'Department of Tourism and Commerce Marketing', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(13, 0, 'Dubai Police', 'شرطة دبي', 'Dubai Police', 'Dubai Police', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(14, 0, 'Dubai Civil Aviation Authority', 'هيئة دبي للطيران المدني', 'DCAA', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(16, 0, 'The Executive Council of Dubai', 'المجلس التنفيذي لدبي', 'TECD', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(17, 0, 'Dubai Chamber', 'غرفة دبي', 'DCCI', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(19, 0, 'Department of Economic Development', 'دائرة التنمية الاقتصادية', 'DED', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(21, 0, 'Dubai Free Zones Council', 'مجلس المناطق الحرة بدبي', 'DFZC', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(22, 0, 'Dubai Health Authority', 'هيئة الصحة بدبي', 'DHA', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(23, 0, 'KHDA', 'هيئة المعرفة والتنمية البشرية', '0', 'Knowledge & Human Development Authority', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(24, 0, 'Smart Dubai', 'مبادرة دبي الذكية', 'Smart Dubai', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(28, 0, 'Dubai Municipality', 'بلدية دبي', 'DM', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(29, 0, 'Dubai Land Department', 'دائرة الأراضي و الأملاك', 'DLD', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(30, 0, 'Dubai Courts', 'محاكم دبي', 'Dubai Courts', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(31, 0, 'The Executive Office', 'المكتب التنفيذي', 'TEO', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(32, 0, 'Community Development Authority', 'هيئة تنمية المجتمع', 'CDA', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(33, 0, 'Dubai Culture', 'دبي للثقافة', 'Dubai Culture', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(34, 0, 'Dubai Sports Council', 'مجلس دبي الرياضي', 'DSC', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(36, 0, 'Dubai Media Incorporated', 'مؤسسة دبي للإعلام', 'DMI', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(37, 0, 'Residency & Foreigners Affairs', 'الإدارة العامة للإقامة وشؤون الأجانب - دبــــــي', '0', ' General Directorate of Residency and Foreigners Affairs-Dubai', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(38, 0, 'Dubai Customs', 'جمارك دبي', 'Dubai Customs', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(39, 0, 'Islamic Affairs', 'دائرة الشؤون الإسلامية و العمل الخيري', '0', 'Islamic Affairs & Charitable Activities Department', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(41, 0, 'Supreme Council of Energy', 'المجلس الأعلى للطاقة في دبي', 'SCE', '', NULL, 1, '', '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(44, 0, 'Civil Defense', 'الدفاع المدني', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(45, 0, 'DU', 'دو', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(46, 0, 'Etisalat', 'اتصالات', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(47, 14, 'Dubai Airports', 'مطارات دبي', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(48, 22, 'Dubai Corporation for Ambulance Services', 'مؤسسة دبي لخدمات الإسعاف', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(49, 23, 'Dubai Education Zone', 'منطقة دبي التعليمية', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(50, 30, 'Public Prosecution', 'النيابة العامة', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(51, 39, 'Awqaf and Minors Affairs Foundation', 'مؤسسة الأوقاف وشؤون القصَّر', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(56, 10, 'Metro', 'مترو', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(57, 10, 'Metro', 'مترو', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(58, 10, 'Public Transport Authority', 'مؤسسة المواصلات العامة', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(59, 10, 'Traffic & Roads Agency', 'مؤسسة المرور والطرق', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(60, 10, 'Rail Agency', 'مؤسسة القطارات', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(61, 10, 'Licensing Agency', 'مؤسسة الترخيص', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(62, 10, 'test1', 'test', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(63, 10, 'trest2', 'test2', NULL, NULL, NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(64, 10, 'test3', 'test3', NULL, '', NULL, 1, NULL, '2017-02-16 13:11:27', '2017-02-16 13:11:27'),
(65, 11, 'Accounting', 'محاسبة', 'ACCT', 'deals with money', NULL, 1, 'green', '2017-02-23 06:24:45', '2017-02-23 06:24:45'),
(66, 12, 'kdfklsnv', 'grsgr', 'grgre', 'rgre', '', 1, 'red', '2017-02-28 12:09:38', '2017-02-28 08:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `email_notifications`
--

CREATE TABLE `email_notifications` (
  `EmailNotificationId` int(11) NOT NULL,
  `FromEmail` varchar(255) NOT NULL,
  `FromName` text NOT NULL,
  `ToEmail` varchar(255) NOT NULL,
  `ToName` text NOT NULL,
  `ReplyToEmail` varchar(255) NOT NULL,
  `ReplyToName` text NOT NULL,
  `NotificationCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NotificationUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Priority` int(11) NOT NULL,
  `Cc` text NOT NULL,
  `Bcc` text NOT NULL,
  `Subject` text NOT NULL,
  `Body` text NOT NULL,
  `PlannedSendDate` datetime DEFAULT NULL,
  `SentDateTime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_notifications`
--

INSERT INTO `email_notifications` (`EmailNotificationId`, `FromEmail`, `FromName`, `ToEmail`, `ToName`, `ReplyToEmail`, `ReplyToName`, `NotificationCreatedAt`, `NotificationUpdatedAt`, `Priority`, `Cc`, `Bcc`, `Subject`, `Body`, `PlannedSendDate`, `SentDateTime`) VALUES
(1, 'forsaty@mocd.gov.ae', '', 'shadi.shalah@msa.gov.ae', '', '', '', '2017-02-19 10:39:43', '2017-02-19 10:39:43', 3, '', '', 'Welcome to Majilis', '', NULL, NULL),
(2, 'forsaty@mocd.gov.ae', '', 'mohammed@rta.gov.ae', '', '', '', '2017-02-21 12:39:43', '2017-02-22 10:39:43', 3, '', '', 'Welcome to Majilis', '', NULL, NULL),
(3, 'forsaty@mocd.gov.ae', '', 'mariam@du.ae', '', '', '', '2017-02-23 10:39:43', '2017-02-24 10:39:43', 3, '', '', 'Welcome to Majilis', '', NULL, NULL),
(4, 'salama@mol.gov.ae', '', 'abbous@dewa.gov.ae', '', '', '', '2017-02-25 10:39:43', '2017-02-26 10:39:43', 3, '', '', 'Welcome to Majilis', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_notifications_types`
--

CREATE TABLE `email_notifications_types` (
  `SubjectId` int(11) NOT NULL,
  `TemplateName` varchar(255) NOT NULL,
  `SubjectDescriptionAr` text NOT NULL,
  `SubjectDescriptionEn` text NOT NULL,
  `MessageTemplateAr` text NOT NULL,
  `MessageTemplateEn` text NOT NULL,
  `TemplateCreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `TemplateUpdatedAt` timestamp NULL DEFAULT NULL,
  `TemplateStatus` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_notifications_types`
--

INSERT INTO `email_notifications_types` (`SubjectId`, `TemplateName`, `SubjectDescriptionAr`, `SubjectDescriptionEn`, `MessageTemplateAr`, `MessageTemplateEn`, `TemplateCreatedAt`, `TemplateUpdatedAt`, `TemplateStatus`) VALUES
(1, 'Registration.Confirmation', 'لقد تم تسجيل حسابك بنجاح', 'Your account has been registered successfully', '<div class=\'email-body\'>{{name}}\r\nتحية طيبة وبعد،\r\n<br /><br />\r\nنشكرك على التسجيل.\r\n<br /><br />\r\nيرجى اتباع الوصلة أدناه لتأكيد حسابك.\r\n<br /><br />\r\n<strong><a href="#"">صلة</a></strong>\r\n</div>\r\n<div class=\'email-footer\'>\r\nشكراً على مشاركتك، يرجى في الوقت لحالي زيارة ملفك الشخصي عبر <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a> لمتابعة تقدّم أفكارك وملاحظاتك.\r\n<br /><br />\r\n<span>* هذا البريد الإلكتروني صادر تلقائياً من النظام، يرجى عدم الرد عليه.</span>\r\n<br /><br />\r\nمجلس محمد بن راشد الذكي\r\n</div>', '<div class=\'email-body\'>Dear {{name}},\r\n\r\n&nbsp;\r\n\r\nThank You for your registration.\r\n\r\nPlease follow the link below to confirm your account.\r\n\r\n<strong><a href="#"">Link</a></strong>\r\n</div>\r\n<div class=\'email-footer\'>\r\nThank you for your submission. For further updates, please visit your profile on <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a>\r\n\r\n<span>* This is a system generated email; please do not reply to it.</span>\r\n\r\nMohammed Bin Rashid Smart Majlis\r\n</div>', '2017-02-19 10:35:00', NULL, 1),
(2, 'Forgot.Password', 'لقد تم تغيير كلمة السر الخاصة بك بنجاح', 'Your password has been reset successfully', '<div class=\'email-body\'>{{name}}\r\nتحية طيبة وبعد،\r\n\r\nتم تغيير كلمة السر الخاصة بك في مجلس محمد بن راشد الذكي بناءً على طلبك.\r\n\r\n<table>\r\n <tbody>\r\n  <tr>\r\n   <th>اسم المستخدم:</th><td>{{username}}</td>\r\n  </tr>\r\n  <tr>\r\n   <th>كلمة السر:</th><td>{{password}}</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n</div>\r\n<div class=\'email-footer\'>\r\nشكراً على مشاركتك، يرجى في الوقت لحالي زيارة ملفك الشخصي عبر <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a> لمتابعة تقدّم أفكارك وملاحظاتك.\r\n<br /><br />\r\n<span>* هذا البريد الإلكتروني صادر تلقائياً من النظام، يرجى عدم الرد عليه.</span>\r\n<br /><br />\r\nمجلس محمد بن راشد الذكي\r\n</div>', '<div class=\'email-body\'>Dear {{name}},\r\n\r\nYour password for Mohammed Bin Rashid Smart Majlis has been reset as per your request. \r\n\r\n<table>\r\n <tbody>\r\n  <tr>\r\n   <th>Username:</th><td>{{username}}</td>\r\n  </tr>\r\n  <tr>\r\n   <th>Password:</th><td>{{password}}</td>\r\n  </tr>\r\n </tbody>\r\n</table>\r\n</div>\r\n<div class=\'email-footer\'>\r\nThank you for your submission. For further updates, please visit your profile on <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a>\r\n\r\n<span>* This is a system generated email; please do not reply to it.</span>\r\n\r\nMohammed Bin Rashid Smart Majlis\r\n</div>', '2017-02-19 11:49:03', NULL, 1),
(3, 'Idea.Submission', 'شكراً على فكرتك', 'Thank you for your idea', '<div class=\'email-body\'>\n{{name}}<br />\nتحية طيبة وبعد،\n<br /><br />\nتم استلام فكرتك وتسجيلها على النظام الخاص بنا، وسيتم إبلاغك بحالة فكرتك خلال 10 ايام عمل. \n<br /><br />\n<table>\n <tbody>\n  <tr>\n   <th>الرقم التعريفي:</th><td>{{number}}</td>\n  </tr>\n  <tr>\n   <th>Title:</th><td>{{title}}</td>\n  </tr>\n  <tr>\n   <th>Details:</th><td>{{submissionDescription}}</td>\n  </tr>\n  <tr>\n   <th>Category:</th><td>{{categoryName}}</td>\n  </tr>\n  <tr>\n   <th>Status:</th><td>{{underReview}}</td>\n  </tr>\n </tbody>\n</table><br />\n</div>\n<div class=\'email-footer\'>\nشكراً على مشاركتك، يرجى في الوقت لحالي زيارة ملفك الشخصي عبر <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a> لمتابعة تقدّم أفكارك وملاحظاتك.\n<br /><br />\n<span>* هذا البريد الإلكتروني صادر تلقائياً من النظام، يرجى عدم الرد عليه.</span>\n<br /><br />\nمجلس محمد بن راشد الذكي\n</div>', '<div class=\'email-body\'>\nDear {{name}},\n<br /><br />\nYour idea has been received and registered in our system. You will be duly notified about the status of your idea within 10 working days.\n<br /><br />\n<table>\n <tbody>\n  <tr>\n   <th>Reference number:</th><td>{{number}}</td>\n  </tr>\n  <tr>\n   <th>Title:</th><td>{{title}}</td>\n  </tr>\n  <tr>\n   <th>Details:</th><td>{{submissionDescription}}</td>\n  </tr>\n  <tr>\n   <th>Category:</th><td>{{categoryName}}</td>\n  </tr>\n  <tr>\n   <th>Status:</th><td>{{underReview}}</td>\n  </tr>\n </tbody>\n</table><br />\n</div>\n<div class=\'email-footer\'>\nThank you for your submission. For further updates, please visit your profile on <a href=\'http://www.mbrmajlis.ae/\'>http://www.mbrmajlis.ae/</a>\n<br /><br />\n<span>* This is a system generated email; please do not reply to it.</span>\n<br /><br />\nMohammed Bin Rashid Smart Majlis\n</div>', '2017-02-19 12:49:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `FaqId` int(11) NOT NULL,
  `FaqQuestionEn` text NOT NULL,
  `FaqQuestionAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FaqAnswerEn` text NOT NULL,
  `FaqAnswerAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FaqStatus` tinyint(1) NOT NULL,
  `FaqCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FaqCreatedBy` varchar(255) NOT NULL,
  `FaqOrder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`FaqId`, `FaqQuestionEn`, `FaqQuestionAr`, `FaqAnswerEn`, `FaqAnswerAr`, `FaqStatus`, `FaqCreatedAt`, `FaqCreatedBy`, `FaqOrder`) VALUES
(3, 'Today, in the era of the smart cityy', 'واليوم في عصر المدينة الذكية والمجتمع المتنامي في دبي', 'the growing community of Dubai, there is an urgent need to launch a smart majlis to continue receiving ideas and comments. A smart majlis that opens its doors to everyone to strengthen the position of Dubai in various fields and sectors.', 'تبدو الحاجة ملحة لتوفير مجلس ذكي ومبتكر. مجلس يعمل كمنصة لمواصلة طرح الأفكار المبتكرة وتقديم الملاحظات. مجلس يسمح للجميع في دبي بالمساهمة في تعزيز ريادة دبي في مختلف المجالات والقطاعات.', 0, '2017-03-01 11:50:16', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `LabId` int(11) NOT NULL,
  `LabName` varchar(255) DEFAULT NULL,
  `LabNameAr` varchar(255) DEFAULT NULL,
  `LabStatus` smallint(6) NOT NULL DEFAULT '1',
  `LabColorCode` varchar(50) DEFAULT NULL,
  `LabCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`LabId`, `LabName`, `LabNameAr`, `LabStatus`, `LabColorCode`, `LabCreatedAt`) VALUES
(24, 'asdaf', 'asdfa', 0, '#FF6E6E', '2017-02-26 04:30:55'),
(27, 'asdaf', 'fasdfa', 0, '#953939', '2017-02-26 04:34:22'),
(28, 'asdaf', 'asdaf', 0, '#7CB5FF', '2017-02-26 04:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `LanguageId` int(11) NOT NULL,
  `LanguageNameEn` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LanguageNameAr` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LanguageCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CreatedAt` timestamp NULL DEFAULT NULL,
  `UpdatedAt` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`LanguageId`, `LanguageNameEn`, `LanguageNameAr`, `LanguageCode`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'English', 'الإنجليزية', 'en', '2017-02-27 16:00:00', '2017-02-28 00:00:00'),
(2, 'Arabic', 'العربية', 'ar', '2017-02-27 16:00:00', '2017-02-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `MenuId` int(11) NOT NULL,
  `MenuPageName` varchar(255) NOT NULL,
  `MenuNameEn` varchar(255) NOT NULL,
  `MenuNameAr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MenuSlugEn` varchar(255) NOT NULL,
  `MenuSlugAr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `MenuStatus` tinyint(4) NOT NULL DEFAULT '0',
  `MenuOrder` int(11) NOT NULL,
  `MenuType` tinyint(4) NOT NULL DEFAULT '1',
  `MenuCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `MenuCreatedBy` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`MenuId`, `MenuPageName`, `MenuNameEn`, `MenuNameAr`, `MenuSlugEn`, `MenuSlugAr`, `MenuStatus`, `MenuOrder`, `MenuType`, `MenuCreatedAt`, `MenuCreatedBy`) VALUES
(15, 'Contact Us', 'Contact Us', 'اتصل بنا', 'contact-us', 'contact-us', 1, 1, 1, '2017-03-01 11:03:52', '1'),
(16, 'About Smart Majlis', 'About Smart Majlis', 'عن المجلس', 'about-smart-majlis', 'about-smart-majlis', 1, 2, 1, '2017-03-01 11:04:22', '1'),
(17, 'About Smart Majlis', 'About Smart Majlis', 'عن المجلس', 'about-smart-majlis', 'about-smart-majlis', 1, 1, 2, '2017-03-01 11:04:41', '1'),
(18, 'Submit an Idea', 'Submit an idea', 'ارسل فكرة', 'submit-an-idea', 'submit-an-idea', 1, 3, 1, '2017-03-01 11:09:47', '1');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `ModuleId` int(11) NOT NULL,
  `ModuleName` varchar(100) NOT NULL,
  `ModuleTitleEn` varchar(255) DEFAULT NULL,
  `ModuleTitleAr` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`ModuleId`, `ModuleName`, `ModuleTitleEn`, `ModuleTitleAr`) VALUES
(1, 'manage_submissions', 'Manage Submissions', 'Manage Submissions'),
(2, 'export_submissions', 'Export Submissions', 'Export Submissions'),
(3, 'search_submissions', 'Search submissions', 'Search submissions'),
(4, 'view_dashboard', 'View dashboard', 'View dashboard'),
(5, 'print_dashboard', 'Print dashboard', 'Print dashboard'),
(6, 'manage_front_users', 'Manage Front users', 'Manage Front users'),
(7, 'manage_admin_users', 'Manage Admin users', 'Manage Admin users'),
(8, 'manage _categories', 'Manage Categories', 'Manage Categories'),
(9, 'manage_departments', 'Manage Departments', 'Manage Departments'),
(10, 'manage_brainstorming', 'Manage brainstorming', 'Manage brainstorming'),
(11, 'manage_notifications', 'Manage notifications', 'Manage notifications'),
(12, 'manage_content ', 'Manage Content ', 'Manage Content '),
(13, 'manage_campaigns', 'Manage Campaigns', 'Manage Campaigns'),
(14, 'manage_category', 'Manage Category', 'Manage Category'),
(15, 'manage_success_stories ', 'Manage Success Stories ', 'Manage Success Stories '),
(16, 'manage_news_highlights', 'Manage News Highlights', 'Manage News Highlights'),
(17, 'manage_lookups', 'Manage Look-Ups', 'Manage Look-Ups'),
(18, 'manage_tags', 'Manage Tags', 'Manage Tags'),
(19, 'manage_role', 'Manage Roles', 'Manage Roles');

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `nat_id` int(11) NOT NULL,
  `nat_id_ar` int(11) NOT NULL,
  `nat_nationality` varchar(255) NOT NULL,
  `nat_nationality_ar` varchar(255) DEFAULT NULL,
  `nat_status` smallint(6) NOT NULL DEFAULT '1',
  `nat_created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nat_updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`nat_id`, `nat_id_ar`, `nat_nationality`, `nat_nationality_ar`, `nat_status`, `nat_created_at`, `nat_updated_at`) VALUES
(1, 1, 'United Arab Emirates', 'الإمارات العربية المتحدة', 1, '2015-10-12 11:55:05', '0000-00-00 00:00:00'),
(2, 12, 'Afghanistan', 'افغانستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 14, 'Albania', 'البانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 76, 'Algeria', 'الجزائر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 122, 'American Samoa', 'ساموا الأمريكية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 19, 'Andorra', 'اندورا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 17, 'Angola', 'انجولا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 18, 'Anguilla', 'انجويلا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 173, 'Antarctica', 'القطب الجنوبي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 16, 'Antigua and Barbuda', 'انتيجوا وبربودا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 4, 'Argentina', 'الارجنتين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 'Armenia', 'ارمينيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 7, 'Aruba', 'اروبا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 10, 'Australia', 'استراليا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 226, 'Austria', 'النمسا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 3, 'Azerbaijan', 'اذربيجان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 33, 'Bahamas', 'الباهاما', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 36, 'Bahrain', 'البحرين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 45, 'Bangladesh', 'بنجلاديش', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 38, 'Barbados', 'بربادوس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 115, 'Belarus', 'روسيا البيضاء', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 42, 'Belgium', 'بلجيكا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 44, 'Belize', 'بليز', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 47, 'Benin', 'بنين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 40, 'Bermuda', 'برمودا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 48, 'Bhutan', 'بوتان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 54, 'Bolivia', 'بوليفيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 52, 'Bosnia and Herzegovina', 'البوسنة والهرسك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 34, 'Botswana', 'بتسوانا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 94, 'Bouvet Island', 'جزيرة بوفيه', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 37, 'Brazil', 'البرازيل', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 205, 'British Indian Ocean Territory', 'المحيط الهندي البريطاني', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 87, 'British Virgin Islands', 'جزر فرجين البريطانية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 41, 'Brunei', 'بروناي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 43, 'Bulgaria', 'بلغاريا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 50, 'Burkina Faso', 'بوركينا فاسو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 51, 'Burundi', 'بوروندي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 179, 'Cambodia', 'كمبوديا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 177, 'Cameroon', 'الكاميرون', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 180, 'Canada', 'كندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 112, 'Cape Verde', 'الرأس الأخضر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 80, 'Cayman Islands', 'جزر الكايمن', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 98, 'Central African Republic', 'جمهورية افريقيا الوسطى', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 63, 'Chad', 'تشاد', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 146, 'Chile', 'شيلي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 151, 'China', 'الصين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 93, 'Christmas Island', 'جزيرة الكريسماس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 90, 'Cocos [Keeling] Islands', 'جزر كوكوس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 185, 'Colombia', 'كولومبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 79, 'Comoros', 'جزر القمر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 186, 'Congo - Brazzaville', 'الكونغو - برازافيل', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 101, 'Congo - Kinshasa', 'جمهورية الكونغو الديمقراطية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 89, 'Cook Islands', 'جزر كوك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 184, 'Costa Rica', 'كوستاريكا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 120, 'Côte d’Ivoire', 'ساحل العاج', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 178, 'Croatia', 'كرواتيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 181, 'Cuba', 'كوبا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 171, 'Cyprus', 'قبرص', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 99, 'Czech Republic', 'جمهورية التشيك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 110, 'Denmark', 'الدانمرك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 108, 'Djibouti', 'جيبوتي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 111, 'Dominica', 'دومينيكا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 100, 'Dominican Republic', 'جمهورية الدومينيك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 13, 'Ecuador', 'الاكوادور', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 207, 'Egypt', 'مصر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 133, 'El Salvador', 'السلفادور', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 160, 'Equatorial Guinea', 'غينيا الاستوائية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 8, 'Eritrea', 'اريتريا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 11, 'Estonia', 'استونيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 2, 'Ethiopia', 'اثيوبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 88, 'Falkland Islands', 'جزر فوكلاند', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 85, 'Faroe Islands', 'جزر فارو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 169, 'Fiji', 'فيجي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 167, 'Finland', 'فنلندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 164, 'France', 'فرنسا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 157, 'French Guiana', 'غويانا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 55, 'French Polynesia', 'بولينيزيا الفرنسية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 209, 'French Southern Territories', 'المقاطعات الجنوبية الفرنسية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 70, 'Gabon', 'الجابون', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 155, 'Gambia', 'غامبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 106, 'Georgia', 'جورجيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 15, 'Germany', 'المانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 156, 'Ghana', 'غانا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 73, 'Gibraltar', 'جبل طارق', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 242, 'Greece', 'اليونان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 75, 'Greenland', 'جرينلاند', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 74, 'Grenada', 'جرينادا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 104, 'Guadeloupe', 'جوادلوب', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 105, 'Guam', 'جوام', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 103, 'Guatemala', 'جواتيمالا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 159, 'Guinea', 'غينيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 161, 'Guinea-Bissau', 'غينيا بيساو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 158, 'Guyana', 'غيانا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 234, 'Haiti', 'هايتي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 97, 'Heard Island and McDonald Islands', 'جزيرة هيرد وماكدونالد', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 236, 'Honduras', 'هندوراس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 238, 'Hong Kong SAR China', 'هونج كونج الصينية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 204, 'Hungary', 'المجر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 27, 'Iceland', 'ايسلندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 235, 'India', 'الهند', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 20, 'Indonesia', 'اندونيسيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 25, 'Iran', 'ايران', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 153, 'Iraq', 'العراق', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 26, 'Ireland', 'ايرلندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 95, 'Isle of Man', 'جزيرة مان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 28, 'Italy', 'ايطاليا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 71, 'Jamaica', 'جامايكا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 240, 'Japan', 'اليابان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 109, 'Jersey', 'جيرسي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 5, 'Jordan', 'الاردن', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 175, 'Kazakhstan', 'كازاخستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 189, 'Kenya', 'كينيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 188, 'Kiribati', 'كيريباتي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 187, 'Kuwait', 'الكويت', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 172, 'Kyrgyzstan', 'قرغيزستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 191, 'Laos', 'لاوس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 190, 'Latvia', 'لاتفيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 192, 'Lebanon', 'لبنان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 198, 'Lesotho', 'ليسوتو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 195, 'Liberia', 'ليبيريا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 194, 'Libya', 'ليبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 197, 'Liechtenstein', 'ليختنشتاين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 196, 'Lithuania', 'ليتوانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 193, 'Luxembourg', 'لوكسمبورج', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 210, 'Macedonia', 'مقدونيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 206, 'Madagascar', 'مدغشقر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 212, 'Malawi', 'ملاوي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 202, 'Malaysia', 'ماليزيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 82, 'Maldives', 'جزر الملديف', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 201, 'Mali', 'مالي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 200, 'Malta', 'مالطا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 81, 'Marshall Islands', 'جزر المارشال', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 199, 'Martinique', 'مارتينيك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 216, 'Mauritania', 'موريتانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 217, 'Mauritius', 'موريشيوس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 203, 'Mayotte', 'مايوت', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 211, 'Mexico', 'المكسيك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 223, 'Micronesia', 'ميكرونيزيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 219, 'Moldova', 'مولدافيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 220, 'Monaco', 'موناكو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 215, 'Mongolia', 'منغوليا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 72, 'Montenegro', 'الجبل الأسود', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 221, 'Montserrat', 'مونتسرات', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 208, 'Morocco', 'المغرب', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 218, 'Mozambique', 'موزمبيق', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 222, 'Myanmar [Burma]', 'ميانمار', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 224, 'Namibia', 'ناميبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 227, 'Nauru', 'نورو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 228, 'Nepal', 'نيبال', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 237, 'Netherlands', 'هولندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 77, 'Netherlands Antilles', 'جزر الأنتيل الهولندية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 176, 'New Caledonia', 'كاليدونيا الجديدة', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 232, 'New Zealand', 'نيوزيلاندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 231, 'Nicaragua', 'نيكاراجوا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 229, 'Niger', 'النيجر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 230, 'Nigeria', 'نيجيريا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 233, 'Niue', 'نيوي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 96, 'Norfolk Island', 'جزيرة نورفوك', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 183, 'North Korea', 'كوريا الشمالية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 91, 'Northern Mariana Islands', 'جزر ماريانا الشمالية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 225, 'Norway', 'النرويج', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 154, 'Oman', 'عمان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 31, 'Pakistan', 'باكستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 32, 'Palau', 'بالاو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 165, 'Palestinian Territories', 'فلسطين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 46, 'Panama', 'بنما', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 29, 'Papua New Guinea', 'بابوا غينيا الجديدة', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 30, 'Paraguay', 'باراجواي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 56, 'Peru', 'بيرو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 170, 'Philippines', 'الفيلبين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 35, 'Pitcairn Islands', 'بتكايرن', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 53, 'Poland', 'بولندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 39, 'Portugal', 'البرتغال', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 49, 'Puerto Rico', 'بورتوريكو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 174, 'Qatar', 'قطر', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 117, 'Réunion', 'روينيون', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 116, 'Romania', 'رومانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 114, 'Russia', 'روسيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 113, 'Rwanda', 'رواندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 129, 'Saint Helena', 'سانت هيلنا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 126, 'Saint Kitts and Nevis', 'سانت كيتس ونيفيس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 127, 'Saint Lucia', 'سانت لوسيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 128, 'Saint Martin', 'سانت مارتين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 124, 'Saint Pierre and Miquelon', 'سانت بيير وميكولون', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 125, 'Saint Vincent and the Grenadines', 'سانت فنسنت وغرنادين', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 121, 'Samoa', 'ساموا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 123, 'San Marino', 'سان مارينو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 130, 'São Tomé and Príncipe', 'ساو تومي وبرينسيبي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 213, 'Saudi Arabia', 'المملكة العربية السعودية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 137, 'Senegal', 'السنغال', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 148, 'Serbia', 'صربيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 149, 'Serbia and Montenegro', 'صربيا والجبل الأسود', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 145, 'Seychelles', 'سيشل', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 144, 'Sierra Leone', 'سيراليون', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 136, 'Singapore', 'سنغافورة', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 134, 'Slovakia', 'سلوفاكيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 135, 'Slovenia', 'سلوفينيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 84, 'Solomon Islands', 'جزر سليمان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 150, 'Somalia', 'الصومال', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 102, 'South Africa', 'جمهورية جنوب افريقيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 107, 'South Georgia and the South Sandwich Islands', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 182, 'South Korea', 'كوريا الجنوبية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 9, 'Spain', 'اسبانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 131, 'Sri Lanka', 'سريلانكا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 139, 'Sudan', 'السودان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 141, 'Suriname', 'سورينام', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 132, 'Svalbard and Jan Mayen', 'سفالبارد وجان مايان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 138, 'Swaziland', 'سوازيلاند', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 142, 'Sweden', 'السويد', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 143, 'Switzerland', 'سويسرا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 140, 'Syria', 'سوريا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 59, 'Taiwan', 'تايوان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 152, 'Tajikistan', 'طاجكستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 57, 'Tanzania', 'تانزانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 58, 'Thailand', 'تايلند', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 69, 'Timor-Leste', 'تيمور الشرقية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 64, 'Togo', 'توجو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 66, 'Tokelau', 'توكيلو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 67, 'Tonga', 'تونجا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 62, 'Trinidad and Tobago', 'ترينيداد وتوباغو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 68, 'Tunisia', 'تونس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 61, 'Turkey', 'تركيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 60, 'Turkmenistan', 'تركمانستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 78, 'Turks and Caicos Islands', 'جزر الترك وجايكوس', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 65, 'Tuvalu', 'توفالو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 83, 'U.S. Minor Outlying Islands', 'جزر الولايات المتحدة البعيدة الصغيرة', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 86, 'U.S. Virgin Islands', 'جزر فرجين الأمريكية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 23, 'Uganda', 'اوغندا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 24, 'Ukraine', 'اوكرانيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 214, 'United Kingdom', 'المملكة المتحدة', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 239, 'United States', 'الولايات المتحدة الأمريكية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 21, 'Uruguay', 'اورجواي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 22, 'Uzbekistan', 'اوزبكستان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 163, 'Vanuatu', 'فانواتو', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 162, 'Vatican City', 'الفاتيكان', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 166, 'Venezuela', 'فنزويلا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 168, 'Vietnam', 'فيتنام', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 92, 'Wallis and Futuna', 'جزر والس وفوتونا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 147, 'Western Sahara', 'الصحراء الغربية', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 241, 'Yemen', 'اليمن', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 118, 'Zambia', 'زامبيا', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 119, 'Zimbabwe', 'زيمبابوي', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `PageId` int(11) NOT NULL,
  `PageNameEn` varchar(255) NOT NULL,
  `PageNameAr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `PageContentEn` text NOT NULL,
  `PageContentAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PageStatus` tinyint(1) NOT NULL,
  `PageCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PageUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PageCreatedBy` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PageId`, `PageNameEn`, `PageNameAr`, `PageContentEn`, `PageContentAr`, `PageStatus`, `PageCreatedAt`, `PageUpdatedAt`, `PageCreatedBy`) VALUES
(9, 'About Smart Majlis', 'عن المجلس', '<p><strong>About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart </strong></p>\r\n\r\n<p>Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart</p>\r\n\r\n<p>Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;About Smart Majlis&nbsp;</p>', '<p><strong>عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن </strong></p>\r\n\r\n<p>المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن ا<em>لمجلس&nbsp;عن المجلس&nbsp;عن المج</em>لس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;<s>عن المجلس&nbsp;عن المجلس</s>&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;عن المجلس&nbsp;</p>', 1, '2017-03-01 10:56:08', '2017-03-01 14:56:08', '1'),
(10, 'Contact Us', 'اتصل بنا', '<p>Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;Contact Us&nbsp;</p>\r\n', '<p>اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;اتصل بنا&nbsp;</p>\r\n', 1, '2017-03-01 11:02:33', '2017-03-01 15:02:33', '1'),
(11, 'Submit an Idea', 'ارسل فكرتك', '<p>Submit an Idea&nbsp;Submit an <strong><a href="#">Idea&nbsp;Submit an</a></strong> Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;Submit an Idea&nbsp;</p>\r\n', '<p>ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;ارسل فكرتك&nbsp;</p>\r\n', 1, '2017-03-01 11:08:23', '2017-03-01 15:08:23', '1'),
(12, 'Submit a comment', 'أرسل ملاحظة', '<p>Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;Submit a comment&nbsp;</p>\r\n', '<p>أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;أرسل ملاحظة&nbsp;</p>\r\n', 1, '2017-03-01 11:09:06', '2017-03-01 15:09:06', '1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `PermissionId` int(11) NOT NULL,
  `PermissionNameAr` varchar(255) NOT NULL,
  `PermissionNameEn` varchar(255) NOT NULL,
  `SystemNameAr` varchar(255) NOT NULL,
  `SystemNameEn` varchar(255) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`PermissionId`, `PermissionNameAr`, `PermissionNameEn`, `SystemNameAr`, `SystemNameEn`, `IsDeleted`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'تم التقديم', 'view', '', 'Can View', 0, '2017-02-27 08:50:29', '2017-02-17 00:00:00'),
(2, 'قيد الدراسة', 'edit', '', 'Can Edit', 0, '2017-02-27 08:50:35', '2017-02-17 00:00:00'),
(3, 'مقبولة', 'delete', '', 'Can Delete', 0, '2017-02-27 08:50:38', '2017-02-17 00:00:00'),
(4, 'غير مقبولة', 'print', '', 'Can Print', 0, '2017-02-27 08:50:42', '2017-02-17 00:00:00'),
(5, 'يعتمد', 'dependent', 'Dependent', 'Dependent', 0, '2017-02-27 05:44:53', '2017-02-27 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pressreleases`
--

CREATE TABLE `pressreleases` (
  `NewsId` int(11) NOT NULL,
  `NewsTitleEn` varchar(500) NOT NULL,
  `NewsTitleAr` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NewsIntroEn` text NOT NULL,
  `NewsIntroAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NewsContentEn` text NOT NULL,
  `NewsContentAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `NewsCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NewsUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NewsCreatedBy` varchar(255) NOT NULL,
  `NewsStatus` tinyint(1) NOT NULL,
  `NewsImages` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pressreleases`
--

INSERT INTO `pressreleases` (`NewsId`, `NewsTitleEn`, `NewsTitleAr`, `NewsIntroEn`, `NewsIntroAr`, `NewsContentEn`, `NewsContentAr`, `NewsCreatedAt`, `NewsUpdatedAt`, `NewsCreatedBy`, `NewsStatus`, `NewsImages`) VALUES
(30, 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai', 'منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion', 'منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية ', '<p>Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion</p>\r\n\r\n<p>and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas</p>\r\n\r\n<p>that can help Dubai&nbsp;Your opinion and ideas that can help Dubai</p>\r\n\r\n<p>&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas</p>\r\n\r\n<p>that can help Dubai&nbsp;Your</p>\r\n\r\n<p>Your opinion and ideas that can help Dubai&nbsp;Your opinion</p>\r\n\r\n<p>and ideas that can help Dubai&nbsp;opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai&nbsp;</p>', '<p>منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة</p>\r\n\r\n<p>في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في</p>\r\n\r\n<p>ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان</p>\r\n\r\n<p>المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان الم</p>\r\n\r\n<p>جلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد ال</p>\r\n\r\n<p>مترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنيةمنذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية&nbsp;منذ القدم كان المجلس أحد التقاليد المترسخة في ثقافتنا الوطنية</p>', '2017-03-01 11:13:05', '2017-03-01 15:13:05', '1', 1, 'news-1.jpg'),
(31, 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai3', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai', '<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai</p>\r\n\r\n<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help DubaiYour opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai</p>\r\n\r\n<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai</p>\r\n\r\n<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai</p>\r\n', '<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai</p>\r\n', '2017-03-03 08:30:48', '2017-03-03 12:30:48', '1', 1, 'news-2.jpg'),
(32, 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai245', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2 Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2', 'Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24 Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24d', '<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai2</p>\r\n', '<p>Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24&nbsp;Your opinion and ideas that can help Dubai Your opinion and ideas that can help Dubai24</p>\r\n', '2017-03-03 08:33:28', '2017-03-03 12:33:28', '1', 1, 'news-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `RoleId` int(11) NOT NULL,
  `RoleNameEn` varchar(255) NOT NULL,
  `RoleNameAr` varchar(255) DEFAULT NULL,
  `RoleSlug` varchar(100) DEFAULT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `IsSystemRole` tinyint(1) NOT NULL DEFAULT '0',
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`RoleId`, `RoleNameEn`, `RoleNameAr`, `RoleSlug`, `IsDeleted`, `IsSystemRole`, `CreatedAt`, `UpdatedAt`) VALUES
(1, 'Leadership  Group', 'الاداره العليا', 'leadership_group', 0, 1, '2017-02-17 10:23:33', '2017-02-28 05:59:59'),
(2, 'Head Group', 'المدير العام ', 'head_group', 0, 1, '2017-02-17 10:23:33', '2017-02-17 14:23:33'),
(3, 'Supervisor Group', 'مسئول الجهة', 'supervisor_group', 0, 1, '2017-02-17 10:23:33', '2017-02-17 14:23:33'),
(4, 'Coordinator Group', 'منسق الجهة ', 'coordinator_group', 0, 1, '2017-02-17 10:23:33', '2017-02-17 14:23:33'),
(5, 'Administrator Group', 'اداري الجهة', 'administrator_group', 0, 1, '2017-02-17 10:23:33', '2017-02-17 14:23:33'),
(6, 'Frontend User', NULL, 'frontend', 0, 1, '2017-02-17 10:23:33', '2017-02-17 14:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions_map`
--

CREATE TABLE `role_permissions_map` (
  `RolePermissionId` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `ModuleId` int(2) NOT NULL,
  `PermissionId` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_permissions_map`
--

INSERT INTO `role_permissions_map` (`RolePermissionId`, `RoleId`, `ModuleId`, `PermissionId`) VALUES
(1, 2, 1, 1),
(2, 2, 1, 2),
(3, 2, 1, 3),
(4, 2, 1, 4),
(5, 2, 2, 1),
(6, 2, 2, 2),
(7, 2, 2, 3),
(8, 2, 2, 4),
(9, 2, 3, 1),
(10, 2, 3, 2),
(11, 2, 3, 3),
(12, 2, 3, 4),
(13, 2, 4, 1),
(14, 2, 4, 2),
(15, 2, 4, 3),
(16, 2, 4, 4),
(17, 2, 5, 1),
(18, 2, 5, 2),
(19, 2, 5, 3),
(20, 2, 5, 4),
(21, 2, 6, 1),
(22, 2, 6, 2),
(23, 2, 6, 3),
(24, 2, 6, 4),
(25, 2, 7, 1),
(26, 2, 7, 2),
(27, 2, 7, 3),
(28, 2, 7, 4),
(29, 2, 8, 1),
(30, 2, 8, 2),
(31, 2, 8, 3),
(32, 2, 8, 4),
(33, 2, 9, 1),
(34, 2, 9, 2),
(35, 2, 9, 3),
(36, 2, 9, 4),
(37, 2, 10, 1),
(38, 2, 10, 2),
(39, 2, 10, 3),
(40, 2, 10, 4),
(41, 2, 11, 1),
(42, 2, 11, 2),
(43, 2, 11, 3),
(44, 2, 11, 4),
(45, 2, 12, 1),
(46, 2, 12, 2),
(47, 2, 12, 3),
(48, 2, 12, 4),
(49, 2, 13, 1),
(50, 2, 13, 2),
(51, 2, 13, 3),
(52, 2, 13, 4),
(53, 2, 14, 1),
(54, 2, 14, 2),
(55, 2, 14, 3),
(56, 2, 14, 4),
(57, 2, 15, 1),
(58, 2, 15, 2),
(59, 2, 15, 3),
(60, 2, 15, 4),
(61, 2, 16, 1),
(62, 2, 16, 2),
(63, 2, 16, 3),
(64, 2, 16, 4),
(65, 2, 17, 1),
(66, 2, 17, 2),
(67, 2, 17, 3),
(68, 2, 17, 4),
(69, 2, 18, 1),
(70, 2, 18, 2),
(71, 2, 18, 3),
(72, 2, 18, 4),
(73, 1, 4, 1),
(74, 1, 4, 4),
(75, 1, 5, 1),
(76, 1, 5, 4),
(77, 1, 10, 1),
(78, 1, 10, 4),
(79, 3, 1, 1),
(80, 3, 1, 5),
(81, 3, 2, 1),
(82, 3, 2, 5),
(83, 3, 3, 1),
(84, 3, 3, 5),
(85, 3, 4, 1),
(86, 3, 4, 5),
(87, 3, 5, 1),
(88, 3, 5, 4),
(89, 3, 5, 5),
(90, 4, 1, 1),
(91, 4, 1, 2),
(92, 4, 1, 3),
(93, 4, 1, 4),
(94, 4, 1, 5),
(95, 4, 2, 1),
(96, 4, 2, 2),
(97, 4, 2, 3),
(98, 4, 2, 4),
(99, 4, 2, 5),
(100, 4, 3, 1),
(101, 4, 3, 2),
(102, 4, 3, 3),
(103, 4, 3, 4),
(104, 4, 3, 5),
(105, 4, 4, 1),
(106, 4, 4, 2),
(107, 4, 4, 3),
(108, 4, 4, 4),
(109, 4, 4, 5),
(110, 4, 5, 1),
(111, 4, 5, 5),
(112, 4, 7, 1),
(113, 4, 7, 5),
(114, 4, 9, 1),
(115, 4, 9, 5),
(116, 5, 1, 1),
(117, 5, 1, 5),
(118, 5, 2, 1),
(119, 5, 2, 5),
(120, 5, 3, 1),
(121, 5, 3, 5),
(122, 5, 4, 1),
(123, 5, 4, 5),
(124, 5, 5, 1),
(125, 5, 5, 5),
(126, 4, 7, 2),
(127, 4, 7, 3),
(128, 4, 7, 4),
(129, 10, 1, 1),
(130, 10, 2, 2),
(131, 10, 3, 3),
(132, 10, 4, 4),
(133, 2, 19, 1),
(134, 2, 19, 2),
(135, 2, 19, 3),
(136, 2, 19, 4),
(137, 12, 1, 1),
(138, 12, 1, 2),
(139, 12, 7, 1),
(140, 12, 7, 2),
(141, 12, 7, 3),
(142, 12, 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `role_status_map`
--

CREATE TABLE `role_status_map` (
  `RoleStatusId` int(11) NOT NULL,
  `RoleId` int(2) NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_status_map`
--

INSERT INTO `role_status_map` (`RoleStatusId`, `RoleId`, `StatusId`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 2, 1),
(11, 2, 2),
(12, 2, 3),
(13, 2, 4),
(14, 2, 5),
(15, 2, 6),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 3, 1),
(20, 3, 2),
(21, 3, 3),
(22, 3, 4),
(23, 3, 5),
(24, 3, 6),
(25, 3, 7),
(26, 3, 8),
(27, 3, 9),
(28, 4, 1),
(29, 4, 2),
(30, 4, 3),
(31, 4, 4),
(32, 4, 5),
(33, 4, 6),
(34, 4, 7),
(35, 4, 8),
(36, 4, 9),
(37, 5, 1),
(38, 5, 2),
(39, 5, 3),
(40, 5, 4),
(41, 5, 5),
(42, 5, 6),
(43, 5, 7),
(44, 5, 8),
(45, 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `SliderId` int(11) NOT NULL,
  `SliderTitleEn` varchar(500) NOT NULL,
  `SliderTitleAr` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SliderDescriptionEn` text NOT NULL,
  `SliderDescriptionAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `SliderLinkEn` text NOT NULL,
  `SliderLinkAr` text NOT NULL,
  `SliderCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SliderCreatedBy` varchar(255) NOT NULL,
  `SliderStatus` tinyint(1) NOT NULL,
  `SliderOrder` int(11) NOT NULL,
  `SliderImages` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`SliderId`, `SliderTitleEn`, `SliderTitleAr`, `SliderDescriptionEn`, `SliderDescriptionAr`, `SliderLinkEn`, `SliderLinkAr`, `SliderCreatedAt`, `SliderCreatedBy`, `SliderStatus`, `SliderOrder`, `SliderImages`) VALUES
(33, 'Share your innovations with smart Majlis', 'شارك في مجلس محمد بن راشد الذكي', 'Involving the public in building the future of Dubai through sharing their innovative ideas and developmental comments.', 'المنصة التي تتيح للجميع المشاركة في صنع مستقبل دبي. فمن يدري لعل الفكرة العظيمة التالية تكون فكرتك أنت!', '#', '#', '2017-03-01 11:19:34', '1', 1, 1, 'slider-1.jpg'),
(34, 'We must stand shoulder to shoulder to serve the best interest of our country & citizens.', 'His Highness Sheikh Mohammed Bin Rashid Al Maktoum', 'His Highness Sheikh Mohammed Bin Rashid Al Maktoum', 'His Highness Sheikh Mohammed Bin Rashid Al Maktoum', '', '', '2017-03-03 07:27:28', '1', 1, 2, 'slider-2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `StatusId` int(11) NOT NULL,
  `NameAr` varchar(255) NOT NULL,
  `NameEn` varchar(255) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UpdatedAt` datetime NOT NULL,
  `SystemName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`StatusId`, `NameAr`, `NameEn`, `IsDeleted`, `CreatedAt`, `UpdatedAt`, `SystemName`) VALUES
(1, 'تم التقديم', 'Submitted', 0, '2017-02-25 20:41:39', '2017-02-17 00:00:00', 'submitted'),
(2, 'قيد الدراسة', 'Under Review', 0, '2017-02-25 20:43:24', '2017-02-17 00:00:00', 'under_review'),
(3, 'مقبولة', 'Accepted', 0, '2017-02-25 20:41:37', '2017-02-17 00:00:00', 'accepted'),
(4, 'غير مقبولة', 'Not Approved', 0, '2017-02-25 20:42:42', '2017-02-17 00:00:00', 'not_approved'),
(5, 'ليست فكرة ولا ملاحظة', 'Not Idea or Comment', 0, '2017-02-25 20:42:35', '2017-02-17 00:00:00', 'not_idea_or_comment'),
(6, 'معلومات غير كافية', 'Insufficient Information', 0, '2017-02-25 20:42:30', '2017-02-17 00:00:00', 'insufficient_information'),
(7, 'مكرر', 'Repeated', 0, '2017-02-25 20:42:16', '2017-02-17 00:00:00', 'repeated'),
(8, 'إعادة توجيه', 'Redirect', 0, '2017-02-25 20:42:11', '2017-02-17 00:00:00', 're_direct'),
(9, 'المحتوى غير لائق', 'Inappropriate Content', 0, '2017-02-25 20:42:22', '2017-02-17 00:00:00', 'inappropriate_content'),
(10, 'Transfer Ar', 'Transfer', 0, '2017-02-25 20:42:53', '0000-00-00 00:00:00', 'transfer');

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `StoryId` int(11) NOT NULL,
  `StoryTitleEn` varchar(500) NOT NULL,
  `StoryTitleAr` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StoryIntroEn` text NOT NULL,
  `StoryIntroAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StoryContentEn` text NOT NULL,
  `StoryContentAr` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `StoryCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StoryUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `StoryCreatedBy` varchar(255) NOT NULL,
  `StoryStatus` tinyint(1) NOT NULL,
  `StoryImages` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`StoryId`, `StoryTitleEn`, `StoryTitleAr`, `StoryIntroEn`, `StoryIntroAr`, `StoryContentEn`, `StoryContentAr`, `StoryCreatedAt`, `StoryUpdatedAt`, `StoryCreatedBy`, `StoryStatus`, `StoryImages`) VALUES
(32, 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai', 'شارك في مجلس محمد بن راشد الذكي', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai', 'شارك في مجلس محمد بن راشد الذكي شارك في مجلس محمد بن راشد الذكي', '<p>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;</p>\r\n\r\n<p><em>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;</em></p>\r\n\r\n<p><strong>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in </strong>Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai</p>\r\n\r\n<p>&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;</p>', '<p>شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;شارك في مجلس محمد بن راشد الذكي&nbsp;</p>', '2017-03-01 11:15:22', '2017-03-01 15:15:22', '1', 1, 'project-1.jpg'),
(33, 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai3', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai35', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai 3 ', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai3 Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai3', '<p>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai</p>\r\n', '<p>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai3&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai3</p>\r\n', '2017-03-03 09:05:51', '2017-03-03 13:05:51', '1', 1, 'project-2.jpg'),
(34, 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai0', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai0 3', ' Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai0 Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai0 ', 'Mohammed Bin Rashid inaugurates world’s first 3D-printed office in Dubai0', '<p>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0 &nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0 &nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0&nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0 &nbsp;Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0&nbsp;</p>\r\n', '<p>Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0Mohammed Bin Rashid inaugurates world&rsquo;s first 3D-printed office in Dubai0</p>\r\n', '2017-03-03 09:08:51', '2017-03-03 13:08:51', '1', 1, 'project-12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `SubId` int(11) NOT NULL,
  `SubType` int(11) DEFAULT NULL,
  `SubTitle` varchar(255) DEFAULT NULL,
  `SubDesc` text,
  `SubCat` int(11) DEFAULT NULL,
  `SubLocation` varchar(255) DEFAULT NULL,
  `SubUserId` int(11) DEFAULT NULL,
  `SubLang` varchar(255) NOT NULL,
  `SubPublish` smallint(6) NOT NULL DEFAULT '0',
  `SubIsRead` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Read or Unread',
  `SubFlag` smallint(6) NOT NULL DEFAULT '0',
  `SubCreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `SubUpdatedAt` timestamp NULL DEFAULT NULL,
  `CampaignId` int(10) DEFAULT '0',
  `IsDrafted` tinyint(4) NOT NULL DEFAULT '0',
  `StatusId` int(11) NOT NULL DEFAULT '1',
  `LockedUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`SubId`, `SubType`, `SubTitle`, `SubDesc`, `SubCat`, `SubLocation`, `SubUserId`, `SubLang`, `SubPublish`, `SubIsRead`, `SubFlag`, `SubCreatedAt`, `SubUpdatedAt`, `CampaignId`, `IsDrafted`, `StatusId`, `LockedUser`) VALUES
(11481, 1, 'Test', 'This is simplest form of data', 36, NULL, 362954, 'en', 0, 0, 0, '2016-10-26 08:31:15', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11482, 1, 'Islamic Escotology ', 'This is testing review for islamic escotology , i want to submit my enquiry reqarding this issue', 36, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 01:55:22', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11483, 2, 'Testing Comment', 'This is comment information regarding testing', 31, NULL, 362952, 'en', 0, 1, 0, '2016-10-27 02:01:20', '2016-10-27 03:05:57', NULL, 0, 5, 0),
(11484, 1, 'Aaetaf d', 'asdf asdfasfasdf', 31, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:06:01', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11485, 1, 'ad fas', 'dfasdf a', 31, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:07:19', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11486, 1, 'fdasf as', 'df asdfasdfasdf', 31, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:16:24', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11487, 1, 'asfa', 'asdfasdf', 30, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:23:38', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11488, 1, 'adsfasf', 'asdfaa', 30, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:40:18', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11489, 1, 'asdfa sdf', 'asdfa sf', 30, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:41:38', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11490, 2, 'asdfasdf', 'as dfasdfasdf', 30, NULL, 362952, 'en', 0, 1, 0, '2016-10-27 02:42:20', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11491, 2, 'fgsgfsdgfsdgf', 'sdfg sdgdg', 30, NULL, 362952, 'en', 0, 0, 0, '2016-10-27 02:44:08', '0000-00-00 00:00:00', NULL, 0, 1, 0),
(11492, 1, 'asdf asdf', 'asdfasdfasdf', 30, NULL, 362952, 'en', 0, 1, 0, '2016-10-27 02:44:57', '2016-10-27 03:12:13', NULL, 0, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submission_categories`
--

CREATE TABLE `submission_categories` (
  `id` int(11) NOT NULL,
  `SubId` int(11) NOT NULL,
  `CatId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submission_status_map`
--

CREATE TABLE `submission_status_map` (
  `Id` int(11) NOT NULL,
  `SubmissionId` int(10) NOT NULL,
  `StatusId` int(10) NOT NULL,
  `InternalComment` text NOT NULL,
  `ExternalComment` text NOT NULL,
  `CommentAttachment` int(11) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `UserId` int(10) NOT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submission_status_map`
--

INSERT INTO `submission_status_map` (`Id`, `SubmissionId`, `StatusId`, `InternalComment`, `ExternalComment`, `CommentAttachment`, `IsActive`, `UserId`, `CreatedDate`) VALUES
(1, 11481, 3, 'this is accepted', '', 0, 0, 1, '2017-02-25 21:34:19'),
(2, 11481, 9, 'its inappropriate content', '', 0, 1, 1, '2017-02-25 20:36:07'),
(3, 11492, 1, '', '', 0, 0, 1, '2017-02-25 21:34:22'),
(4, 11492, 2, 'this is test', '', 0, 0, 1, '2017-02-25 21:34:24'),
(5, 11492, 5, 'this is test', '', 0, 0, 2, '2017-02-25 21:34:26'),
(6, 11492, 9, 'this is test', '', 0, 1, 2, '2017-02-25 21:33:02'),
(7, 11492, 3, '', '', 0, 1, 1, '2017-02-27 21:26:07'),
(8, 11492, 9, '', '', 0, 1, 1, '2017-02-27 21:26:18'),
(9, 11491, 4, 'this is test ', '', 0, 0, 1, '2017-02-27 22:36:47'),
(10, 11491, 4, '', '', 0, 0, 1, '2017-02-27 22:37:53'),
(11, 11491, 4, 'afafsafd', '', 0, 0, 1, '2017-02-27 22:40:19'),
(12, 11491, 1, '', '', 0, 0, 1, '2017-02-27 22:40:26'),
(13, 11491, 8, '', '', 0, 0, 1, '2017-02-27 22:42:26'),
(14, 11491, 9, '', '', 0, 0, 1, '2017-02-27 22:44:43'),
(15, 11491, 7, '', '', 0, 0, 1, '2017-02-27 22:45:25'),
(16, 11491, 5, '', '', 0, 0, 1, '2017-02-27 22:49:04'),
(17, 11491, 8, 'this is test', '', 0, 0, 1, '2017-02-27 22:49:04'),
(18, 11491, 8, 'this is test', '', 0, 0, 1, '2017-02-27 22:49:12'),
(19, 11491, 3, '', '', 0, 0, 1, '2017-02-27 22:49:12'),
(20, 11491, 3, '', '', 0, 0, 1, '2017-02-27 23:01:53'),
(21, 11491, 4, '', '', 0, 0, 1, '2017-02-27 23:01:53'),
(22, 11491, 4, '', '', 0, 0, 1, '2017-02-27 23:02:05'),
(23, 11491, 2, '', '', 0, 0, 1, '2017-02-27 23:02:05'),
(24, 11491, 2, '', '', 0, 0, 1, '2017-02-27 23:02:20'),
(25, 11491, 8, '', '', 0, 0, 1, '2017-02-27 23:02:20'),
(26, 11491, 8, '', '', 0, 1, 1, '2017-02-27 23:02:20');

-- --------------------------------------------------------

--
-- Table structure for table `submission_tags`
--

CREATE TABLE `submission_tags` (
  `id` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL,
  `TagId` int(11) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submission_tags`
--

INSERT INTO `submission_tags` (`id`, `SubmissionId`, `TagId`, `CreatedAt`) VALUES
(1, 0, 10, '2017-02-27 17:48:17'),
(2, 0, 19, '2017-02-27 17:48:24'),
(3, 0, 10, '2017-02-27 17:48:49'),
(4, 0, 10, '2017-02-27 17:52:00'),
(5, 11491, 20, '2017-02-27 18:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `submission_types`
--

CREATE TABLE `submission_types` (
  `SubtId` int(11) NOT NULL,
  `SubtName` varchar(255) NOT NULL,
  `SubtNameAr` varchar(255) NOT NULL,
  `SubtNesc` mediumtext NOT NULL,
  `SubtStatus` smallint(6) NOT NULL,
  `SubColorCode` varchar(8) NOT NULL,
  `SubtCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SubtUpdatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submission_types`
--

INSERT INTO `submission_types` (`SubtId`, `SubtName`, `SubtNameAr`, `SubtNesc`, `SubtStatus`, `SubColorCode`, `SubtCreatedAt`, `SubtUpdatedAt`) VALUES
(1, 'Idea', 'فكرة', 'Idea description ', 1, '#5cd259', '2017-02-16 13:07:45', NULL),
(2, 'Comment', 'ملاحظة', 'Complaints description', 1, '#fc2a1c', '2017-02-16 13:07:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `TagId` int(11) NOT NULL,
  `TagName` varchar(255) DEFAULT NULL,
  `TagNameAr` varchar(255) DEFAULT NULL,
  `TagStatus` smallint(6) NOT NULL DEFAULT '1',
  `TagCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`TagId`, `TagName`, `TagNameAr`, `TagStatus`, `TagCreatedAt`) VALUES
(3, 'Dubai_Expo', 'العربيييي', 1, '2017-02-28 12:15:00'),
(5, 'asdfasdf', 'asdfa', 1, '2017-02-26 04:32:49'),
(6, 'asdfa', 'asdf', 0, '2017-02-26 04:37:47'),
(7, 'adsfasda', 'sdfafa', 1, '2017-02-26 04:38:48'),
(8, 'asdfasdf', 'asdfasdf', 0, '2017-02-26 04:38:55'),
(9, 'asdfasdfs', 'sdf', 0, '2017-02-26 04:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(15) NOT NULL,
  `RoleId` int(20) DEFAULT NULL,
  `UserFirstName` varchar(255) DEFAULT NULL,
  `UserLastName` varchar(255) NOT NULL,
  `UserDob` date DEFAULT NULL,
  `UserGender` smallint(6) DEFAULT NULL,
  `UserMobile` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserResidentYype` int(15) DEFAULT NULL,
  `UserNationality` varchar(255) DEFAULT NULL,
  `UserLanguage` int(15) DEFAULT NULL,
  `UserSocialId` varchar(50) DEFAULT NULL,
  `RegisterationMethod` varchar(255) DEFAULT NULL,
  `UserDepId` int(20) NOT NULL COMMENT 'This department id is for CMS users ',
  `UserStatus` tinyint(1) NOT NULL DEFAULT '0',
  `Notes` text,
  `UserCreatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UserUpdatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IsActive` tinyint(1) NOT NULL,
  `IsComplete` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `RoleId`, `UserFirstName`, `UserLastName`, `UserDob`, `UserGender`, `UserMobile`, `UserEmail`, `UserPassword`, `UserResidentYype`, `UserNationality`, `UserLanguage`, `UserSocialId`, `RegisterationMethod`, `UserDepId`, `UserStatus`, `Notes`, `UserCreatedAt`, `UserUpdatedAt`, `IsActive`, `IsComplete`) VALUES
(1, 1, 'Majilis', 'Administrator', '1987-01-11', 1, '0559482214', 'majilis@fi.ae', '21232f297a57a5a743894a0e4a801fc3', 1, '1', 1, 'xcxder234sdfd', NULL, 10, 1, NULL, '2017-03-02 08:36:01', '2017-02-16 14:20:14', 0, 1),
(8, 6, 'Abdullah', 'zafar', '1987-01-11', 1, '0559482214', 'zafar.abdullah87@gmail.com', 'a213f02ecb65abae933fa7763b768743', 1, '1', 1, 'xcxder234sdfd', NULL, 10, 1, NULL, '2017-02-23 09:58:50', '2017-02-16 14:20:14', 0, 1),
(11, 3, 'Marcloyd', 'Mirador', '1987-01-11', 1, '0559482214', 'marcloyd@fi.ae', '202cb962ac59075b964b07152d234b70', 1, '1', 1, 'xcxder234sdfd', NULL, 10, 1, '123', '2017-02-28 12:50:59', '2017-02-28 08:50:59', 0, 1),
(13, 2, 'Mohammed', 'Ismail', NULL, NULL, '586516516', 'mohammed@rta.ae', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 1, NULL, NULL, 10, 1, 'sdfsdfsd', '2017-02-28 12:22:15', '2017-02-28 08:22:15', 0, 0),
(14, 2, 'Mohammedyy', 'Ismail', NULL, NULL, '514651651651', 'mohammed@dewa.ae', '', NULL, NULL, 1, NULL, NULL, 11, 1, 'test notes test notes test notes test notes test notes test notes test notes test notes test notes test notes test notes test notes ', '2017-02-28 12:24:05', '2017-02-28 08:24:05', 0, 0),
(15, 6, 'Moamin', 'Albatta', NULL, NULL, '4124321412', 'dfsdfsd@dd.com', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, 1, NULL, NULL, 11, 1, 'TEST', '2017-02-27 00:46:20', '2017-02-27 00:46:20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_submission_favorites`
--

CREATE TABLE `user_submission_favorites` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `SubmissionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_submission_favorites`
--

INSERT INTO `user_submission_favorites` (`id`, `UserId`, `SubmissionID`) VALUES
(2, 2, 11492),
(3, 2, 11491),
(4, 2, 11490),
(5, 2, 11489),
(7, 2, 11488),
(8, 2, 11487);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`LogId`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`MediaId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `brain_storming`
--
ALTER TABLE `brain_storming`
  ADD PRIMARY KEY (`BrainStormingId`),
  ADD KEY `BrainStormingType` (`BrainStormingType`);

--
-- Indexes for table `brain_storming_answers`
--
ALTER TABLE `brain_storming_answers`
  ADD PRIMARY KEY (`BSAnswerId`),
  ADD KEY `BrainStormingId` (`BrainStormingId`);

--
-- Indexes for table `brain_storming_options`
--
ALTER TABLE `brain_storming_options`
  ADD PRIMARY KEY (`BSOptionId`);

--
-- Indexes for table `brain_storming_types`
--
ALTER TABLE `brain_storming_types`
  ADD PRIMARY KEY (`BSTypeId`);

--
-- Indexes for table `campaign`
--
ALTER TABLE `campaign`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CatId`),
  ADD KEY `CatDepId` (`CatDepId`);

--
-- Indexes for table `category_questions`
--
ALTER TABLE `category_questions`
  ADD PRIMARY KEY (`CatQuestionId`);

--
-- Indexes for table `codes`
--
ALTER TABLE `codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepId`);

--
-- Indexes for table `email_notifications`
--
ALTER TABLE `email_notifications`
  ADD PRIMARY KEY (`EmailNotificationId`);

--
-- Indexes for table `email_notifications_types`
--
ALTER TABLE `email_notifications_types`
  ADD PRIMARY KEY (`SubjectId`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`FaqId`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`LabId`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`LanguageId`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`MenuId`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`ModuleId`),
  ADD KEY `ModuleId` (`ModuleId`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`nat_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`PageId`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`PermissionId`);

--
-- Indexes for table `pressreleases`
--
ALTER TABLE `pressreleases`
  ADD PRIMARY KEY (`NewsId`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleId`);

--
-- Indexes for table `role_permissions_map`
--
ALTER TABLE `role_permissions_map`
  ADD PRIMARY KEY (`RolePermissionId`);

--
-- Indexes for table `role_status_map`
--
ALTER TABLE `role_status_map`
  ADD PRIMARY KEY (`RoleStatusId`),
  ADD KEY `RoleId` (`RoleId`),
  ADD KEY `StatusId` (`StatusId`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`SliderId`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`StatusId`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`StoryId`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`SubId`);

--
-- Indexes for table `submission_categories`
--
ALTER TABLE `submission_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_status_map`
--
ALTER TABLE `submission_status_map`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `submission_tags`
--
ALTER TABLE `submission_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submission_types`
--
ALTER TABLE `submission_types`
  ADD PRIMARY KEY (`SubtId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`TagId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `UserEmail` (`UserEmail`),
  ADD KEY `RoleId` (`RoleId`),
  ADD KEY `UserDepId` (`UserDepId`),
  ADD KEY `IsComplete` (`IsComplete`);

--
-- Indexes for table `user_submission_favorites`
--
ALTER TABLE `user_submission_favorites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `LogId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `MediaId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
--
-- AUTO_INCREMENT for table `brain_storming`
--
ALTER TABLE `brain_storming`
  MODIFY `BrainStormingId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brain_storming_answers`
--
ALTER TABLE `brain_storming_answers`
  MODIFY `BSAnswerId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brain_storming_options`
--
ALTER TABLE `brain_storming_options`
  MODIFY `BSOptionId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brain_storming_types`
--
ALTER TABLE `brain_storming_types`
  MODIFY `BSTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `campaign`
--
ALTER TABLE `campaign`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CatId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `category_questions`
--
ALTER TABLE `category_questions`
  MODIFY `CatQuestionId` bigint(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `codes`
--
ALTER TABLE `codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `email_notifications`
--
ALTER TABLE `email_notifications`
  MODIFY `EmailNotificationId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `email_notifications_types`
--
ALTER TABLE `email_notifications_types`
  MODIFY `SubjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `FaqId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `LabId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `MenuId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `nat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `PageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pressreleases`
--
ALTER TABLE `pressreleases`
  MODIFY `NewsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `role_status_map`
--
ALTER TABLE `role_status_map`
  MODIFY `RoleStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `SliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `StoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `submission_categories`
--
ALTER TABLE `submission_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `submission_status_map`
--
ALTER TABLE `submission_status_map`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `submission_tags`
--
ALTER TABLE `submission_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `submission_types`
--
ALTER TABLE `submission_types`
  MODIFY `SubtId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `TagId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_submission_favorites`
--
ALTER TABLE `user_submission_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
