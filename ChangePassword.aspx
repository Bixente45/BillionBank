<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="BillionBankTransaction.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <table align="center">
        <tr>
            <td colespan="2" align="center">
                <h4>Change Password</h4>
            </td>
        </tr>
        <tr>
            <td style="width:160px;">
                <asp:Label ID="Label3" runat="server" Text="New Password"></asp:Label>
                <asp:HiddenField ID="hdnAnswer" runat="server" />
            </td>
            <td>
                <asp:TextBox ID="txtNewPassword" runat="server" Height="28px" width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtNewPassword" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ErrorMessage="Minimum Password length must be atleast 6 characters" ControlToValidate="txtNewPassword" ForeColor="Red" 
                    setFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@&#.\S]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr> 
            <td style="width:160px">
                 <asp:Label ID="Label5" runat="server" Text=" Confirm Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtConfirmPassword" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                         ErrorMessage="Minimum Password length must be atleast 6 characters" ControlToValidate="txtConfirmPassword" ForeColor="Red"
                         setFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@&#.\S]{6,15}$"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Incorrect" ForeColor="Red" 
                         setFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"></asp:CompareValidator>
                </div>
            </td>
        </tr>
        <tr> 
            <td align="center">
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" Height="28px" OnClick="btnChangePassword_Click"/>
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


<%--FILENAME:Change Password
AUTHOR: Bixente Mazwi Mkhwanazi
CREATED: 20 May 2024
DESCRIPTION: This Active Server page is used to change passwords for the bank transcaction system --%>