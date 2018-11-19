<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

@charset "UTF-8";
.board_top:after {
	content: '';
	display: block;
	height: 0;
	clear: both
}

.board_top_left {
	float: left;
}

.board_top_right {
	float: right
}

.board_top_left .ts_box {
	vertical-align: bottom;
	display: table-cell;
	height: 38px;
	font-weight: bold;
	font-size: 0.875em;
	color: #313131;
}

<!--
//////////////////////////////////////////////////////////////////////////////////////
-->
.board_top_left .ts_box .total {
	font-weight: bold;
	font-size: 0.875em;
	color: #313131;
}

.bsch_box input[type="text"] {
	border: 1px solid #c3c6d0;
	height: 36px;
	width: 240px;
	margin-right: 4px;
}

.bsch_box select {
	border: 1px solid #c3c6d0;
	height: 38px;
	min-width: 88px;
	margin-right: 4px;
	width: auto;
}

.btn_bsch {
	padding: 0 11px;
	background-color: #777;
	color: #fff;
	border: none;
	height: 38px;
	font-size: 0.875em;
	vertical-align: middle;
	cursor: pointer;
	font-weight: bold;
}
/*------------------------------------------------------------*/
ul, li{
    -webkit-padding-start: 0px;
}
p{
    margin-top: 0px;
    margin-bottom: 0px;
}
.menulist {
	list-style: none;
	padding-left: 0;
	vertical-align: middle;
}

.menulist>li ul.theader li {
	padding-top:10px;
	padding-bottom:10px;
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
	border-right: 1px solid #ffffff;
	
}

.menulist>li ul.theader li:nth-child(1) {
	display: inline-block;
	vertical-align: middle;
	width: 10%;
	text-align: center;
}

.menulist>li ul.theader li:nth-child(2) {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width: 65%;
}

.menulist>li ul.theader li:nth-child(3) {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width:10%;
}

.menulist>li ul.theader li:nth-child(4) {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width: 10%;
}

.menulist>li ul.theader li p {
	font-size: 15px;
	line-height: 10px;
	font-weight: bold;
}

li.notice {
	color: #fe6e17;
	font-weight: bold;
}

.menulist>li ul.theader {
	border-top: 1px solid #333;
	border-bottom: 2px solid #333;
}
.menulist>li ul.col{
	width:100%;
	}
.menulist>li ul.col-5 li {
	padding-top:15px;
	padding-bottom:15px;
	font-size : 14px;
	border-bottom: 1px solid #e1e1e1;
	background-color: #ffffff;
}

.menulist>li ul.col-5 li:nth-child(1) {
	display: inline-block;
	vertical-align: middle;
	width: 10%;
	text-align: center;
}

.menulist>li ul.col-5 li:nth-child(2) {
	text-align: left;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
	display: inline-block;
	vertical-align: middle;
	width: 65%;
}

.menulist>li ul.col-5 li:nth-child(3) {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width:10%;
}

.menulist>li ul.col-5 li:nth-child(4) {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	width:10%;
}

.btnbox_basic_right {
	margin-top: 15px;
	float: right;
	text-align: right;
}

.btn_basic {
	display: table-cell;
	vertical-align: middle;
	padding: 0 24px;
	height: 36px;
	color: #222;
	border: 1px c #222;
	font-weight: bold;
}
</style>
</head>
<body>
</body>
</html>