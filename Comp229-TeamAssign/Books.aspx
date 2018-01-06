<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Comp229_TeamAssign.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="row">
         <div class="col-sm-12 ">
             <div class="panel panel-default">
                <div class="panel-heading">
                    <h1 class="panel-title">Our collection </h1>
                </div>
                <div class="panel-body">

                    <div class="row text-center">
                        <asp:Repeater ID="collection" runat="server">

                            <ItemTemplate>
                                <div class="col-sm-4">
                                    <div class="thumbnail">
                                        <strong>                                           
                  <asp:Label runat="server" Text='<%# Eval("Name") %>'></asp:Label></strong>
              <asp:Image runat="server" class="img-rounded img-responsive" Height="200" ImageUrl='<%#Eval("image")%>' />
              <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
      </div>
        </div>
             <div class="row">
         <div class="col-sm-12">
              <div class="panel panel-default">
                <div class="panel-heading">
                    <h1 class="panel-title">Loaned Books </h1>
                </div>
                <div class="panel-body">
                    <div class="row text-center">
                        <asp:Repeater ID="loanedcoll" runat="server">
                           <ItemTemplate>
                                <div class="col-sm-4">
                                    <div class="thumbnail">
                                        <strong>
                                            <asp:Label runat="server" Text='<%# Eval("Name") %>'></asp:Label></strong>
                                        <asp:Image runat="server" class="img-rounded img-responsive" Height="200" ImageUrl='<%#Eval("image")%>' />
                                        <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
             </div>
               
</asp:Content>
