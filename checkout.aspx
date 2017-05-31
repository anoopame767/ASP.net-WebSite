<%@ Page Title="" Language="C#" MasterPageFile="~/portal.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
         var modmovieList = [];
         function removeCart(mId) {
             json_str = getCookie('movieId');
             modmovieList.push(json_str);
             var index = modmovieList.indexOf('buy_cart_' + mId);
             if (index > -1) {
                 array.splice(index, 1);
             }

             document.cookie = "movieId=" + modmovieList;
             alert('Modified cart: ' + modmovieList);

         }
      </script>

    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
   <form id ="cart_form" runat="server">
       <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    <ul class="w3-ul w3-card-4">
        <asp:Panel ID="Cart" runat="server"></asp:Panel>
    </ul>
       
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
       <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    
   </form>
    
</asp:Content>

