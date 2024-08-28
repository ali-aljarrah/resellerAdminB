<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Head.ascx.cs" Inherits="resellerAdminB.Controls.Head" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<!--begin::Head-->
<head>
<style>
     .loader,.loader.show{transition:.4s ease-in-out}.loader{position:fixed;left:0;right:0;top:0;bottom:0;background:#fff;opacity:0;visibility:hidden;display:flex;justify-content:center;align-items:center}.loader.show{z-index:999;opacity:1;visibility:visible}.loader-icon{width:48px;height:48px;border-radius:50%;display:inline-block;position:relative;border:10px solid;border-color:rgba(133,133,133,.15) rgba(133,133,133,.25) rgba(133,133,133,.35) rgba(133,133,133,.5);box-sizing:border-box;animation:1s linear infinite rotation}@keyframes rotation{0%{transform:rotate(0)}100%{transform:rotate(360deg)}} 
 </style>
 <meta charset="utf-8" />
 <meta name="wport" content="width=device-width, initial-scale=1" />
 <script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
 <link href="../assets/css/font.css" rel="stylesheet" />
 <link href="../assets/plugins/custom/datatables/datatables.bundle.css" rel="stylesheet" />
 <link href="../assets/plugins/global/plugins.bundle.css" rel="stylesheet" />
 <link href="../assets/css/style.bundle.css" rel="stylesheet" />
 <link href="../assets/css/custom.css" rel="stylesheet" />