<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
<title>Insert title here</title>
</head>
<body>
	

	 <div id="signupbox" style="margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                        <div><h2>Witaj Admin</h2></div>
                            <div class="panel-title">Załóż konto</div>
                           
                        </div>  
                        <div class="panel-body" >
                          
                          
                          
                            <form:form method="post" modelAttribute="user2" class="form-horizontal" role="form">    
                            
                            
                            
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="umowa" class="col-md-3 control-label">Umowa do:</label>
                                    <div class="col-md-9">
                                    	<form:input path="umowa" class="form-control" placeholder="umowa do:"/> 
                                         
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="badania" class="col-md-3 control-label">Data następnych badań</label>
                                    <div class="col-md-9">
                                        <form:input path="badania" class="form-control" placeholder="badania do:"/>
                                        
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="wymiar_urlopu" class="col-md-3 control-label">Wymiar urlopu:</label>
                                    <div class="col-md-9">
                                       <form:input path="wymiar_urlopu" class="form-control" placeholder="wymiar urlopu:"/>
                                       
                                    </div>
                                </div>
                               
                                <div class="form-group">
                                    <label for="opieka" class="col-md-3 control-label">Rola użytkownika</label>
                                    <div class="col-md-9">
                                    
                                       
                                       <select name="opieka" class="form-control">
									
									<option value="1">Tak</option>
									<option value="2">Nie</option>
									</select>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="defaultHour" class="col-md-3 control-label">Dzienna norma pracy:</label>
                                    <div class="col-md-9">
                                       <form:input path="defaultHour" class="form-control" placeholder="dzienna norma pracy:"/>
                                       
                                    </div>
                                </div>
									
                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <input type="submit" class="btn btn-success" value="Załóż konto">
                                        <span style="margin:8px;">or</span> 
                                        <a href="<c:url value = "/user_logged/admin/"/>" class="btn btn-primary">Wróć</a> 
                                    </div>
                                </div>
                                
                                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">
                                    
                                                         
                                        
                                </div>
                                
                                
                                
                            </form:form>
                         </div>
                    </div>

               
               
                
         </div> 
</body>
</html>