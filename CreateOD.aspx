<!DOCTYPE html>
<%@ Page language="C#" %>
<%@ Register Tagprefix="SharePoint" 
     Namespace="Microsoft.SharePoint.WebControls" 
     Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<html>
<head>
<script src="/_layouts/1033/init.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/4.0/1/MicrosoftAjax.js"></script>
    <script src="/_layouts/sp.core.js"></script>
    <script src="/_layouts/sp.runtime.js"></script>
    <script src="/_layouts/sp.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.7.2/angular.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sp-pnp-js/3.0.10/pnp.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.0.0/es6-promise.min.js"></script>									
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fetch/2.0.4/fetch.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/js-polyfills/0.1.42/polyfill.min.js"></script>
    <script type="text/javascript" src="js/createOD.js"</script>
 </head>
<body>
    <form runat="server">
        <SharePoint:FormDigest ID="FormDigest1" runat="server"></SharePoint:FormDigest>
    </form>
    <div class="container">
        <div class="row">
            <h1 class="lead text-primary">OneDrive Link Generator</h1>
            <div ng-app="app" ng-controller="odCtrl">
                <div>
                    <select class="form-control" ng-options="item as item.Title for item in items track by item.Id" ng-model="selected" ng-change="update()">
                    </select>
                    <br/>
                    <div>
                        <textarea readonly rows="5" class="form-control">odopen://sync/?siteId={{siteId}}&amp;webId={{webId}}&amp;listId=%7B{{listId}}%7D&amp;userEmail={{email}}&amp;webUrl={{webUrl}}</textarea>
                        <div class="text-center"><h3>OR</h3></div>
                        <a href="odopen://sync/?siteId={{siteId}}&amp;webId={{webId}}&amp;listId=%7B{{listId}}%7D&amp;userEmail={{email}}&amp;webUrl={{webUrl}}" class="btn btn-lg btn-primary" style="width:100%!important">Sync OneDrive</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>