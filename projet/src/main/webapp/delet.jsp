
 <%@page import ="java.sql.Connection" %>
<%@page import ="database.Utilconx" %>
<%@page import ="java.sql.PreparedStatement" %>
<%@page import ="java.sql.ResultSet" %>
<%
        String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
       
        con = Utilconx.Seconnecter();
        pst = con.prepareStatement("DELETE FROM affection WHERE id_navire= ?");
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deletee");
            
       </script>
<%request.getRequestDispatcher("index.jsp").forward(request, response);%>