<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="BillionBankTransaction.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
       <table align="center"> 
        <tr> 
            <td colespan="2" align="center">
                <h4>REGISTRATION</h4>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAccountNumber" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label2" runat="server" Text="Account Type"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblAccountType" runat="server" Text="Savings"></asp:Label>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtUserName" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Minimum Username length must be atleast 6 characters(alphanumic)" ControlToValidate="txtUserName" ForeColor="Red"
                    setFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\S]{6,15}$"></asp:RegularExpressionValidator>
                </div>           
            </td>
        </tr>
        <tr> 
           <td style="width:50%">
                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                    ControlToValidate="txtPassword" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                    ErrorMessage="Minimum Password length must be atleast 6 characters" ControlToValidate="txtPassword" ForeColor="Red" 
                    setFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9'@&#.\S]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
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
                         setFocusOnError="true" Display="Dynamic" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                </div>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server" Height="28px" Width="208px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtEmail" setFocusOnError="false" Display="Dynamic" ></asp:RequiredFieldValidator>
               <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ErrorMessage="Invalid Email format" ControlToValidate="txtEmail" ForeColor="Red" 
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               </div>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Height="28px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAddress" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
             <td style="width:50%">
                <asp:Label ID="Label9" runat="server" Text="Security Questions"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlSecurityQuestions" runat="server" Height="28px" Width="208px" 
                    DataTextField="SecurityQuestionName" DataValueField="SecurityQuestionId" DataSourceID="SqlDataSource1">
                </asp:DropDownList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:BillionBankTransactionConnectionString %>" ProviderName="<%$ ConnectionStrings:BillionBankTransactionConnectionString.ProviderName %>"
                    SelectCommand="SELECT * FROM [SecurityQuestions]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
                <asp:Label ID="Label10" runat="server" Text="Answer"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAnswer" runat="server" Height="28px" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" 
                    ControlToValidate="txtAnswer" setFocusOnError="true" Display="Dynamic" ></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr> 
            <td style="width:50%">
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
            <td></td>
            <td></td>
        </tr>
        <tr> 
            <td align="center">
                <asp:Button ID="btnRegister" runat="server" Text="Register" Height="28px" OnClick="btnRegister_Click"/>
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

<%--FILENAME:Registration
AUTHOR: Bixente Mazwi Mkhwanazi
CREATED: 20 May 2024
DESCRIPTION: This Active Server page is used to register a applicant to the system--%>
