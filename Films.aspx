<%@ Page Title="" Language="C#" MasterPageFile="~/portal.master" AutoEventWireup="true" CodeFile="Films.aspx.cs" Inherits="Default2" %>

<asp:Content ID="nt1" ContentPlaceHolderID="head" Runat="Server">
    <script>
        function setCart(btn) {
            var json_str;
            var movieList = [];

            if (getCookie('movieId') == "") {
                movieList.push(btn.id);
                //alert(movieList);
                //json_str = JSON.parse(movieList);

                document.cookie = "movieId=" + btn.id;    
                alert('Added to cart' + movieList);
               
            }
            else {

                json_str = getCookie('movieId');
               // alert(json_str);
                movieList.push(json_str);
              //  movieList.push(json_str);
                movieList.push(btn.id);
                //json_str = JSON.stringify(movieList);
                //createCookie('movieId', json_str);
                document.cookie = "movieId=" + movieList;
                alert('Added to cart' + movieList);
            }
            
           
        }

        function getCookie(cname) {
            var name = cname + "=";
            var decodedCookie = decodeURIComponent(document.cookie);
            var ca = decodedCookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') {
                    c = c.substring(1);
                }
                if (c.indexOf(name) == 0) {
                    return c.substring(name.length, c.length);
                }
            }
            return "";
        }

        function redirect(btn) {
                window.location = "checkout.aspx";
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <div class="w3-col m12 w3-white">
        
        <asp:Panel ID="MovieList" runat="server">
            
        </asp:Panel>
    </div>
</asp:Content>

