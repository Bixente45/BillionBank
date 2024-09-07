<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="BillionBankTransaction.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center"> 
        <tr>    
            <td colspan="4" align="center">    
                <h4>Login</h4>
            </td>
        </tr>
        <tr>    
            <td>    
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>    
                <asp:TextBox ID="txtUserName" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtUserName" 
                    setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
            <td style="padding-right:40px;">    
            </td>
            <td>    
                <asp:Button ID="btnRegister" runat="server" Text="Register" Height="28px" OnClick="btnRegister_Click" CausesValidation="false"/>
            </td>
        </tr>
        <tr>    
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtPassword" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td colespan="4" style="padding-left:77px;">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Height="28px" OnClick="btnLogin_Click"/>
            </td>
        </tr>
        <tr>    
            <td colspan="3">
                <div id="error" runat="server" style="color:Red">   

                </div>
            </td>
            <td>
                <asp:LinkButton ID="lbForgotPassword" runat="server" Height="28px" CausesValidation="false" OnClick="lbForgotPassword_Click">Forgot Password</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

<%--FILENAME:login
AUTHOR: Bixente Mazwi Mkhwanazi
CREATED: 20 May 2024
DESCRIPTION: This Active Server page is used to login in the website--%>