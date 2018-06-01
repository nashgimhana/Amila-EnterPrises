<%-- 
    Document   : jsontest
    Created on : Jun 1, 2018, 12:48:39 PM
    Author     : Nash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function load() {
                alert("call una");
                var x = document.getElementById("name").value;
                var myJson = JSON.stringify(x);
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function () {
                    if (this.redyState == 4 && this.status == 200) {

                    }
                }
                xhttp.open("GET", "test?obj=" + myJson, true);
                xhttp.send();
            }
        </script>
        <form>
            <input type="text" id="name">
            <button onclick="load();">ok</button>
        </form>
    </body>
</html>
