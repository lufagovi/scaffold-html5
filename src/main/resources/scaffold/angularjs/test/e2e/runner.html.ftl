<!doctype html>
<html lang="en">
  <head>
    <title>End2end Test Runner</title>
    <script src="../lib/angular/angular-scenario.js" ng-autotest></script>
    <#list entityNames as entityName>
    <script src="${entityName}scenarios.js"></script>
    </#list>
  </head>
  <body>
  </body>
</html>
