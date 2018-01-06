<%@ Page Title="ItemDetail" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ItemDetail.aspx.cs" Inherits="Comp229_TeamAssign.ItemDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <div class="row">
        <div class="col-sm-12 ">
            <div class="panel panel-default text-center">
                <div class="panel-heading">
                    <h1 class="panel-title">Book Detail</h1>
                </div>
                <div class="col-sm-8">
                    <asp:Repeater ID="bookdetail" runat="server">

                        <ItemTemplate>
                            <table>
                                <tr>
                                    <td rowspan="6">
                                        <asp:Image runat="server" class="img-rounded img-responsive" Height="350" width="550" ImageUrl='<%#Eval("image")%>' /></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><strong>
                                        <asp:Label runat="server" Text='<%# Eval("Name") %>'></asp:Label></strong></td>
                                </tr>
                                <tr>
                                    <td>Language:
                                        <asp:Label runat="server" Text='<%# Eval("BookLanguage") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Released on :
                                        <asp:Label runat="server" Text='<%# Eval("DateOfPublication") %>'></asp:Label></td>
                                </tr>
                                <tr>
                                    <td>Status:<small>
                                        <asp:Label runat="server" Text='<%# Eval("Status") %>'></asp:Label></small></td>
                                </tr>
                                <tr >
                                    <td >Summary:
                                        <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small><</td>
                                </tr>


                            </table>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>









</asp:Content>
