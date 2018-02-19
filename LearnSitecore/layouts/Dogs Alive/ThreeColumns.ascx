<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThreeColumns.ascx.cs" Inherits="LearnSitecore.layouts.Dogs_Alive.ThreeColumns" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="row">

    <div class="col-md-2 aside">
        <!-- RIGHT COL -->    
        <sc:Placeholder runat="server" Key="leftcol"/>
    </div>

    <div class="col-md-8">
        <!-- MIDDLE COL -->   
        <sc:Placeholder runat="server" Key="middlecol"/>    
    </div>
    
    <div class="col-md-2 aside">
        <!-- RIGHT COL -->    
        <sc:Placeholder runat="server" Key="rightcol"/>
    </div>
</div>