
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>
Just Fast Delivery service 
</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<link href="/JustFast/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/JustFast/assets/css/style.css" rel="stylesheet">
<link href="/JustFast/assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
</head>

<body class="connecter">
 


<jsp:include page="common/nav.jsp">
            <jsp:param name="active" value="commander"></jsp:param>
        </jsp:include>

<br><br><br><br><br>



<div class="container">
	<div class="row">
		<div class="col-xs-12 col-md-6 col-md-offset-3">
			<h2>Veuillez confirmer votre commande</h2>
			<table><tr>
			<td><div class="form-group string required user_user_preference_last_name">
                                
					<label class="string required control-label">Colis</label>
                            </div></td><td width="25%"></td><td>  <%=request.getParameter("objet") %>    </td></tr><tr>
                                
                                
					<td><div class="form-group string required user_user_preference_last_name">
					<label class="string required control-label">Description</label>
					</div></td><td width="25%"></td><td><%=request.getParameter("description") %> </td></tr><tr>
					<td><div class="form-group string required user_user_preference_last_name">
					
                                                
                                                <label class="string required control-label">Lieu de depart</label>
					</div></td><td width="25%"></td><td><%=request.getParameter("depart") %></td></tr><tr>
					<td><div class="form-group string required user_user_preference_last_name">
					
                                                
                                                <label class="string required control-label">Lieu d'arrivee</label>
					</div></td><td width="25%"></td><td><%=request.getParameter("arrive") %></td></tr><tr>
					<td><div class="form-group string required user_user_preference_last_name">
					
                                                
                                                <label class="string required control-label">A livrer de préférence avant le</label>
					</div></td><td width="25%"></td><td><%=request.getParameter("avant") %></td></tr><tr>
					<td><div class="form-group string required user_user_preference_last_name">
					<label class="string required control-label">Poids</label>
					</div></td><td width="25%"></td><td><%=request.getParameter("distance") %></td></tr><tr>
			<td><div class="form-group string required user_user_preference_last_name">
					<label class="string required control-label"><h3><font color="black">Prix estime</font></h3></label>
					</div></td><td width="25%"></td><td>resultat</td></tr></table>
			<br>
				<div class="form-group pull-right">
					<input type="submit" name="commit" value="Confirmer" class="btn btn-success btn-lg">
				</div>
		</div>

