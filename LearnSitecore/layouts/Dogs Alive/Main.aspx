<%@ page language="c#" codepage="65001" autoeventwireup="true" %>

<%@ register tagprefix="sc" namespace="Sitecore.Web.UI.WebControls" assembly="Sitecore.Kernel" %>
<%@ outputcache location="None" varybyparam="none" %>
<!DOCTYPE html>
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link href="../../favicon.ico" rel="icon" />
    <title>Dogs Alive</title>

    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/jumbotron.css" rel="stylesheet" />
    <link href="/css/dogsalive.css" rel="stylesheet" />

    <!-- Just for debugging purpouses... Dont actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <sc:visitoridentification runat="server" />
</head>
<body>
    <form method="post" runat="server" id="mainform">
        <div>
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="padding-top: 80px">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">Dogs Alive</a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Donate <span class="sr-only">(current)</span></a></li>
                            <li><a href="#">Adopt</a></li>
                            <li><a href="#">Volunteer</a></li>

                            <li><a href="#">Learn</a></li>
                        </ul>
                    </div>

                </div>
            </nav>

            <div class="section-detail section">
                <div class="container">

                    <!-- YOUR COMPONENTS HERE -->
                    <sc:placeholder key="pagebody" runat="server" />
                                       
                </div>
            </div>

            <footer>
                <p>&copy; Company 2018</p>
            </footer>
        </div>

    </form>
</body>
</html>
