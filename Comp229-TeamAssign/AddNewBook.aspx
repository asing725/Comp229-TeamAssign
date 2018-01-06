<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="Comp229_TeamAssign.AddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
        ISBN :<br />
        <asp:TextBox ID="ISBNTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
     <p>
        Name :<br />
        <asp:TextBox ID="nameTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>

    <p>
        Description :<br />
        <asp:TextBox ID="descriptionTextBox" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add"/>
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

        Date of Publication :<br />
        <asp:TextBox ID="dateOfPublicationTextBox"  runat="server" TextMode="Date" ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />
        </p>
  
    <p>
       <asp:Button ID="addNewBook" runat="server" Text="Add" OnClick="addNewBook_Click" />
        <asp:Button ID="cancelAddNewBoook" runat="server" Text="Cancel" OnClick="cancelAddNewBoook_Click" />
    </p>
    <p>
        &nbsp;</p>

</asp:Content>
