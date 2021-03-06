<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/authentication.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/leave.css">
    <link rel="icon" href="images/blo.png">
    <title>Fare</title>
    <style>
        .busTypeContainer
        {
            width: 220px;
            margin: 2vw auto;
        }
        .busTypeContainer label
        {
            background-size: 80% 80%;
            background-repeat: no-repeat;
            background-position: center;
            border-radius: 10px;
            transition: ease-in-out .7s;

        }


        input[type="radio"]{
            display:none;
        }
        label:last-child {
            float: right !important; 
        }

        input[type="radio"] + label
        {
            border: 2px solid transparent;
            height: 5vw;
            width: 5vw;
            display:inline-block;
            padding: 0 0 0 0px;
            cursor: pointer;
        }
        input[type="radio"]:checked + label
        {
            background-color: rgba(255, 255, 255, 0.63);
            height: 5vw;
            width: 5vw;
            display:inline-block;
            padding: 0 0 0 0px;
            cursor: default;
        }
        #fare
        {
            margin: 2vw auto;
            border: 2px solid aqua; 
            color: aqua; 
            padding: 1vw;
            width: 10vw;
            border-radius: 2.5vw;
            transition: ease-in-out .7s;
            height: 2vw;
        }
        #fare:empty
        {
            opacity: 0;
        }

    </style>
</head>
<body onload="changeRange();" onchange="checkValid('Dom changed');">
<%@page import="java.sql.*"%>
<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
        st = con.createStatement();
        String query = "select routeNo from route order by serialNo";
        rs = st.executeQuery(query);
    }
    catch(Exception e)
    {
        out.print(e.getMessage());
    }
%>

    <jsp:include page="navigationPannel.jsp"></jsp:include>
    <jsp:include page="svg.jsp"></jsp:include> 
    <div class="container" style="height: 40vw; margin-top: 29vw;">
        <div class="workspace">
            <form> 
                <h1>Calculate Fare</h1>
                <select name="routeNo" onchange="updateStands(this.value);">
                    <option value="" disabled selected >Bus No.</option>
                    <%
                        while(rs.next())
                        {%>
                            <option><%=rs.getString("routeNo")%></option>
                        <%}
                    %>
                </select>
                <select name="source" onchange="disableTo(this.value, this.length)">
                    <option value="" disabled selected >From</option>
                </select>
                <select name="destination" onchange="disableFrom(this.value, this.length)">
                    <option value="" disabled selected >To</option>
                </select>
                <div class="busTypeContainer">
                    <input type="radio" id="ORD" value="ORD" name="type" checked>
                    <label for="ORD" style="background-image: url('images/ord.png');"></label>
                    <input type="radio" id="AC" value="AC" name="type">
                    <label for="AC" style="background-image: url('images/ac.png');"></label>
                </div>

                <p id='rangeOutput'></p>
                <input type="range" value="1" min="1" max="20" onchange="changeRange();" class="noOfPassangers" name="noOfPassangers">
                <h1 id="fare"></h1>
            </form>
        </div>
    </div>

    
    <jsp:include page="footer.jsp"></jsp:include>
</body>
<script src="scripts/navPannel.js"></script>
<script src="scripts/disable.js"></script>
<script>
    function changeRange()
    {
        var range = document.getElementsByClassName('noOfPassangers')[0].value;
        document.getElementById('rangeOutput').innerHTML = range;
    }
    function updateStands(routeNo)
    {
        var source = document.getElementsByName('source')[0];
        var destination = document.getElementsByName('destination')[0];

        var param = "?routeNo=" +  routeNo;
        param = param.replace("+", "%2b")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "ticketAJAX.jsp" + param, false);
        
        xmlhttp.onreadystatechange = function(){
            source.innerHTML =
            destination.innerHTML = xmlhttp.responseText;
        }
        xmlhttp.send();

        var placeholder = document.getElementsByClassName('placeholder');
        placeholder[0].text = "From";        
        placeholder[1].innerHTML = "To";
    }
    window.addEventListener('load', function () {
        var routeNo = document.getElementsByName('routeNo')[0].value;
        if(routeNo)
        {
            setTimeout(function(){
                updateStands(routeNo);
            }, 200);
        }
    })
    function checkValid()
    {        
        var routeNo = document.getElementsByName('routeNo')[0].value;
        var source = document.getElementsByName('source')[0].value;
        var destination = document.getElementsByName('destination')[0].value;
        var nop = document.getElementsByClassName('noOfPassangers')[0].value;
        var type = ""
        if (document.getElementById('ORD').checked) {
            type = document.getElementById('ORD').value;
        }
        else if (document.getElementById('AC').checked) {
            type = document.getElementById('AC').value;
        }
        if(routeNo && source && destination)
        {
            getFare(routeNo, source, destination, nop, type)
        }

    }
    function getFare(routeNo, source, destination, nop, type)
    {
        var fareValue = document.getElementById('fare');
        if (document.getElementById('ORD').checked) {
            type = document.getElementById('ORD').value;
        }
        else if (document.getElementById('AC').checked) {
            type = document.getElementById('AC').value;
        }

        var param = "?routeNo=" + routeNo + "&source=" + source + "&destination=" + destination + "&type=" + type + "&noOfPassangers=" + nop;




        param = param.replace("+", "%2b")
        param = param.replace("(", "%28")
        param = param.replace(")", "%29")
        
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.open("POST", "fareAJAX.jsp" + param, false);
        
        xmlhttp.onreadystatechange = function(){
            source.innerHTML =
            fareValue.innerHTML = xmlhttp.responseText;
        }
        xmlhttp.send();
    }

</script>

</html>