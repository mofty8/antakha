<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="antakha.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin: 200px;">
        <table align="center" style="border: 1px ridge #999999; width: 450px;">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label" runat="server" Font-Names ="Ahaeroni" Forecolor ="#0033CC" Text ="antakha - AdminPanel"
                        style ="font-weight: 700"></asp:Label>
                    <hr />
                </td>
            </tr>
        <tr>
            <td align="center" style="width: 50%;">
                LoginId :
            </td>
            <td class="auto-style1">
                <asp:TextBox ID ="txtLoginId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 50%;">
                Password :
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 50%:";>
                &nbsp;
            </td>
            <td class="auto-style1">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
            </td>
        </tr>
    <tr>
        <td align="center" colspan="2">
            <hr />
            <asp:Label ID="lblAlert" runat="server" Font-Names="Aharomi" ForeColor="Red"></asp:Label>
        </td>
    </tr>
            </table>
    </div>
    </form>
</body>
</html>
