<!doctype html>
<html lang="en" ng-app="${project.projectName}">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>${project.projectName}</title>
    <link href="styles/bootstrap.css" rel="stylesheet" media="screen">
    <link href="styles/main.css" rel="stylesheet" media="screen">
    <link href="styles/bootstrap-responsive.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="#">${project.projectName}</a>
			</div>
		</div>
	</div>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span3">
                <img src="images/forge-logo.png" alt="JBoss Forge"></img>
                <nav class="well sidebar-nav" ng-controller="NavController">
                    <ul id="sidebar-entries" class="nav nav-list">
                        <#list entityNames as entityName>
                    	<li ng-class="{active: matchesRoute('${entityName}s')}"><a href="#/${entityName}s">${entityName}s</a></li>
                    	</#list>
                    </ul>
                </nav>
            </div>
            <div class="span9">
                <div id="main" class="hero-unit" ng-view>
                </div>
            </div>
        </div>
    </div>
    <script src="scripts/vendor/angular.js"></script>
    <script src="scripts/vendor/angular-resource.js"></script>
    <script src="scripts/app.js"></script>
    <script src="scripts/filters.js"></script>
    <#list entityNames as entityName>
    <script src="scripts/${entityName}/${entityName}.js"></script>
    </#list>
</body>
</html>