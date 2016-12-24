<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddNewProduct.aspx.cs" Inherits="WebApplication1.Admin.AddNewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 548px;
        }
        .auto-style2 {
            width: 273px;
        }
        .auto-style3 {
            width: 273px;
            height: 42px;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style5 {
            width: 273px;
            height: 31px;
        }
        .auto-style6 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContenPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Product Name"></asp:Label>
                :</td>
            <td>
                <asp:TextBox ID="txtproductname" runat="server" Width="367px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Product category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlCategory" runat="server" style="margin-right: 114px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Product Discription"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtProductDiscription" runat="server" Height="143px" Width="463px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="product image"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="uploadProductImage" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Product Price"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtProductPrice" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">]</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Height="84px" OnClick="btnSubmit_Click" Text="Sumbit" Width="202px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
