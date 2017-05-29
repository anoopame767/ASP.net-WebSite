<%@ Page Title="" Language="C#" MasterPageFile="~/portal.master" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Content" Runat="Server">
    <form id="form1" runat="server" method="post">
        <div style="align-items:center;width:100%;">
        <asp:listview runat="server" DataSourceID="SqlDataSource1" GroupItemCount="4">
            <AlternatingItemTemplate>
                <td runat="server" style="padding:1% 5%;text-align:center;   background-color: transparent; box-shadow: 0 0 10px #000;color: #284775;">
                    <asp:Image runat="server" src='<%# Eval("imagepath") %>'></asp:Image>
                    <br />
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />Price: Rs.<asp:Label ID="priceLabel1" runat="server" Text='<%# Eval("price") %>' />
                    <br />
          
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    imagepath:
                    <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">name:
                    <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    <br />
                    imagepath:
                    <asp:TextBox ID="imagepathTextBox" runat="server" Text='<%# Bind("imagepath") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="padding:1% 5%;text-align:center;   background-color: transparent; box-shadow: 0 0 10px #000;color: #333333;">
                    <asp:Image runat="server" src='<%# Eval("imagepath") %>' ></asp:Image>
                    <br />
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name")%>' />
                    <br />Price: Rs.<asp:Label ID="priceLabel1" runat="server" Text='<%# Eval("price") %>' />
                    <br />
                
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" style="width:100%;">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server"  style="align-content:center; width:100%;background-color: #FFFFFF;border-collapse: collapse;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;align-items:center;">
                                <tr id="groupPlaceholder" runat="server" style="align-content:center">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;align-items:center;">name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    
                    <br />
                    imagepath:
                    <asp:Label ID="imagepathLabel" runat="server" Text='<%# Eval("imagepath") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>

        </asp:listview>
        

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:videoshopConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [name],[price], [imagepath] FROM [movie] ORDER BY [year] DESC, [name]"></asp:SqlDataSource>
        
    </div>
    </form>
</asp:Content>



