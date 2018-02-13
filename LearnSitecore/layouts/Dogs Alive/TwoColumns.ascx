<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TwoColumns.ascx.cs" Inherits="LearnSitecore.layouts.Dogs_Alive.TwoColumns" %>
<%@ Register TagPrefix="sc" Namespace="Sitecore.Web.UI.WebControls" Assembly="Sitecore.Kernel" %>

<div class="row">
    <div class="col-md-8">
        <!-- LEFT COL -->   
        <sc:Placeholder runat="server" Key="leftcol"/>    
    </div>
    
    <div class="col-md-4 aside">
        <!-- RIGHT COL -->    
        <sc:Placeholder runat="server" Key="rightcol"/>
    </div>
</div>