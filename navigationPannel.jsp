<div class="navPannel">
    <div class="logo">
        <div class="logoImage"></div>
        <div class="logoHeading">Patil Travellers</div>
    </div>
    
    <div class="navLinks">     
        
        <%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
        if(session.getAttribute("email") == null)
        {%>
            <a class="link" href="authentication.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">login</a>
        <%}

        else if(session.getAttribute("role").equals("admin"))
        {%>            
        <div class="userProfile">
            <p class="userName"><%=session.getAttribute("name").toString().split(" ")[0]%></p>
            <div class="userImg" style="background-image: url('images/userProfile/${profilePic}');"></div>
            <div class="iconContainer">
                <div class="setting" onclick="window.location='setting.jsp';"></div>
                <div class="logout" onclick="window.location='logout';"></div>
            </div>
        </div>
        <a class="link" href="paySalary.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Pay</a>
        <a class="link" href="leaveRequests.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Leave</a>
        <a class="link" href="reports.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Reports</a> 
        <a class="link" href="sales.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Sales</a>

        <%}
        else if(session.getAttribute("role").equals("driver") ||
                session.getAttribute("role").equals("conductor") ||
                session.getAttribute("role").equals("ticketchecker")
                )
        {
        %>            
        <div class="userProfile">
            <p class="userName"><%=session.getAttribute("name").toString().split(" ")[0]%></p>
            <div class="userImg" style="background-image: url('images/userProfile/${profilePic}');"></div>
            <div class="iconContainer">
                <div class="setting" onclick="window.location='setting.jsp';"></div>
                <div class="logout" onclick="window.location='logout';"></div>
            </div>
        </div>
        <a class="link" href="report.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Report</a>
        <a class="link" href="leave.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Leave</a>
        <a class="link" href="salary.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Salary</a>
        <a class="link" href="fare.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Fare</a>
        <%
        if(session.getAttribute("role").equals("ticketchecker"))
        {%>
            <a class="link" href="checkTicket.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Check Ticket</a>
        <%}
        %>

        <%}
        else if(session.getAttribute("role").equals("passanger"))
        {%>            
        <div class="userProfile">
            <p class="userName"><%=session.getAttribute("name").toString().split(" ")[0]%></p>
            <div class="userImg" style="background-image: url('images/userProfile/${profilePic}');"></div>
            <div class="iconContainer">
                <div class="setting" onclick="window.location='setting.jsp';"></div>
                <div class="logout" onclick="window.location='logout';"></div>
            </div>
        </div>
        
        <a class="link" href="route.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Route</a>
        <a class="link" href="fare.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Fare</a>
        <a class="link" href="availableBuses.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Availability</a>
        <a class="link" href="estimatedTime.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Time</a>
        <a class="link" href="ticket.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Ticket</a>
        
        <%}%>
        
        <a class="link" href="policies.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Policies</a>
        <a class="link" href="about.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">About</a>
        <a class="link" href="home.jsp" onfocus="elemFocused(this)" onblur="elemBlurred(this)">Home</a>
    </div>
</div>