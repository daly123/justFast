<%-- 
    Document   : nav
    Created on : 1 avr. 2017, 16:33:28
    Author     : dalym
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="nav" style="opacity: 0.7;">
    <div class='logo'></div>
    <ul class="menu">
        <li class="btMenu">
            <a href="javascript:void(0)">MENU</a></li>
        <li class="menuItem ${(param.active eq 'home' )? 'active' :''}"><a href="/JustFast/home">Acceuil</a></li>



        <%
            HttpSession mysession = request.getSession();
            if ((mysession != null) && (mysession.getAttribute("username") != null)) {
                String commander = "<li class=\"menuItem ${(param.active eq 'commander' )? 'active' :''} \"><a href=\"/JustFast/commander\">Commander</a></li> ";
                String reclamer = "<li class=\"menuItem ${(param.active eq 'claim' )? 'active' :''}\"><a href=\"/JustFast/claim\">Reclamer</a></li>";

                String user = "<li class='menuItem'><a href=''>" + mysession.getAttribute("username") + "</a></li>";
                out.println(commander);

                out.println(reclamer);
                out.println(user);
                out.println("<li class='menuItem'><a href='/JustFast/logout'>Logout</a></li>");

            } else {
                String commander = "<li class=\"menuItem ${(param.active eq 'login' )? 'active' :''} \"><a href=\"/JustFast/login\">Commander</a></li> ";
                out.println(commander);
                out.println("<li class=\"menuItem ${(param.active eq 'register' )? 'active' :''}\"><a href='/JustFast/register'>S'inscrire</a></li>");
                out.println("<li class=\"menuItem ${(param.active eq 'login' )? 'active' :''}\"><a href='/JustFast/login'>Se connecter</a></li>");
                String reclamer = "<li class=\"menuItem ${(param.active eq 'claim' )? 'active' :''}\"><a href=\"/JustFast/claim\">Reclamer</a></li>";
                out.println(reclamer);
            }
        %>

    </ul>
</div>

