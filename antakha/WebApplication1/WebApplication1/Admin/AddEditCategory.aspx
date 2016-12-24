<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddEditCategory.aspx.cs" Inherits="WebApplication1.Admin.AddEditCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <div align="center">
        <h4>
            Add New Category</h4>
        <hr />
    </div>
    <table align ="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;">
        <tr>
            <td style="width:50%; padding-left: 100px;" align="left">
                Category Name :
            </td>
            <td style="width: 50%;" align="left">
                <asp:TextBox Id="txtCategoryName" runat="server" width="22px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%; padding-left: 100px;" align="left">
                &nbsp;
            </td>
            <td style ="width: 50%;" align="left">
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" width="100px" Height="30px"
                    OnClick="btnSubmit_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 50%;" align="right">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 50%;" align="right">
                &nbsp;
            </td>
            <td style="width: 50%;" align="left">
                &nbsp;
            </td>
        </tr>
    </table>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 25px;
            margin-bottom: 0px;
        }
        .auto-style2 {
            width: 311px;
        }
        .auto-style3 {
            width: 311px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContenPlaceHolder1">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Category Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcategoryname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnsubmitCategory" runat="server" Height="70px" Text="Submit" Width="183px" OnClick="btnsubmitCategory_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>


