<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cricket Team Players</title>
    <link rel="icon" type="images/png" href="images/mru logo.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div>
        <div class="title">
            <hr>
            <h1>CRICKET TEAM PLAYERS</h1>
            <hr>
        </div>
        <div class="navlist">
            <a href="cricketteam.jsp">New</a>
            <a href="cricket-team-admin2.jsp">Edit/Remove</a>
        </div>
        <br><br>
        <div class="list">
            <h2>BATSMEN</h2>
            <div class="batsmen">
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM cricketteam WHERE playerType = 'Batsman'");
                    while (rs.next()) { %>
                        <div class="player">
                            <img src="<%= rs.getString("image") %>" alt="Player Image">
                            <p>Name: <%= rs.getString("playerName") %></p>
                            <p>Type: <%= rs.getString("playerType") %></p>
                            <p>Total Runs: <%= rs.getString("totalRuns") %></p>
                            <p>Catches: <%= rs.getString("catches") %></p>
                        </div>
                    <% }
                    con.close();
                } catch (Exception e) {
                    out.println(e);
                } %>
            </div>
            <br>
            
            <h2>WICKET KEEPERS</h2>
            <div class="wicketkeeper">
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM cricketteam WHERE playerType = 'Wicket Keeper'");
                    while (rs.next()) { %>
                        <div class="player">
                            <img src="<%= rs.getString("image") %>" alt="Player Image">
                            <p>Name: <%= rs.getString("playerName") %></p>
                            <p>Type: <%= rs.getString("playerType") %></p>
                            <p>Total Runs: <%= rs.getString("totalRuns") %></p>
                            <p>Stumpings: <%= rs.getString("stumpings") %></p>
                            <p>Catches: <%= rs.getString("catches") %></p>
                        </div>
                    <% }
                    con.close();
                } catch (Exception e) {
                    out.println(e);
                } %>
            </div>
            <br>
            
            <h2>ALL ROUNDERS</h2>
            <div class="allrounder">
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM cricketteam WHERE playerType = 'All Rounder'");
                    while (rs.next()) { %>
                        <div class="player">
                            <img src="<%= rs.getString("image") %>" alt="Player Image">
                            <p>Name: <%= rs.getString("playerName") %></p>
                            <p>Type: <%= rs.getString("playerType") %></p>
                            <p>Bowling Type: <%= rs.getString("bowlingType") %></p>
                            <p>Total Runs: <%= rs.getString("totalRuns") %></p>
                            <p>Wickets: <%= rs.getString("wickets") %></p>
                            <p>Catches: <%= rs.getString("catches") %></p>
                        </div>
                    <% }
                    con.close();
                } catch (Exception e) {
                    out.println(e);
                } %>
            </div>
            <br>
            
            <h2>BOWLERS</h2>
            <div class="bowler">
                <%
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login", "root", "mysql");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM cricketteam WHERE playerType = 'Bowler'");
                    while (rs.next()) { %>
                        <div class="player">
                            <img src="<%= rs.getString("image") %>" alt="Player Image">
                            <p>Name: <%= rs.getString("playerName") %></p>
                            <p>Type: <%= rs.getString("playerType") %></p>
                            <p>Bowling Type: <%= rs.getString("bowlingType") %></p>
                            <p>Total Runs: <%= rs.getString("totalRuns") %></p>
                            <p>Wickets: <%= rs.getString("wickets") %></p>
                            <p>Catches: <%= rs.getString("catches") %></p>
                        </div>
                    <% }
                    con.close();
                } catch (Exception e) {
                    out.println(e);
                } %>
            </div>
        </div>
    </div>
    
    <script>
        // Function to refresh the page every 30 seconds
        setInterval(function() {
            location.reload();
        }, 30000); // 30 seconds
    </script>
    
</body>
</html>
<style>
  font-family: 'Lato', sans-serif;
font-family: 'Sevillana', cursive; 

@import url('https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700&family=Sevillana&display=swap'); 

* {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "poppins", sans-serif;
        }
.title {
            background: url('images/crickettop.jpg');
            justify-content: center;
            align-items: center;
            min-height: 40px;
            background-size: cover;
            background-position: center;
        }
.title h1 {
            text-align: center;
            color: black; 
            font-size: 50px;
            padding-top: 50px;
            text-shadow: 
                -4px -4px 0 white,  
                4px -4px 0 white,
                -4px 4px 0 white,
                4px 4px 0 white;
        }
.navlist {
    display: flex;
    justify-content: flex-end; /* Align items to the right */
    gap: 10px;
}

.navlist a {
    color: black;
    text-align: center;
    padding: 10px;
    text-decoration: none;
    font-size: 16px;
    background-color: rgb(234, 156, 55);
    border-radius: 5px;
}
.list h2 {
        text-align:center;
            font-size: 22px;
        }

.batsmen,
.wicketkeeper,
.allrounder,
.bowler {
    display: flex;
    flex-wrap: wrap;
    gap: 20px; 
}

.player {
    width: calc(25% - 20px); 
    padding: 10px;
    border: 1px solid #ccc;
    box-sizing: border-box; 
    text-align: center;
}

.player img {
    max-width: 200px;
    height: 200px;
    display: block;
    margin: 0 auto 10px;
    object-fit: cover;
    object-position: top;
}

    </style>