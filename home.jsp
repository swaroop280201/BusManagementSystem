<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="styles/style.css">
    <link rel="stylesheet" href="styles/common.css">
    <link rel="stylesheet" href="styles/home.css">
    <link rel="icon" href="images/blo.png">
    <title>Patil Travellers</title>
    
</head>
<body>
    <div class="updationWindow">
        <div id="close" onclick="closeWindow();">&#10006;</div>
        <h1 id="result"></h1>
        <form id="nameForm" onsubmit="return updateFeedback();">
            <input type="text" name="ticketNo" placeholder="Ticket No">
            <input type="text" name="feedback" placeholder="Feedback">
            <input type="submit" value="Submit Feeback">
        </form>
    </div>   
    <jsp:include page="navigationPannel.jsp"></jsp:include>
    
    <div class="container">           
        <jsp:include page="svg.jsp"></jsp:include>  

            <div class="innerContainer">
                <h1 class="greeting">It's nice to meet you!</h1>
                
            </div>
            <div class="imgWithArticle">
                <div class="articleDiv">
                    <h1>PTPL- Your Service is Our Religion!</h1>
                    
                    <p>Travel isn't always pretty. Sometimes it's uncomfortable. Sometimes it aches so much that your heart is broken. But it's alright. You should alter as a result of the journey. Your memories, consciousness, heart, and body all bear the scars it leaves behind. You bring something along. I hope you leave a wonderful thing behind.<br><br>
                        Excellent advice to live by. Every year, travelling to a new location is thrilling. It might be a foreign nation, a strange city, or an intriguing location close to your home.

                    </p>
                </div>
                <div class="articleImg" style="background-image:url('./images/bb.jpg');">
                </div>
            </div>
            <div class="userFeedbacks">
                <h1>Dear Users</h1>
                
                <%@page import="java.sql.*"%>
                <%
                    String ticketNo = request.getParameter("ticketNo");
                    String feedback = request.getParameter("feedback");

                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivajiroadways", "root", "1234");
                        st = con.createStatement();
                        String query = "select profilePic, feedback, name, bookingDate from ticketOutput inner join passanger on ticketOutput.email = passanger.email where feedback is not null order by  bookingDate desc limit 2";
                        rs = st.executeQuery(query);
                        rs.next();
                    }
                    catch(Exception e){out.print(e.getMessage());}   
                %>

                <div class="user">
                    <div class="userImg" style="background-image: url('./images/userProfile/<%=rs.getString("profilePic") %>');"></div>    
                    <p><%=rs.getString("feedback")%></p>
                    <h2><%=rs.getString("name")%></h2>
                </div>
                <%rs.next();%>
                <div class="user">
                    <div class="userImg" style="background-image: url('./images/userProfile/<%=rs.getString("profilePic") %>');"></div>    
                    <p><%=rs.getString("feedback")%></p>
                    <h2><%=rs.getString("name")%></h2>
                </div>
            </div>
            <div class="plus" title="Add your feedback" onclick="change()">+</div>
            <div class="photoGallery">
                <h1>Gallery</h1>
                <p>Some Pictures of Buses</p>
                
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/b11.jpg');">
                        <h1>Crowded Bus</h1>
                        
                    </div>
                </div>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/b2.jpg');">
                        <h1>Save The Nature</h1>
                        
                    </div>
                </div>
                <br>
                <hr>
                <br>
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/b44.jpg');">
                        <h1>Breakdown</h1>
                        
                    </div>
                </div>
                
                <div class="photoRow">
                    <div class="Img" style="background-image: url('images/b6.jpg');">
                        <h1>Old Buses</h1>
                        
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </div>

        
</body>
<script src="scripts/navPannel.js">

 
</script>
<script>
    function change()
    {
        var updatingWindow = document.getElementsByClassName("updationWindow")[0];
        updatingWindow.style.height = "20vw";
        updatingWindow.style.width = "40vw";
        updatingWindow.style.opacity = "1";
    }
    function closeWindow()
    {
        var updatingWindow = document.getElementsByClassName("updationWindow")[0];
        updatingWindow.style.height = "0";
        updatingWindow.style.width = "0";
        updatingWindow.style.opacity = "0";
    } 
    function updateFeedback()
    {
        var ticketNo = document.getElementsByName('ticketNo')[0].value;
        ticketNo = ticketNo.slice(7, ticketNo.lenght)
        var feedback = document.getElementsByName('feedback')[0].value;
        var xmlhttp = new XMLHttpRequest();
        var param = "?ticketNo=" +  ticketNo + "&feedback=" + feedback;
        param = encodeURI(param);
        xmlhttp.open("POST", "addFeedback.jsp" + param, false);
        xmlhttp.onreadystatechange = function()
        {
            var result = document.getElementById("result");
            document.getElementById("nameForm").style.display = "none";

            result.style.display = "block";
            result.innerText = xmlhttp.responseText.trim();
            setInterval(function(){
                var updatingWindow = document.getElementsByClassName("updationWindow")[0];
                updatingWindow.style.height = "0";
                updatingWindow.style.width = "0";
                updatingWindow.style.opacity = "0";
            }, 1000);
            setInterval(function(){
                location.reload();
            }, 1500);
            
        }  
        xmlhttp.send();

        return false;
    } 
</script>
</html>