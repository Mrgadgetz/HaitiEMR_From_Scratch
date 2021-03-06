<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html>
<html lang="en-US">


<head>
	<link href="./css/bootstrap.css" rel="stylesheet">  
	<title>Easy EMR</title>
</head>

<body>

<f:view>
	<div class="navbar navbar-fixed-top center">
	  		<div style="float: left">
  			<p><img src="./img/easyEmr_LOGO.png" height="80" width="110"></p>
  			</div>
	  <div class="navbar-inner"> 

  			   <h5 style="float:left">Hello, <h:outputLabel style="color:red" value="#{loginBean.systemUser.firstName }"/></h5>
  			
  		
        <div class="container-fluid">
                 <h:form>
						<h:commandLink tabindex="-1" action="#{loginBean.logout}"><h5 style="color:red">Log Out</h5></h:commandLink>
						<h:commandLink tabindex="-2" action="#{userService.switchToUpdateInfo}"><h5 style="color:gray">Change My Password</h5></h:commandLink>
				</h:form>
				</div>
			</div>			
	    </div>  				

<br><br>
<br><br>
<br><br>
				
<div class= "container">	
		<div class= "well span6 center">
		<h:form>
			<h1><font color="red">
			<h:outputText value="#{pharmacyEncounterService.encounterIDText }"></h:outputText></font></h1>
			<h5><font color="red"><h:outputText value="#{pharmacyEncounterService.recordIDInstruction }"></h:outputText>
			</font></h5>
			<h:message for="firstName" style="color:red"> </h:message>
			<h:message for="lastName" style="color:red"> </h:message>
			
			<center><h4 style="">Create RX Record</h4></center><br>
			<center>
			<table>
			
			<tr>
				<td><h5>First Name</h5></td>
				<td><h5>Last Name</h5></td>
			</tr>
			
			<tr>
				<td><h:inputText style="width:160px" id="firstName" value="#{pharmacyEncounterService.firstName }" required="true" /></td>
				<td><h:inputText style="width:160px" id="lastName" value="#{pharmacyEncounterService.lastName }" required="true"/></td>
			</tr>
	
			<tr>
				<td><h5>Medication Given</h5></td>
				<td><h5>Same as Prescribed?</h5></td>
			</tr>
			
			<tr>
			<td><h:inputText style="width:160px" id="prescriptionGiven1" value="#{pharmacyEncounterService.medDispensed1 }" /></td>
			<td><h:selectOneMenu style="width:100px" id="equal1" value="#{pharmacyEncounterService.equalPrescribed1 }" title="select any one in this menu">
				<f:selectItem id="Yes1" itemLabel="Yes" itemValue="true" />
				<f:selectItem id="No1" itemLabel="No" itemValue="false" />
				</h:selectOneMenu></td>
			</tr>
			
			<tr>
			<td><h:inputText style="width:160px" id="prescriptionGiven2" value="#{pharmacyEncounterService.medDispensed2 }" /></td>
			<td><h:selectOneMenu style="width:100px" id="equal2" value="#{pharmacyEncounterService.equalPrescribed2 }" title="select any one in this menu">
				<f:selectItem id="Yes2" itemLabel="Yes" itemValue="true" />
				<f:selectItem id="No2" itemLabel="No" itemValue="false" />
				</h:selectOneMenu></td>
			</tr>
				
			<tr>
			<td><h:inputText style="width:160px" id="prescriptionGiven3" value="#{pharmacyEncounterService.medDispensed3 }" /></td>
			<td><h:selectOneMenu style="width:100px" id="equal3" value="#{pharmacyEncounterService.equalPrescribed3 }" title="select any one in this menu">
				<f:selectItem id="Yes3" itemLabel="Yes" itemValue="true" />
				<f:selectItem id="No3" itemLabel="No" itemValue="false" />
				</h:selectOneMenu></td>
			</tr>
			
				
			<tr>
			<td><h:inputText style="width:160px" id="prescriptionGiven4" value="#{pharmacyEncounterService.medDispensed4 }" /></td>
			<td><h:selectOneMenu style="width:100px" id="equal4" value="#{pharmacyEncounterService.equalPrescribed4 }" title="select any one in this menu">
				<f:selectItem id="Yes4" itemLabel="Yes" itemValue="true" />
				<f:selectItem id="No4" itemLabel="No" itemValue="false" />
				</h:selectOneMenu></td>
			</tr>
				
			<tr>
			<td><h:inputText style="width:160px" id="prescriptionGiven5" value="#{pharmacyEncounterService.medDispensed5 }" /></td>
			<td><h:selectOneMenu style="width:100px" id="equal5" value="#{pharmacyEncounterService.equalPrescribed5 }" title="select any one in this menu">
				<f:selectItem id="Yes5" itemLabel="Yes" itemValue="true" />
				<f:selectItem id="No5" itemLabel="No" itemValue="false" />
				</h:selectOneMenu></td>
			</tr>
				
				
			</table>
			</center>
			<BR>
			
		<h:commandButton id="submit"   value="Submit" action="#{pharmacyEncounterService.dataToDatabase }"></h:commandButton>
	</h:form>
		</div>		
	</div>

	<center>

	<a href="HelpInformation.pdf">Need Help?</a>
	</center>
	
</f:view>
</body>
