<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="WebApplication3.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .c1{
            background-color:rgba(0,0,0,0.2)
        }
        .c2{
           color:aliceblue
        }
        body{
             background-image:url("imgs/img1.jpg");
             background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <div class="container-fluid">
      <div class="row c2">
         <div class="col-md-5">
            <div class="card c1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="100px" src="imgs/sign-up.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="Number"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <label>Vitamin-A</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Vitamin-A"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Vitamin-B</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Vitamin-B" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Vitamin-C</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Vitamin-C"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Protein Taken</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Protein Taken"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Protein Upper</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Protein Upper" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Water Taken</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server">
                              <asp:ListItem Text="1.5" Value="1.5" />
                              <asp:ListItem Text="2.0" Value="2.0" />
                              <asp:ListItem Text="2.2" Value="2.5" />
                              <asp:ListItem Text="2.5" Value="2.5" />
                              <asp:ListItem Text="2.8" Value="2.8" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                   <div class="row">
                     <div class="col-md-4">
                        <label>Glucose Taken</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Glucose Taken"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-8">
                        <label>Glucose Upper</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Glucose Upper"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click"  />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click"  />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click"  />
                     </div>

                      <br />
                       <div class="row">
                       
 <div class="col-12"></div>
                      <div class="col-12">
                        <asp:Button ID="Button4" class="btn btn-lg btn-block btn-primary" runat="server" Text="Suggestion"  PostBackUrl="x.aspx" />
                     </div> <div class="col-12"></div></div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card c1">
               <div class="card-body c1">
                  <div class="row">
                      
                     <div class="col">
                        <center>
                           <h4>Inventory List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Nutrition_careConnectionString %>" SelectCommand="SELECT * FROM [details]"></asp:SqlDataSource>
                     <div class="col">
                         <asp:GridView class="table table-striped table-bordered c2" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                             <Columns>
                                 <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                                 <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                 <asp:BoundField DataField="v_a" HeaderText="v_a" SortExpression="v_a" />
                                 <asp:BoundField DataField="v_b" HeaderText="v_b" SortExpression="v_b" />
                                 <asp:BoundField DataField="v_c" HeaderText="v_c" SortExpression="v_c" />
                                 <asp:BoundField DataField="p_t" HeaderText="p_t" SortExpression="p_t" />
                                 <asp:BoundField DataField="p_u" HeaderText="p_u" SortExpression="p_u" />
                                 <asp:BoundField DataField="w_t" HeaderText="w_t" SortExpression="w_t" />
                                 <asp:BoundField DataField="g_t" HeaderText="g_t" SortExpression="g_t" />
                                 <asp:BoundField DataField="g_u" HeaderText="g_u" SortExpression="g_u" />
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

    <br />
    <br />
    <br />

</asp:Content>