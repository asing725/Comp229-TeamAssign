<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Success.aspx.cs" Inherits="Comp229_TeamAssign.Success" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="row">
        <div class="col-sm-9 ">
            <div class="panel panel-default">
                <div class="panel-heading">
                  <h1 class="panel-title">Book Added</h1>
                </div>
                <asp:Button runat="server" CssClass="btn btn-danger" Text="Home" OnClick="Unnamed1_Click"/>
                <asp:Button runat="server" CssClass="btn btn-danger" Text="Books Collection" OnClick="Unnamed2_Click"/>
                <asp:Button runat="server" CssClass="btn btn-danger" Text="Add another book" OnClick="Unnamed3_Click"/>

                </div>
            </div>
        </div>
</asp:Content>
