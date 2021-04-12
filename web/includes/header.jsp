<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("session.login") != null) {
        String username = request.getParameter("session.username");
        String password = request.getParameter("session.password");
        
        session.setAttribute("session.username", username);
        session.setAttribute("session.password", password);
    }
    
    if(request.getParameter("session.logout") != null) {
        session.removeAttribute("session.username");
        session.removeAttribute("session.password");
    }
%>

<header class="header">
    <div class="container content">
        <div class="name">Por: Pedro Henrique Athanazio de Oliveira</div>
        
        <% if(session.getAttribute("session.username") != null){%>
            <div class="logged">
                <ul class="menu">
                    <li><a class="item" href="/MinhaProvaPOO/index.jsp">Inicio</a></li>
                    <li><a class="item" href="/MinhaProvaPOO/disciplinas.jsp">Disciplinas</a></li>
                </ul>



                <form class="logout-container">
                    Olá, <%= session.getAttribute("session.username") %>
                    <input class="submit" type="submit" value="Sair" name="session.logout">
                </form>
            </div>
        
        <%} else {%>
            <form class="login-container">
                <input type="text" placeholder="Nome de usuário:" class="input" name="session.username">
                <input type="password" placeholder="Senha:" class="input" name="session.password">
                <input type="submit" class="submit" name="session.login" value="Entrar">
            </form>
        <% }%>
    </div>
</header>