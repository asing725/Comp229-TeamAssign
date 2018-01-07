<%@ Page Title="AddNewBook" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNewBook.aspx.cs" Inherits="Comp229_TeamAssign.AddNewBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="row">
        <div class="col-sm-9 ">
            <div class="panel panel-default">
                <div class="panel-heading">
                  <h1 class="panel-title">Our loaned collection </h1>
                </div>
                <div class="panel-body">
                     <div class="form-group">
                            <label class="control-label" >ISBN:</label>
                           <asp:TextBox ID="ISBNTextBox" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
                    <div class="form-group">
                            <label class="control-label" >Name:</label>
                           <asp:TextBox ID="nameTextBox" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
                    <div class="form-group">
                            <label class="control-label" >Status:</label>
                           <asp:TextBox ID="statusTextBox" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
                    <div class="form-group">
                            <label class="control-label" >Language:</label>
                           <asp:TextBox ID="languageTextBox" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
                    <div class="form-group">
                            <label class="control-label" >Description:</label>
                           <asp:TextBox ID="descriptionTextBox" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
                    <div class="form-group">
                            <label class="control-label" >Date of Publication:</label>
                           <asp:TextBox ID="dateOfPublicationTextBox"  TextMode="Date"  CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
      <div class="form-group">
                            <label class="control-label" >Image Link:</label>
                           <asp:TextBox ID="imagelnk" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>
         <div class="form-group">
                            <label class="control-label" >Book Link:</label>
                           <asp:TextBox ID="booklnk" CssClass="form-control" runat="server"  ErrorMessage="*"
                            ForeColor="Red" Display="Dynamic" ValidationGroup="Add" />           </div>

       <asp:Button ID="addNewBook" runat="server" CssClass="btn btn-danger" Text="Add" OnClick="addNewBook_Click" />
        <asp:Button ID="cancelAddNewBoook" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="cancelAddNewBoook_Click" />
    
</asp:Content>
