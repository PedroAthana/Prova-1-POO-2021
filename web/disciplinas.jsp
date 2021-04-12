<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DISCIPLINAS | FATEC POO P1</title>
        
        <link rel="stylesheet" href="./assets/css/style.css">
    </head>
    <body>
        <%@include file="includes/header.jsp" %>
        
        <%
            if(request.getParameter("form-submit") != null) {
                if(request.getParameter("session.poo.p1") != null)
                    session.setAttribute("session.poo.p1", request.getParameter("session.poo.p1"));
                
                if(request.getParameter("session.poo.p2") != null)
                    session.setAttribute("session.poo.p2", request.getParameter("session.poo.p2"));
                
                
                if(request.getParameter("session.ago.p1") != null)
                    session.setAttribute("session.ago.p1", request.getParameter("session.ago.p1"));
                
                if(request.getParameter("session.ago.p2") != null)
                    session.setAttribute("session.ago.p2", request.getParameter("session.ago.p2"));
                
                
                
                if(request.getParameter("session.ibd.p1") != null)
                    session.setAttribute("session.ibd.p1", request.getParameter("session.ibd.p1"));
                
                if(request.getParameter("session.ibd.p2") != null)
                    session.setAttribute("session.ibd.p2", request.getParameter("session.ibd.p2"));
                
                
                
                if(request.getParameter("session.ies.p1") != null)
                    session.setAttribute("session.ies.p1", request.getParameter("session.ies.p1"));
                
                if(request.getParameter("session.ies.p2") != null)
                    session.setAttribute("session.ies.p2", request.getParameter("session.ies.p2"));
                
                
                
                if(request.getParameter("session.lp5.p1") != null)
                    session.setAttribute("session.lp5.p1", request.getParameter("session.lp5.p1"));
                
                if(request.getParameter("session.lp5.p2") != null)
                    session.setAttribute("session.lp5.p2", request.getParameter("session.lp5.p2"));
                
                
                
                if(request.getParameter("session.irc.p1") != null)
                    session.setAttribute("session.irc.p1", request.getParameter("session.irc.p1"));
                
                if(request.getParameter("session.irc.p2") != null)
                    session.setAttribute("session.irc.p2", request.getParameter("session.irc.p2"));
                
                
                
                if(request.getParameter("session.isg.p1") != null)
                    session.setAttribute("session.isg.p1", request.getParameter("session.isg.p1"));
                
                if(request.getParameter("session.isg.p2") != null)
                    session.setAttribute("session.isg.p2", request.getParameter("session.isg.p2"));
            }
        %>
        
        <% if(session.getAttribute("session.username") != null) {%>
            <main class="disciplinas-page">
                <form>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Disciplina</th>
                                <th>P1</th>
                                <th>P2</th>
                            </tr>
                        </thead>
            <tbody>
            <tr>
                <td>POO</td>
                                
       <% if(session.getAttribute("session.poo.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.poo.p1") %>" name="session.poo.p1"></td>
                <% } else { %>
                    <td><input type="number" maxlength="2" name="session.poo.p1"></td>
                <% } %>
                                
                                
       <% if(session.getAttribute("session.poo.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.poo.p2") %>" name="session.poo.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.poo.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>ago</td>
       <% if(session.getAttribute("session.ago.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ago.p1") %>" name="session.ago.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ago.p1"></td>
            <% } %>
                                
                                
        <% if(session.getAttribute("session.ago.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ago.p2") %>" name="session.ago.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ago.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>ibd</td>
        <% if(session.getAttribute("session.ibd.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ibd.p1") %>" name="session.ibd.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ibd.p1"></td>
            <% } %>
                                
                                
       <% if(session.getAttribute("session.ibd.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ibd.p2") %>" name="session.ibd.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ibd.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>ies</td>
         <% if(session.getAttribute("session.ies.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ies.p1") %>" name="session.ies.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ies.p1"></td>
            <% } %>
                                
                                
        <% if(session.getAttribute("session.ies.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.ies.p2") %>" name="session.ies.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.ies.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>LP5</td>
       <% if(session.getAttribute("session.lp5.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.lp5.p1") %>" name="session.lp5.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.lp5.p1"></td>
            <% } %>
                                
                                
       <% if(session.getAttribute("session.lp5.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.lp5.p2") %>" name="session.lp5.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.lp5.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>irc</td>
         <% if(session.getAttribute("session.irc.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.irc.p1") %>" name="session.irc.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.irc.p1"></td>
            <% } %>
                                
                                
            <% if(session.getAttribute("session.irc.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.irc.p2") %>" name="session.irc.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.irc.p2"></td>
            <% } %>
                </tr>

                <tr>
                <td>isg</td>
            <% if(session.getAttribute("session.isg.p1") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.isg.p1") %>" name="session.isg.p1"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.isg.p1"></td>
            <% } %>
                                
                                
            <% if(session.getAttribute("session.isg.p2") != null) { %>
        <td><input type="number" maxlength="2" value="<%= session.getAttribute("session.isg.p2") %>" name="session.isg.p2"></td>
            <% } else { %>
                <td><input type="number" maxlength="2" name="session.isg.p2"></td>
            <% } %>
                </tr>
               </tbody>
            </table>

                    <input type="submit" class="submit" name="form-submit" value="Salvar">
                </form>
            </main>
        <% } %>
    </body>
</html>