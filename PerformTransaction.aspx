<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="PerformTransaction.aspx.cs" Inherits="BillionBankTransaction.PerformTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">

    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>PerformTransaction</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Payee Account Number"></asp:Label>
            <td>
                <asp:DropDownList ID="ddlPayeeAccountNumber" runat="server" Height="28px" width="208px" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">Please select Account Number</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="ddlPayeeAccountNumber" setFocusOnError="true" Display="Dynamic" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td>
                <asp:Label ID="Label3" runat="server" Text="Payee Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPayeeName" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtPayeeName" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Minimum payee name must be atleast 6 characters(alphanumic)" ControlToValidate="txtPayeeName" ForeColor="Red"
                    setFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\S]{6,15}$"></asp:RegularExpressionValidator>
                </div>           
            </td>
        </tr>

        <tr> 
            <td>
                 <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAmount" runat="server" Height="28px" Width="200px" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAmount" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ErrorMessage="Amount Length must be in between 1 to 5 digits" ControlToValidate="txtAmount" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" 
                    ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label10" runat="server" Text="Remarks"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtRemarks" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtRemarks" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td align="center">
                <asp:Button ID="btnSend" runat="server" Text="Send" Height="28px" OnClick="btnSend_Click"/>
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

<%--FILENAME:Perform Transaction
AUTHOR: Bixente Mazwi Mkhwanazi
CREATED: 20 May 2024
DESCRIPTION: This Active Server page is put into use when the forget password option is used --%>