<html>
  <head>
    <meta name="layout" content="main" />
    <title>Dataset</title>         
  </head>
  <body>
    	<g:if test="${session.user}">
    		<h1>Datasets:</h1>
    		
    		<br>
    		
    		<table class="table table-hover">
			  <tr class="active">
			    <td>Dataset</td> 
			    <td>Constraint</td>
			    <td>Master Agent</td>
			    <td>Master Dataset</td>
			    <td>Operations</td>
			  </tr>
			  <g:each in="${datasets}" var="dataset" >
			  		<tr>
	                    <td><p>${dataset.datasetName}</p></td>
	                    <td><p>${dataset.conName}</p></td>
	                    <td><p>${dataset.masterAgent}</p></td>
	                    <td><p>${dataset.masterDataset}</p></td>
	                    <td>
		                    <g:form controller="dataset" action="datasetManagement" method="POST">
		                    	<input name="dataset" type="text" value="${dataset.datasetName}" hidden>
		                    	<input name="con" type="text" value="${dataset.conName}" hidden>
		                    	<input name="masterAgent" type="text" value="${dataset.masterAgent}" hidden>
		                    	<input name="masterDataset" type="text" value="${datasetmasterDataset}" hidden>
		                    	
		                    	<input type="submit" class="btn btn-primary" name="func" value="Violation Detection">
			                    <input type="submit" class="btn btn-success" name="func" value="Clean Data">
			                    <input type="submit" class="btn btn-danger" name="func" value="Delete Data">
		                    </g:form>
	                    </td>
                	</tr>
               </g:each>
			</table>
			
			<button type="button" onclick="location.href='uploadTargetDataset'" class="btn btn-success">Upload Dataset</button>
			
    	</g:if>
    	<g:else>
    		<h1>Please login first!</h1>
    	</g:else>
    	
    	<g:if test="${flash.message}">
        	<div class="message">${flash.message}</div>
      	</g:if>
      
  </body>
</html>