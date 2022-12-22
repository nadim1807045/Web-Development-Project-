<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeFile="diet_contrl.aspx.cs" Inherits="WebApplication3.diet_contrl " %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .c1{
            background-color:rgba(0,0,0,0.07)
        }
        .c2{
           color:aliceblue
        }
        body{
             background-image:url("imgs/diet_cntl.jpg");
             background-size:cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card c1">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4 style="color:aliceblue">Health Advice</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" Height="150px" Width="250px" src="imgs/book-online.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-12">
                        <label>ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID" TextMode="Number"></asp:TextBox>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <label>Suggestion</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Suggestion" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-primary" runat="server" Text="Say" OnClick="Button1_Click"   />
                     </div>
                      <div class="col-6">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Send Email" OnClick="Button2_Click"   />
                     </div>
                     
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
                                 <asp:BoundField DataField="v_a" HeaderText="vit-A" SortExpression="v_a" />
                                 <asp:BoundField DataField="v_b" HeaderText="vit-B" SortExpression="v_b" />
                                 <asp:BoundField DataField="v_c" HeaderText="vit-C" SortExpression="v_c" />
                                 <asp:BoundField DataField="p_t" HeaderText="Protein" SortExpression="p_t" />
                                 <asp:BoundField DataField="p_u" HeaderText="Protein Up" SortExpression="p_u" />
                                 <asp:BoundField DataField="w_t" HeaderText="water" SortExpression="w_t" />
                                 <asp:BoundField DataField="g_t" HeaderText="Glucose" SortExpression="g_t" />
                                 <asp:BoundField DataField="g_u" HeaderText="Glucose Up" SortExpression="g_u" />
                             </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
        <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />    <br />  <br />  <br />
</asp:Content>
