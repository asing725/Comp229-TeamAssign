<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_TeamAssign.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-sm-9 ">
            <div class="panel panel-default">
                <div class="panel-heading">
                  <h1 class="panel-title">Our loaned collection </h1>
                </div>
                <div class="panel-body">
                    <div class="row text-center">
                        <asp:Repeater ID="loanedbooks" runat="server">
                            <HeaderTemplate>
                            </HeaderTemplate>

                            <ItemTemplate>
                                <div class="col-sm-5">
                                    <div class="thumbnail">                                    
                                       <strong>   <asp:Label runat="server" Text='<%# Eval("Name") %>'></asp:Label></strong>  
                                        <asp:Image runat="server" class="img-rounded img-responsive" Height="200" ImageUrl='<%#Eval("image")%>' />
                                   <asp:Label runat="server" Text='<%# Eval("Description") %>'></asp:Label></small></div>
                                 

                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                    </div>

                </div>
            </div>

        </div>



        <div class="col-sm-3 ">


            <div id="loggedin" runat="server" visible="false">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Hello:
                            <asp:Label ID="Username" runat="server"></asp:Label></h3>
                    </div>
                    <asp:LinkButton ID="logout" runat="server" Text="Logout" CssClass="btn btn-danger" OnClick="logout_Click" />
     

                </div>
            </div>

            <div id="notlogged" runat="server" visible="true">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title">Login here:</h1>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label id="usrlbl" class="control-label">Username:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="userNtxt" placeholder="Username" required="true"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="login" ID="requn" runat="server" ControlToValidate="userNtxt" ErrorMessage="Please enter your username"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label id="passlbl" class="control-label">Password:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="passtxt" placeholder="Password" required="true" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="login" ID="reqpass" runat="server" ControlToValidate="passtxt" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="logInbtn" ValidationGroup="login" runat="server" Text="Login" class="btn btn-danger" OnClick="logInbtn_Click" />
                            <asp:Label runat="server" ID="msgtxt"></asp:Label>
                        </div>
                        <div class="form-group">
                        <h5 class="panel-heading">New user ?</h5>                   
                        <asp:LinkButton ID="register" runat="server" Text="Register here" CssClass="btn btn-danger" OnClick="register_Click" />
                    </div>
                 </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
