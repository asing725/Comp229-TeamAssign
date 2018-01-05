<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Comp229_TeamAssign.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    
    <div class="row">
         <div class="col-sm-6 col-md-3">
             <div class="panel panel-default">
   <div class="panel-heading">
                            <h1 class="panel-title"><i class="fa fa-user-plus fa-lg"></i> Our collection </h1>
                    </div>
                  <div class="panel-body">
             <asp:GridView ID="Gviewtrack" runat="server" AutoGenerateColumns="false"  DataKeyField="name" >
             <Columns>
                         
               <asp:BoundField DataField="Status" HeaderText="Name" />
                  <asp:BoundField DataField="BookLanguage" HeaderText="Description" />
                        </Columns>
        </asp:GridView>
                 </div>
                 </div>
             </div>
        </div>
             <div class="row">
         <div class="col-sm-6 col-md-3">
             <div class="panel panel-default">
   <div class="panel-heading">
                            <h1 class="panel-title"><i class="fa fa-user-plus fa-lg"></i> Loaned collection </h1>
                    </div>
                  <div class="panel-body">
             <asp:GridView ID="GviewOwnd" runat="server" AutoGenerateColumns="false"  DataKeyField="name" >
             <Columns>
              <asp:BoundField DataField="Status" HeaderText="Name" />
                  <asp:BoundField DataField="BookLanguage" HeaderText="Description" />
                       </Columns>
        </asp:GridView>
             </div>
            </div>
             </div>
                 </div>
</asp:Content>
