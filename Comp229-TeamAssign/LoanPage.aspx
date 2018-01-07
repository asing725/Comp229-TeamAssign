<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoanPage.aspx.cs" Inherits="Comp229_TeamAssign.LoanPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <p>
        Loan ID :<br />
        <asp:TextBox ID="loanIdTextBox"  runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
    <p>
        Book ID :<br />
        <asp:TextBox ID="bookTextBox"  runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
    <p>
        Member ID :<br />
        <asp:TextBox ID="memberTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>

        Date of Borrow :<br />
        <asp:TextBox ID="dateOfBorrowTextBox"   runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
    <p>

        Date of Return :<br />
        <asp:TextBox ID="dateOfReturnTextBox" runat="server" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
  

</asp:Content>
