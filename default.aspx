﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Mortgage Calculator
        
        <br /><br />
     
        Loan Amount*:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please type your loan amount"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %*: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please type your annual interest"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs)*: <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please type your loan term"></asp:RequiredFieldValidator>
        <br />
        <br />
        (* is the required field you need to finish!)<br />
        <br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="75px" />
        <asp:Button ID="btnclear" runat="server" Text="Clear" Width="75px" />
        
        <% If Not IsPostBack Then%>
     
        <p>Welcome to my mortage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule calculated for you.</p>
        <% Else%>
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
        <% End If%>    
        </div>
    </form>
</body>
</html>
