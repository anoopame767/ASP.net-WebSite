<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel='stylesheet prefetch' href='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css'/>
    <link rel="stylesheet" href="css/style.css"/>

       <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    
    <title>Register-Movieworld</title>
</head>
<body>

    <script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>   
   <div class="login-card" id="login-card">

    <form id="form1" runat="server" method="post">
    <div>
    





    
            First Name:<br />
            &nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="SingleLine"></asp:TextBox>   
                    <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <br />
            Last Name:<br />
            &nbsp;<asp:TextBox ID="TextBox31" runat="server" TextMode="SingleLine"></asp:TextBox>   
                    <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is Required" ControlToValidate="TextBox31"></asp:RequiredFieldValidator>
                    <br />

            Email:
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Email id is required" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>
                    <br />
            Password:
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="password is Required" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    <br />
            Confirm Password:
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="Password Not Matching" ControlToCompare="TextBox5" ControlToValidate="TextBox6"></asp:CompareValidator>
                    <br />
                    DOB:<br />
            &nbsp;<asp:TextBox ID="TextBox7" runat="server" placeholder="mm/dd/yyyy"></asp:TextBox>   
                    
                    <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="DOB is required" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
         
            <asp:Button ID="Button2" runat="server" Text="Register" class="login login-submit" type="submit" name="Register" OnClick="Button2_Click" />

    </div>
    </form>

    </div>
</body>
</html>
