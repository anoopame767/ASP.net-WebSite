<%@ Page Title="" Language="C#" MasterPageFile="~/portal.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    
    



   </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    
   


<div class="w3-content w3-section" style="max-width:950px;height:500px;">
  <img class="mySlides" src="./images/ss-banner.png" style="width:100%;height:100%;">
  <img class="mySlides" src="./images/Deadpool-Banner.jpg" style="width:100%;height:100%;">
  <img class="mySlides" src="./images/logan-banner.jpg" style="width:100%;height:100%;">
  <img class="mySlides" src="./images/fd_banner.jpg" style="width:100%;height:100%;">
    
</div>

<div class="w3-content w3-section" style="max-width:950px;max-height:500px;align-items:center;">
    <p class="mycaptions" style="margin:0 auto;">Suicide Squad</p>
    <p class="mycaptions" style="margin:0 auto;">Deadpool</p>
    <p class="mycaptions" style="margin:0 auto;">Logan</p>
    <p class="mycaptions" style="margin:0 auto;">finding Dory</p>  
</div>
               <script>
                            var myIndex = 0;
                            carousel();

                            function carousel() {
                                var i;
                                var x = document.getElementsByClassName("mySlides");
                                for (i = 0; i < x.length; i++) {
                                    x[i].style.display = "none";
                                }
                                myIndex++;
                                if (myIndex > x.length) { myIndex = 1 }
                                x[myIndex - 1].style.display = "block";
                                setTimeout(carousel, 2000); // Change image every 2 seconds
                            }
                </script>


                <script>
                    var myIndex1 = 0;
                    carousel1();

                    function carousel1() {
                        var iw;
                        var xw = document.getElementsByClassName("mycaptions");
                        for (iw = 0; iw < xw.length; iw++) {
                            xw[iw].style.display = "none";
                        }
                        myIndex1++;
                        if (myIndex1 > xw.length) { myIndex1 = 1 }
                        xw[myIndex1 - 1].style.display = "block";
                        setTimeout(carousel1, 2000); // Change image every 2 seconds
                    }
                </script>

</asp:Content>

