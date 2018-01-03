<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Comp229_TeamAssign.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="row">
         <div class="col-sm-6 col-md-3">
    <h3>Our collection:</h3>
             <asp:GridView ID="Gviewtrack" runat="server" AutoGenerateColumns="false"  DataKeyField="name" >
             <Columns>
                         
                <asp:BoundField DataField="name" HeaderText="Name" />
                  <asp:BoundField DataField="desc" HeaderText="Description" />
                 <asp:BoundField DataField="genre" HeaderText="Genre" />
                 <asp:BoundField DataField="rating" HeaderText="Rating" />
                <asp:ImageField DataImageUrlField="ImageUrl"  ControlStyle-Height="230px" ControlStyle-Width="250px" ></asp:ImageField>               
           </Columns>
        </asp:GridView>
             </div>
        <div class="col-sm-6 col-md-6">
            <h3>Owned collection:</h3>
             <asp:GridView ID="GviewOwnd" runat="server" AutoGenerateColumns="false"  DataKeyField="name" >
             <Columns>
                         
                <asp:BoundField DataField="name" HeaderText="Name" />
                  <asp:BoundField DataField="desc" HeaderText="Description" />
                 <asp:BoundField DataField="genre" HeaderText="Genre" />
                 <asp:BoundField DataField="rating" HeaderText="Rating" />
                <asp:ImageField DataImageUrlField="ImageUrl"  ControlStyle-Height="230px" ControlStyle-Width="250px" ></asp:ImageField>               
           </Columns>
        </asp:GridView>
             </div>
            </div>
</asp:Content>
