<%@ Page Title="" Language="C#" MasterPageFile="~/portal.master" AutoEventWireup="true" CodeFile="profileupdate.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Profile Update</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server" method="post"> 
    <div>
         
       
        <asp:Label ID="welcome" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Label ID="emaillabel" runat="server" Text="Label"></asp:Label>
        
         <br />
         <br />
         <br />
         <br />
        <br />
        <Label ID="fname" runat="server" Text="name" >First Name:</Label>
        <asp:TextBox ID="fnametextbox" runat="server"  ></asp:TextBox>
        
        <br />
         <asp:Label ID="lname" runat="server" Text="name" >Last Name:</asp:Label>
        <asp:TextBox ID="lnametextbox" runat="server"  ></asp:TextBox>
        
        <br />
        <asp:Label ID="password" runat="server" Text="password">Password:</asp:Label>
        <asp:TextBox ID="passwordtextbox" runat="server" ></asp:TextBox>
        
        <br />
        <asp:Label ID="age" runat="server" Text="age">DOB:</asp:Label>
        <asp:TextBox ID="agetextbox" runat="server" ></asp:TextBox>
        <br />
        
        <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" OnClientClick="User Details Updated Sucessfully" />
        <br />
        
        
        <asp:Label ID="displaymessage" runat="server" Text=""></asp:Label>
    </div>
        </form>
</asp:Content>

