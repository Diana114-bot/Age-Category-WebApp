<%-- 
    Document   : outcome
    Created on : Mar 27, 2025, 11:36:16 AM
    Author     : zwivhuya sagida
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            int age =Integer.parseInt(request.getParameter("age"));
            
            String outcome = classifyAge(age);
            %>
        
        <h1>Welcome <%=name%></h1>
        <p>Your age is: <%=age%> and you are a/an <%=outcome%></p><br>
        
        <p>Click<a href="index.html"> here</a> to go back to main page</p>
        <%!
            
            public static String classifyAge(int age){
               
                String message="";
                  if(age>=0 && age<=14){
                     message ="Child";
                    }
                    else if(age>=15 && age<=24){
                          message ="Youth";
                   }
                 else if(age>=25 && age<=64){
                         message ="Adult";
                   }else{
                      message ="Senior";
                     }

             return message;
             }
            %>
    </body>
</html>
