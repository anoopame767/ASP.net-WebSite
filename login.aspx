<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'/>
    <link rel="stylesheet" href="css/style.css"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <title>Movie-World-Login</title>
</head>
<body>

<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>   
   <div class="login-card">

    <form id="form1" runat="server" method="post">
    <div>

         

        <br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Email" Placeholder="Email ID"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email is Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email id is not correct" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox1"></asp:RegularExpressionValidator>
        <br />
        
        
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="password is Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
         <br />
                
        <asp:Button ID="Button1" runat="server" Text="Log In" class="login login-submit" type="submit" name="login" OnClick="Button1_Click" />
                
         <br />
                
    </div>
    </form>
   
       <div class="login-help">
        <a href="Register.aspx">Register</a> • <a href="#">Forgot Password</a>
       </div>
      
   
   </div>

        
</body>
</html>
