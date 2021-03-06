<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">

<head>
<link href="./css/bootstrap.css" rel="stylesheet">  
<title>Easy EMR - Admin</title>
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
			<div style="float: right">
			<h:form>
						<p><h:commandLink tabindex="-1" action="#{loginBean.logout}">Log out</h:commandLink></p>
						<p><h:commandLink tabindex="-2" action="#{userService.switchToUpdateInfo}">Change My Password</h:commandLink></p>

				</h:form>
			</div>
			
		</div>
<br><br>
<br><br>
<br><br>
		
			<div class="well container span6 center">
				<fieldset class="admin">
					<h2>Find User</h2>
					<h:form>
						<h:commandButton value="Display All Users"
							action="#{userService.displayAllUsers }" /><br><br>
						<center>
							<table>
								<tr>
									<td><h:outputLabel value="Username: "></h:outputLabel></td>
									<td><h:inputText value="#{userService.searchUsername}">
										</h:inputText></td>
								</tr>
								<tr>
									<td><h:outputLabel value="First Name: "></h:outputLabel></td>
									<td><h:inputText value="#{userService.searchFirst}"></h:inputText></td>
								</tr>
								<tr>
									<td><h:outputLabel value="Last Name: "></h:outputLabel></td>
									<td><h:inputText value="#{userService.searchLast}"></h:inputText></td>
								</tr>
																
							</table>
									<h:commandButton value="Search" action="#{userService.searchUser}"></h:commandButton>
							
						</center>
					</h:form>
				</fieldset>

				<fieldset class="admin">
					<h2>Add / Update User</h2>
					<h:form>
						<center>
								<h:message style="color:red" for="firstName"> </h:message>								
								<h:message style="color:red" for="lastName"> </h:message>
								<h:message style="color:red" for="username"> </h:message>
								<h:message style="color:red" for="password"> </h:message>								
								<h:message style="color:red" for="addrole"> </h:message>
								
							<h:panelGrid columns="3">

								<h:outputLabel value="* First Name: "></h:outputLabel>
								<h:inputText id="firstName" value="#{userService.newUser.firstName}" required="true"></h:inputText>
								
								<br>							
								
								<h:outputLabel value="* Last Name: "></h:outputLabel>
								<h:inputText id="lastName" value="#{userService.newUser.lastName}" required="true"></h:inputText>
								<br>
								
								<h:outputLabel value="* Username: "></h:outputLabel>
								<h:inputText id="username" value="#{userService.newUser.username}" required="true"></h:inputText>
								<br>
								
								<h:outputLabel value="* Password: "></h:outputLabel>
								<h:inputSecret id="password" value="#{userService.newUser.password}" required="true"></h:inputSecret>
								<br>
								
								<h:outputLabel value="* Role: "></h:outputLabel>
								<h:selectOneMenu id="addrole" value="#{userService.newUser.roles}" required="true">
									<f:selectItem itemValue="Medical Student" itemLabel="Medical Student" />
									<f:selectItem itemValue="Pharmacist" itemLabel="Pharmacist" />
									<f:selectItem itemValue="Researcher" itemLabel="Researcher" />
									<f:selectItem itemValue="System Administrator" itemLabel="Admin" />
								</h:selectOneMenu>						
								<br>
								
								<h:commandButton value="Add a new user" action="#{userService.createUser}" rendered="#{userService.creating}"></h:commandButton>
								<h:commandButton value="Update User" action="#{userService.updateUser }"></h:commandButton>
								<h:commandButton value="Cancel" action="#{userService.resetFields }" immediate="true"></h:commandButton>
							</h:panelGrid>
						</center> 
					</h:form>
				</fieldset>
			</div>
			<BR>
			<center>
				<p>
					<a href="HelpInformation.pdf">Need Help?</a>
				</p>
			</center>
	</f:view>
</body>

</html>


