<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="BillionBankTransaction.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center">
        <tr>
            <td colespan="2" align="center">
                <h4>Forgot Password</h4>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblUsername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label2" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblSecurityQuestions" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="Answer"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="28px" width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                ControlToValidate="txtAnswer" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td align="center">
                <asp:Button ID="btnForgotPaasword" runat="server" Text="Forgot Password" Height="28px" OnClick="btnForgotPaasword_Click"/>
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="28px" OnClick="btnCancel_Click" CausesValidation="false"/>
            </td>
        </tr>
        <tr> 
            <td colspan="2">
                <div id="error" runat="server" style="color:Red">   

                </div>
            </td>
        </tr>
    </table>



</asp:Content>

<%--FILENAME:Forgot Password
AUTHOR: Bixente Mazwi Mkhwanazi
CREATED: 20 May 2024
DESCRIPTION: This Active Server page is put into use when the forget password option is used--%>