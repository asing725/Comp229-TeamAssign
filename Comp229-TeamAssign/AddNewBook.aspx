<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="Comp229_TeamAssign.AddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
        ISBN :<br />
        <asp:TextBox ID="ISBNTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
    <p>
        Book Name :<br />
        <asp:TextBox ID="bookNameTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add"/>
        </p>
    <p>
        Book Format :<br />
        <asp:TextBox ID="bookFormatTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>
        Language :<br />
        <asp:TextBox ID="languageTextBox"  runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>
        Status :<br />
        <asp:TextBox ID="statusTextBox"  runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>
        Publisher :<br />
        <asp:TextBox ID="publisherTextBox"  runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>
        Purchase Date :<br />
        <asp:TextBox ID="purchaseDateTextBox" TextMode="Date" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
  
    <p>
       <asp:Button ID="addNewBook" runat="server" Text="Add" OnClick="addNewBook_Click" />
        <asp:Button ID="cancelAddNewBoook" runat="server" Text="Cancel" OnClick="cancelAddNewBoook_Click" />
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
