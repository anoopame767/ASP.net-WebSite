<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logout.aspx.cs" Inherits="logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'/>
    <link rel="stylesheet" href="css/style.css"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Movie-World-Logout</title>
</head>
<body>

    <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>   
   <div class="login-card" id="logout-card">


    <form id="form1" runat="server" method="post">
    <div style="align-items:center;display:flex;flex-direction:column;justify-content:space-around;">
    
        <asp:Label ID="Label1" runat="server" style="text-align:center;" Text="Are you sure you want to Logout?"></asp:Label>
        <br />
        <asp:Button ID="logoutbutton1" runat="server" Text="Yes" type="submit" class="login login-submit" name="login" OnClick="logoutbutton1_Click" />
        <asp:Button ID="logoutbutton2" runat="server" Text="No" type="submit" class="login login-submit" name="login" OnClick="logoutbutton2_Click" />
        
        

    </div>
    </form>
    
    </div>
</body>
</html>
