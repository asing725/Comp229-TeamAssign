<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Comp229_TeamAssign.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container-fluid">
    <div class="row">   
      <div class="col-sm-5 ">
      <div class="panel panel-default">
        <div class="panel-heading">
                            <h1 class="panel-title"><i class="fa fa-user-plus fa-lg"></i> Register</h1>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label class="control-label" >Username:</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="untxt" placeholder="Username" required="true" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label" >Phone Number:</label>
                            <asp:TextBox runat="server" TextMode="Phone" CssClass="form-control" ID="pntxt" placeholder="Phone Number" required="true" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label" >Email:</label>
                            <asp:TextBox runat="server" TextMode="Email" CssClass="form-control" ID="etxt" placeholder="Email" required="true" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Password:</label>
                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="passtxt" placeholder="Password" required="true" ></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Confirm Password:</label>
                            <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" ID="cpasstxt" placeholder="Confirm Password" required="true"></asp:TextBox>
                            <asp:CompareValidator ErrorMessage="Your Passwords Must Match" Type="String" Operator="Equal"  ControlToValidate="ConfirmPasswordTextBox" runat="server"
                                ControlToCompare="PasswordTextBox" CssClass="label label-danger" />
                        </div>

                        <div class="text-right">
                            <asp:Button Text="Cancel" ID="CancelButton" runat="server" CssClass="btn btn-warning"  UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                            <asp:Button Text="Register" ID="RegisterButton" runat="server" CssClass="btn btn-primary"  TabIndex="0" OnClick="RegisterButton_Click" />
                        </div>
                   
            </div>
            </div>
          </div>
        </div>
   </div>
</asp:Content>
