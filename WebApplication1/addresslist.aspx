<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addresslist.aspx.cs" Inherits="WebApplication1.addresslist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
       
        $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
        //$(document).ready(function () {
        //    $('#myTable').DataTable();
        //});

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">

            <div class="col-sm-12">
                <center>
                    <h3>Address List</h3>
                </center>
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <asp:Panel class="alert alert-success" role="alert" ID="Panel1" runat="server" Visible="False">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
                <br />
                <div class="row">

                    <div class="card">
                        <div class="card-body">
                            
                            <div class="row">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:powergridAddressDbConnectionString %>" SelectCommand="SELECT * FROM [master_address_tbl]"></asp:SqlDataSource>
                                 
                                <div class="col">
                                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ss_name" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                        <Columns>
                                            <asp:BoundField DataField="ss_name" HeaderText="ID" ReadOnly="True" SortExpression="ss_name">
                                                <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>



                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-10">
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ss_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        <span>Region - </span>
                                                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("region") %>'></asp:Label>
                                                                        &nbsp;| <span><span>&nbsp;</span>Type of Establishment - </span>
                                                                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("est_type") %>'></asp:Label>

                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        Contact No. -
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("contact_no") %>'></asp:Label>
                                                                        &nbsp;| Email ID -
                                                   <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("email_id") %>'></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        State -
                                                   <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("state") %>'></asp:Label>
                                                                        &nbsp;| City -
                                                   <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("city") %>'></asp:Label>
                                                                        &nbsp;| Pincode -
                                                   <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("pincode") %>'></asp:Label>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-12">
                                                                        Full Postal Address -
                                                   <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("full_address") %>'></asp:Label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-2">
                                                                <asp:Image class="img-fluid w-100" ID="Image1" runat="server" ImageUrl='<%# Eval("ss_imglink") %>' />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>



                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <center>
                <a href="homepage.aspx"><< Back to Home</a><span class="clearfix"></span>
                <br />
                <center>
        </div>
    </div>

</asp:Content>
