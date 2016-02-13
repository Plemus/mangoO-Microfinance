-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `custmarried`

CREATE TABLE IF NOT EXISTS `custmarried` (
`custmarried_id` int(11) NOT NULL,
  `custmarried_status` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `custmarried`

INSERT INTO `custmarried` (`custmarried_id`, `custmarried_status`) VALUES
(0, 'N/A'),
(1, 'Single'),
(2, 'Married'),
(3, 'Widowed');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `customer`

CREATE TABLE IF NOT EXISTS `customer` (
`cust_id` int(11) NOT NULL,
  `cust_no` varchar(20) DEFAULT NULL,
  `cust_name` varchar(75) DEFAULT NULL,
  `cust_dob` int(15) DEFAULT NULL,
  `custsex_id` int(1) DEFAULT NULL,
  `cust_address` varchar(100) DEFAULT NULL,
  `cust_phone` varchar(50) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `cust_occup` varchar(50) DEFAULT NULL,
  `custmarried_id` int(5) DEFAULT NULL,
  `cust_heir` varchar(50) DEFAULT NULL,
  `cust_heirrel` varchar(25) DEFAULT NULL,
  `cust_lengthres` int(11) DEFAULT NULL,
  `cust_since` int(15) DEFAULT NULL,
  `custsick_id` int(8) DEFAULT NULL,
  `cust_lastsub` int(15) DEFAULT NULL,
  `cust_active` int(1) DEFAULT NULL,
  `cust_lastupd` int(11) DEFAULT NULL,
  `cust_pic` varchar(100) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Daten für Tabelle `customer`

INSERT INTO `customer` (`cust_id`, `cust_no`, `cust_name`, `cust_dob`, `custsex_id`, `cust_address`, `cust_phone`, `cust_email`, `cust_occup`, `custmarried_id`, `cust_heir`, `cust_heirrel`, `cust_lengthres`, `cust_since`, `custsick_id`, `cust_lastsub`, `cust_active`, `cust_lastupd`, `cust_pic`, `user_id`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `custsex`

CREATE TABLE IF NOT EXISTS `custsex` (
`custsex_id` int(11) NOT NULL,
  `custsex_name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `custsex`

INSERT INTO `custsex` (`custsex_id`, `custsex_name`) VALUES
(1, 'Male'),
(2, 'Female'),
(3, 'Couple'),
(4, 'Family'),
(5, 'Group'),
(6, 'Institution'),
(7, 'Business');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `custsick`

CREATE TABLE IF NOT EXISTS `custsick` (
`custsick_id` int(11) NOT NULL,
  `custsick_name` varchar(50) NOT NULL,
  `custsick_risk` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `custsick`

INSERT INTO `custsick` (`custsick_id`, `custsick_name`, `custsick_risk`) VALUES
(0, 'None', 0),
(1, 'Heart Attack', 1),
(2, 'Stroke', 1),
(3, 'Cancer', 3),
(4, 'HIV/AIDS', 3),
(5, 'Ulcer', 1);

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `expenses`

CREATE TABLE IF NOT EXISTS `expenses` (
`exp_id` int(11) NOT NULL,
  `cust_id` int(6) DEFAULT NULL,
  `exptype_id` int(11) NOT NULL,
  `exp_amount` int(11) NOT NULL,
  `exp_date` int(15) DEFAULT NULL,
  `exp_text` varchar(100) DEFAULT NULL,
  `exp_recipient` varchar(75) DEFAULT NULL,
  `exp_receipt` int(11) DEFAULT NULL,
  `exp_voucher` int(11) DEFAULT NULL,
  `exp_created` int(11) DEFAULT NULL,
  `user_id` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `exptype`

CREATE TABLE IF NOT EXISTS `exptype` (
`exptype_id` int(11) NOT NULL,
  `exptype_type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `exptype`

INSERT INTO `exptype` (`exptype_id`, `exptype_type`) VALUES
(1, 'Airtime'),
(2, 'Bank Charges'),
(3, 'Committee Welfare'),
(4, 'Electricity'),
(5, 'Gifts'),
(6, 'Internet'),
(7, 'IT'),
(8, 'Motorcycle'),
(9, 'Office Space'),
(10, 'Petty Cash'),
(11, 'Rent'),
(12, 'Staff Facilitation'),
(13, 'Staff Welfare'),
(14, 'Stationary'),
(15, 'Tax'),
(16, 'Transport'),
(17, 'Insurance'),
(18, 'Annual Share Dividend'),
(19, 'Annual Savings Interest');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `fees`

CREATE TABLE IF NOT EXISTS `fees` (
`fee_id` int(11) NOT NULL,
  `fee_name` varchar(50) NOT NULL,
  `fee_short` varchar(5) NOT NULL,
  `fee_value` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `fees`

INSERT INTO `fees` (`fee_id`, `fee_name`, `fee_short`, `fee_value`) VALUES
(1, 'Entry Fee', 'EF', 10000),
(2, 'Withdrawal Fee', 'WF', 1000),
(3, 'Stationary Sales', 'StS', 2000),
(4, 'Anual Subscription', 'ASub', 5000),
(5, 'Loan Fee', 'LF', 1),
(6, 'Loan Application Fee', 'LAF', 10000),
(7, 'Loan Fine', 'LFine', 15000),
(8, 'Loan Interest Rate', 'LIR', 4);

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `incomes`

CREATE TABLE IF NOT EXISTS `incomes` (
`inc_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `inctype_id` int(11) NOT NULL,
  `inc_amount` int(11) NOT NULL,
  `inc_date` int(15) NOT NULL,
  `inc_receipt` int(11) NOT NULL,
  `inc_text` varchar(200) NOT NULL,
  `inc_created` int(11) NOT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `inctype`

CREATE TABLE IF NOT EXISTS `inctype` (
`inctype_id` int(11) NOT NULL,
  `inctype_type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `inctype`

INSERT INTO `inctype` (`inctype_id`, `inctype_type`) VALUES
(1, 'Entrance Fee'),
(2, 'Withdrawal Fee'),
(3, 'Loan Fee'),
(4, 'Interest'),
(5, 'Loan Default Fines'),
(6, 'Stationary Sales'),
(7, 'Loan Application Fee'),
(8, 'Subscription Fee'),
(9, 'Other'),
(10, 'Insurance');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `loans`

CREATE TABLE IF NOT EXISTS `loans` (
`loan_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `loanstatus_id` int(11) NOT NULL,
  `loan_no` varchar(20) NOT NULL,
  `loan_date` int(15) NOT NULL,
  `loan_dateout` int(11) NOT NULL,
  `loan_issued` int(2) NOT NULL,
  `loan_principal` int(11) NOT NULL,
  `loan_interest` float NOT NULL,
  `cur_id` int(11) DEFAULT NULL,
  `loan_appfee_receipt` int(11) NOT NULL,
  `loan_fee` int(11) NOT NULL,
  `loan_fee_receipt` int(11) NOT NULL,
  `loan_rate` decimal(11,0) NOT NULL,
  `loan_period` int(11) NOT NULL,
  `loan_repaytotal` int(11) NOT NULL,
  `loan_repaystart` int(11) NOT NULL,
  `loan_purpose` varchar(250) NOT NULL,
  `loan_sec1` varchar(250) NOT NULL,
  `loan_sec2` varchar(250) NOT NULL,
  `loan_guarant1` int(11) NOT NULL,
  `loan_guarant2` int(11) NOT NULL,
  `loan_guarant3` int(11) NOT NULL,
  `loan_feepaid` int(1) NOT NULL DEFAULT '0',
  `loan_created` int(15) DEFAULT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `loanstatus`

CREATE TABLE IF NOT EXISTS `loanstatus` (
`loanstatus_id` int(11) NOT NULL,
  `loanstatus_status` varchar(50) NOT NULL,
  `loanstatus_short` varchar(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `loanstatus`

INSERT INTO `loanstatus` (`loanstatus_id`, `loanstatus_status`, `loanstatus_short`) VALUES
(1, 'Pending', 'PEN'),
(2, 'Approved', 'APP'),
(3, 'Refused', 'REF'),
(4, 'Abandoned', 'ABN'),
(5, 'Cleared', 'CLR');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `logrec`

CREATE TABLE IF NOT EXISTS `logrec` (
`logrec_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `logrec_start` int(11) DEFAULT NULL,
  `logrec_end` int(11) DEFAULT NULL,
  `logrec_logout` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `ltrans`

CREATE TABLE IF NOT EXISTS `ltrans` (
`ltrans_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `ltrans_due` int(11) DEFAULT NULL,
  `ltrans_date` int(15) DEFAULT NULL,
  `ltrans_principaldue` int(11) DEFAULT NULL,
  `ltrans_principal` int(15) DEFAULT NULL,
  `ltrans_interestdue` int(11) DEFAULT NULL,
  `ltrans_interest` int(11) DEFAULT NULL,
  `ltrans_fined` int(1) NOT NULL DEFAULT '0',
  `ltrans_receipt` int(11) DEFAULT NULL,
  `ltrans_created` int(15) DEFAULT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `savings`

CREATE TABLE IF NOT EXISTS `savings` (
`sav_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `sav_date` int(15) NOT NULL,
  `sav_amount` int(15) NOT NULL DEFAULT '0',
  `cur_id` int(11) NOT NULL,
  `savtype_id` int(11) NOT NULL,
  `sav_receipt` int(11) DEFAULT NULL,
  `sav_slip` int(10) NOT NULL,
  `sav_created` int(15) DEFAULT NULL,
  `user_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `savtype`

CREATE TABLE IF NOT EXISTS `savtype` (
`savtype_id` int(11) NOT NULL,
  `savtype_type` varchar(20) NOT NULL,
  `savtype_short` varchar(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `savtype`

INSERT INTO `savtype` (`savtype_id`, `savtype_type`, `savtype_short`) VALUES
(1, 'Deposit', 'D'),
(2, 'Withdrawal', 'W'),
(3, 'Savings Interest', 'I'),
(4, 'W/drawal Fee', 'F_W'),
(5, 'Subscription Fee', 'F_S'),
(6, 'Loan Default Fine', 'LDF'),
(7, 'Loan Fee', 'F_L'),
(8, 'Loan Repayment', 'LR'),
(9, 'Share Dividend', 'SHD');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `securities`

CREATE TABLE IF NOT EXISTS `securities` (
`sec_id` int(11) NOT NULL,
  `cust_id` int(8) NOT NULL,
  `loan_id` int(8) NOT NULL,
  `sec_no` varchar(50) NOT NULL,
  `sec_name` varchar(100) NOT NULL,
  `sec_value` int(11) NOT NULL,
  `sec_path` varchar(200) NOT NULL,
  `sec_returned` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `settings`

CREATE TABLE IF NOT EXISTS `settings` (
`set_id` int(11) NOT NULL,
  `set_name` varchar(100) NOT NULL,
  `set_short` varchar(8) NOT NULL,
  `set_value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `settings`

INSERT INTO `settings` (`set_id`, `set_name`, `set_short`, `set_value`) VALUES
(1, 'Minimum Savings Balance', 'MSB', '10000'),
(2, 'Minimum Loan Principal', 'MinLP', '500000'),
(3, 'Maximum Loan Principal', 'MaxLP', '10000000'),
(4, 'Currency Abbreviation', 'CUR', 'UGX'),
(5, 'Auto-fine Defaulters', 'AUF', ''),
(6, 'Account Deactivation', 'DEACT', ''),
(7, 'Dashboard Left', 'DashL', 'dashboard/dash_subscr.php'),
(8, 'Dashboard Right', 'DashR', 'dashboard/dash_loandefaults.php'),
(9, 'Interest Calculation', 'IntCALC', 'modules/mod_inter_float.php'),
(10, 'Guarantor Limit', 'MaxGuar', '3'),
(11, 'Minimum Membership', 'MinMemb', '4'),
(12, 'Maximum Principal-Savings Ratio', 'MaxPSR', '500');

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `shares`

CREATE TABLE IF NOT EXISTS `shares` (
`share_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `share_date` int(11) NOT NULL,
  `share_amount` int(11) NOT NULL,
  `share_value` int(11) NOT NULL,
  `share_receipt` int(11) NOT NULL,
  `share_trans` int(2) NOT NULL,
  `share_transfrom` int(11) DEFAULT NULL,
  `share_created` int(15) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `shareval`

CREATE TABLE IF NOT EXISTS `shareval` (
`shareval_id` int(11) NOT NULL,
  `shareval_date` int(11) NOT NULL,
  `shareval_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `ugroup`

CREATE TABLE IF NOT EXISTS `ugroup` (
`ugroup_id` int(11) NOT NULL,
  `ugroup_name` varchar(100) NOT NULL,
  `ugroup_admin` int(11) NOT NULL,
  `ugroup_delete` int(2) NOT NULL,
  `ugroup_report` int(11) NOT NULL,
  `ugroup_created` int(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Daten für Tabelle `ugroup`

INSERT INTO `ugroup` (`ugroup_id`, `ugroup_name`, `ugroup_admin`, `ugroup_delete`, `ugroup_report`, `ugroup_created`) VALUES
(1, 'Administrator', 1, 1, 1, 0);

-- ------------------------------------------------------
-- Tabellenstruktur für Tabelle `user`

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_pw` varchar(200) NOT NULL,
  `ugroup_id` int(11) NOT NULL,
  `user_created` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Indizes der exportierten Tabellen

-- Indizes für die Tabelle `custmarried`
ALTER TABLE `custmarried`
 ADD PRIMARY KEY (`custmarried_id`);

-- Indizes für die Tabelle `customer`
ALTER TABLE `customer`
 ADD PRIMARY KEY (`cust_id`);

-- Indizes für die Tabelle `custsex`
ALTER TABLE `custsex`
 ADD PRIMARY KEY (`custsex_id`);

-- Indizes für die Tabelle `custsick`
ALTER TABLE `custsick`
 ADD PRIMARY KEY (`custsick_id`);

-- Indizes für die Tabelle `expenses`
ALTER TABLE `expenses`
 ADD PRIMARY KEY (`exp_id`);

-- Indizes für die Tabelle `exptype`
ALTER TABLE `exptype`
 ADD PRIMARY KEY (`exptype_id`);

-- Indizes für die Tabelle `fees`
ALTER TABLE `fees`
 ADD PRIMARY KEY (`fee_id`);

-- Indizes für die Tabelle `incomes`
ALTER TABLE `incomes`
 ADD PRIMARY KEY (`inc_id`);

-- Indizes für die Tabelle `inctype`
ALTER TABLE `inctype`
 ADD PRIMARY KEY (`inctype_id`);

-- Indizes für die Tabelle `loans`
ALTER TABLE `loans`
 ADD PRIMARY KEY (`loan_id`);

-- Indizes für die Tabelle `loanstatus`
ALTER TABLE `loanstatus`
 ADD PRIMARY KEY (`loanstatus_id`);

-- Indizes für die Tabelle `logrec`
ALTER TABLE `logrec`
 ADD PRIMARY KEY (`logrec_id`);

-- Indizes für die Tabelle `ltrans`
ALTER TABLE `ltrans`
 ADD PRIMARY KEY (`ltrans_id`);

-- Indizes für die Tabelle `savings`
ALTER TABLE `savings`
 ADD PRIMARY KEY (`sav_id`);

-- Indizes für die Tabelle `savtype`
ALTER TABLE `savtype`
 ADD PRIMARY KEY (`savtype_id`);

-- Indizes für die Tabelle `securities`
ALTER TABLE `securities`
 ADD PRIMARY KEY (`sec_id`);

-- Indizes für die Tabelle `settings`
ALTER TABLE `settings`
 ADD PRIMARY KEY (`set_id`);

-- Indizes für die Tabelle `shares`
ALTER TABLE `shares`
 ADD PRIMARY KEY (`share_id`);

-- Indizes für die Tabelle `shareval`
ALTER TABLE `shareval`
 ADD PRIMARY KEY (`shareval_id`);

-- Indizes für die Tabelle `ugroup`
ALTER TABLE `ugroup`
 ADD PRIMARY KEY (`ugroup_id`);

-- Indizes für die Tabelle `user`
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

-- AUTO_INCREMENT für exportierte Tabellen

-- AUTO_INCREMENT für Tabelle `custmarried`
ALTER TABLE `custmarried`
MODIFY `custmarried_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
-- AUTO_INCREMENT für Tabelle `customer`
ALTER TABLE `customer`
MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `custsex`
ALTER TABLE `custsex`
MODIFY `custsex_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
-- AUTO_INCREMENT für Tabelle `custsick`
ALTER TABLE `custsick`
MODIFY `custsick_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
-- AUTO_INCREMENT für Tabelle `expenses`
ALTER TABLE `expenses`
MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `exptype`
ALTER TABLE `exptype`
MODIFY `exptype_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
-- AUTO_INCREMENT für Tabelle `fees`
ALTER TABLE `fees`
MODIFY `fee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
-- AUTO_INCREMENT für Tabelle `incomes`
ALTER TABLE `incomes`
MODIFY `inc_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `inctype`
ALTER TABLE `inctype`
MODIFY `inctype_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
-- AUTO_INCREMENT für Tabelle `loans`
ALTER TABLE `loans`
MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `loanstatus`
ALTER TABLE `loanstatus`
MODIFY `loanstatus_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
-- AUTO_INCREMENT für Tabelle `logrec`
ALTER TABLE `logrec`
MODIFY `logrec_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `ltrans`
ALTER TABLE `ltrans`
MODIFY `ltrans_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `savings`
ALTER TABLE `savings`
MODIFY `sav_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `savtype`
ALTER TABLE `savtype`
MODIFY `savtype_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
-- AUTO_INCREMENT für Tabelle `securities`
ALTER TABLE `securities`
MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `settings`
ALTER TABLE `settings`
MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
-- AUTO_INCREMENT für Tabelle `shares`
ALTER TABLE `shares`
MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `shareval`
ALTER TABLE `shareval`
MODIFY `shareval_id` int(11) NOT NULL AUTO_INCREMENT;
-- AUTO_INCREMENT für Tabelle `ugroup`
ALTER TABLE `ugroup`
MODIFY `ugroup_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
-- AUTO_INCREMENT für Tabelle `user`
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;
-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
--/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
