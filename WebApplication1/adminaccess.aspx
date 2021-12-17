<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminaccess.aspx.cs" Inherits="WebApplication1.adminaccess2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        //$(document).ready(function () {
        //    $('.table').DataTable();
        //});
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });



        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Update Address Database</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" width="100px" src="addressinventory/database-gc66d49ada_640.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <%-- choose file--%>
                        <div class="row">
                            <div class="col">
                                <asp:FileUpload onchange="readURL(this)" class="form-control" ID="FileUpload1" runat="server" />

                            </div>
                        </div>
                        <div class="row">

                            <div class="col-md-6">
                                <label>Name of the Substation</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Name of the Substation"></asp:TextBox>
                                        <asp:Button class="form-control btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-2">
                                <label>Region</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="CC" Value="CC" />
                                        <asp:ListItem Text="ER-I" Value="ER-I" />
                                        <asp:ListItem Text="ER-II" Value="ER-II" />
                                        <asp:ListItem Text="NER" Value="NER" />
                                        <asp:ListItem Text="NR-I" Value="NR-I" />
                                        <asp:ListItem Text="NR-II" Value="NR-II" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="SR-I" Value="SR-I" />
                                        <asp:ListItem Text="SR-II" Value="SR-II" />
                                        <asp:ListItem Text="WR-I" Value="WR-I" />
                                        <asp:ListItem Text="WR-II" Value="WR-II" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Type of Establishment</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Substation" Value="Substation" />
                                        <asp:ListItem Text="CAO" Value="CAO" />
                                        <asp:ListItem Text="RHQ" Value="RHQ" />
                                        <asp:ListItem Text="POP-Telecom" Value="POP-Telecom" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label>Contact No</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact No"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-7">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                                        <asp:ListItem Text="Assam" Value="Assam" />
                                        <asp:ListItem Text="Bihar" Value="Bihar" />
                                        <asp:ListItem Text="Chattisgarh" Value="Chattisgarh" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Goa" Value="Goa" />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat" />
                                        <asp:ListItem Text="Haryana" Value="Haryana" />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka" />
                                        <asp:ListItem Text="Kerala" Value="Kerala" />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                                        <asp:ListItem Text="Manipur" Value="Manipur" />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram" />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland" />
                                        <asp:ListItem Text="Odisha" Value="Odisha" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim" />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                                        <asp:ListItem Text="Telangana" Value="Telangana" />
                                        <asp:ListItem Text="Tripura" Value="Tripura" />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox1" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pin Code</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Pin Code"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Full Postal Address" TextMode="MultiLine" Rows="3"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <br />
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a><br>
                <br>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Address List</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:powergridAddressDbConnectionString %>" SelectCommand="SELECT * FROM [master_address_tbl]"></asp:SqlDataSource>
                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ss_name" DataSourceID="SqlDataSource1">
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
    </div>

</asp:Content>
