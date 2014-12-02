<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="content-wrapper">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Button Text="Water"  ID="Tab1" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab1_Click" />
                <asp:Button Text="Sewer" ID="Tab2" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab2_Click" />
                <asp:Button Text="Mis" ID="Tab3" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab3_Click" />
                <asp:Button Text="Meter" ID="Tab4" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab4_Click" />
                <asp:Button Text="Disconnect" ID="Tab5" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab5_Click" />
                <asp:Button Text="Reconnect" ID="Tab6" BorderStyle="None" CssClass="Initial" runat="server" OnClick="Tab6_Click" />
                <asp:MultiView ID="MainView" runat="server" >
                    <asp:View ID="lstView" runat="server">
                        <table class="viewtable" >
                            <tr class="tablerow">
                              <td>Water Connection Fees</td>
                                <td><asp:TextBox ID="waterf" runat="server" /><asp:RequiredFieldValidator ID="water" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="waterf"></asp:RequiredFieldValidator></td>
                                <td>Security</td>
                                <td><asp:TextBox ID="secure" runat="server" /><asp:RequiredFieldValidator ID="security" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="secure"></asp:RequiredFieldValidator></td>
                                <td>Charge</td>
                                <td><asp:TextBox ID="charg" runat="server" /><asp:RequiredFieldValidator ID="charge" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="charg"></asp:RequiredFieldValidator>
                                  
                                </td>
                               
                            </tr>

                            <tr class="tablerow">
                                <td>Road Cut Charges</td>
                                <td><asp:TextBox ID="roadcut" runat="server" /><asp:RequiredFieldValidator ID="roadct" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="roadcut"></asp:RequiredFieldValidator></td>
                                <td>Malba Charge</td>
                                <td><asp:TextBox ID="malba" runat="server" /><asp:RequiredFieldValidator ID="malbac" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="malba"></asp:RequiredFieldValidator></td>
                                <td>Processing Fees</td>
                                <td><asp:TextBox ID="pfees" runat="server" /><asp:RequiredFieldValidator ID="pfee" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="pfees"></asp:RequiredFieldValidator></td>
                                
                            </tr>
                            
                            <tr class="tablerow">
                                <td>Panalty Charge</td>
                                <td><asp:TextBox ID="pcharge" runat="server" /><asp:RequiredFieldValidator ID="panalty" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="pcharge"></asp:RequiredFieldValidator></td>
                                <td>Water Sanction No.</td>
                                <td><asp:TextBox ID="watersan" runat="server" /><asp:RequiredFieldValidator ID="sanction" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="watersan"></asp:RequiredFieldValidator></td>
                                <td>Water San Date</td>
                                <td>
                                    
                                </td>
                                
                            </tr>
                            
                            <tr class="tablerow">
                                <td>Total Charge</td>
                                <td><asp:TextBox ID="tcharge" runat="server" /><asp:RequiredFieldValidator ID="totalc" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="tcharge"></asp:RequiredFieldValidator></td>
                                <td>Meter Status</td>
                                <td><asp:DropDownList ID="mstatus" runat="server" Width="150px">
                                    </asp:DropDownList><asp:CustomValidator ID="mstat" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="mstatus"></asp:CustomValidator></td>
                                <td>Last meter Reading</td>
                                <td><asp:TextBox ID="lreading" runat="server" /><asp:RequiredFieldValidator ID="lastread" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="lreading"></asp:RequiredFieldValidator>
                                
                                </td>
                                
                            </tr>

                            <tr class="tablerow">
                                <td>Preview Balance</td>
                                <td><asp:TextBox ID="pbal" runat="server" /><asp:RequiredFieldValidator ID="pbalance" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="pbal"></asp:RequiredFieldValidator></td>
                                <td>Last Reading Date</td>
                                <td></td>
                                <td>Book No.</td><td><asp:TextBox ID="book" runat="server" /><asp:RequiredFieldValidator ID="bookno" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="book"></asp:RequiredFieldValidator></td>
                    
                                
                            </tr>
                            <tr>
                                <td>Receipt Date</td><td></td>
                                <td>Receipt No.</td><td><asp:TextBox ID="receiptno" runat="server" /><asp:RequiredFieldValidator ID="receipt" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="receiptno"></asp:RequiredFieldValidator></td>


                            </tr>
                    <tr> <td> </td><td></td><td><br /><br /><asp:Button Height="40px" Width="130px" ID="suwater"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /><br /><br /></td><td></td></tr>
                            
                    
                        </table>
                        
                        
                     </asp:View>
                    
                    <asp:View ID="View2" runat="server">
                        <table class= "viewtable" >
                            <tr class="tablerow">
                              <td>Sewer conn Fees</td>
                                <td><asp:TextBox ID="sewcon" runat="server" /><asp:RequiredFieldValidator ID="sewercon" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="sewcon"></asp:RequiredFieldValidator></td>
                                <td>Security</td>
                                <td><asp:TextBox ID="secrt" runat="server" /><asp:RequiredFieldValidator ID="secrty" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="secrt"></asp:RequiredFieldValidator></td>
                                <td>Charge</td>
                                <td><asp:TextBox ID="chh" runat="server" /><asp:RequiredFieldValidator ID="chrgg" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="chh"></asp:RequiredFieldValidator>
                                  
                                </td>
                               
                            </tr>

                            <tr class="tablerow">
                                <td>Road Cut Charges</td>
                                <td><asp:TextBox ID="roadctt" runat="server" /><asp:RequiredFieldValidator ID="road" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="roadctt"></asp:RequiredFieldValidator></td>
                                <td>Processing Fees</td>
                                <td><asp:TextBox ID="pfeess" runat="server" /><asp:RequiredFieldValidator ID="feeproc" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="pfeess"></asp:RequiredFieldValidator></td>
                                <td>Panalty Fees</td>
                                <td><asp:TextBox ID="panltfees" runat="server" /><asp:RequiredFieldValidator ID="panl" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="panltfees"></asp:RequiredFieldValidator></td>
                                
                            </tr>
                            <tr class="tablerow">
                                <td>Sewer Sanction No</td>
                                <td><asp:TextBox ID="sewersno" runat="server" /><asp:RequiredFieldValidator ID="sewerno" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="sewersno"></asp:RequiredFieldValidator></td>
                                <td>Sewer Sanction Date</td>
                                <td></td>
                                <td>WC</td>
                                <td><asp:TextBox ID="wc" runat="server" /><asp:RequiredFieldValidator ID="wcc" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="wc"></asp:RequiredFieldValidator></td>
                                
                                
                            </tr>
                              <tr class="tablerow">
                                  <td>No. Of Urinals</td>
                                <td><asp:TextBox ID="uno" runat="server" /><asp:RequiredFieldValidator ID="nouri" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="uno"></asp:RequiredFieldValidator></td>
                                
                                <td>Road Cut Size</td><td><asp:TextBox ID="rcsize" runat="server" /><asp:RequiredFieldValidator ID="roadsize" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rcsize"></asp:RequiredFieldValidator></td>
                                <td>Total Charges</td><td><asp:TextBox ID="tcharg1" runat="server" /><asp:RequiredFieldValidator ID="totac1" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="tcharg1"></asp:RequiredFieldValidator></td>
                                </tr>
                            <tr class="tablerow">

                                  <td>Book No.</td><td><asp:TextBox ID="bno" runat="server" /><asp:RequiredFieldValidator ID="booknn" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="bno"></asp:RequiredFieldValidator></td>
                              <td>Receipt No.</td><td><asp:TextBox ID="recptnoo" runat="server" /><asp:RequiredFieldValidator ID="Rnoo" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="recptnoo"></asp:RequiredFieldValidator></td>
                            <td>Receipt Date</td>

                            </tr>
                    <tr> <td> </td><td></td><td><br /><br /><asp:Button Height="40px" Width="130px" ID="Button1"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /><br /><br /></td><td></td></tr>
                            
                        </table>
                     </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="viewtable" >
                            <tr class="tablerow">
                          <td>    <h4><u>Mislaneous</u></h4></td>
                            </tr>
                            <tr class="tablerow">
                              <td>Panalty Charge</td>
                                <td><asp:TextBox ID="ppcharg" runat="server" /><asp:RequiredFieldValidator ID="panchargg" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="ppcharg"></asp:RequiredFieldValidator></td>
                                <td>Panalty Reason</td>
                                <td><asp:TextBox ID="preson" runat="server" /><asp:RequiredFieldValidator ID="panreson" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="preson"></asp:RequiredFieldValidator></td>
                                <td>Book No.</td>
                                <td><asp:TextBox ID="bookn" runat="server" /><asp:RequiredFieldValidator ID="booknno" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="bookn"></asp:RequiredFieldValidator>
                                  
                                </td>
                               
                            </tr>
                            <tr class="tablerow">
                              <td>Total Charge</td>
                                <td><asp:TextBox ID="tch" runat="server" /><asp:RequiredFieldValidator ID="tchh" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="tch"></asp:RequiredFieldValidator></td>
                                <td>Receipt No.</td>
                                <td><asp:TextBox ID="rnon" runat="server" /><asp:RequiredFieldValidator ID="reciptnn" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rnon"></asp:RequiredFieldValidator></td>
                              <td>Receipt Date</td>
                                 </tr>
                                                <tr class="tablerow"><td><h4><u>Occupation</u></h4></td></tr>
                              <tr class="tablerow">
                              <td>Date</td>
                                <td></td>
                                <td>Occupation No.</td>
                                <td><asp:TextBox ID="occnn" runat="server" /><asp:RequiredFieldValidator ID="occupn" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="occnn"></asp:RequiredFieldValidator></td>
                              <td>Occupied</td><td>
                                  <asp:CheckBox ID="occupie" runat="server" />Yes</td>
                                 </tr>
                            <tr> <td> </td><td></td><td><br /><br /><asp:Button Height="40px" Width="130px" ID="suwaterr"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /><br /><br /></td><td></td></tr>
                        </table>
                     </asp:View>
                     <asp:View ID="View4" runat="server">
                        <table class="viewtable" >
                            <tr class="tablerow">
                              <td>Meter No.</td>
                                <td><asp:TextBox ID="metern" runat="server" /><asp:RequiredFieldValidator ID="meternnm" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="metern"></asp:RequiredFieldValidator></td>
                                <td>Receipt No.</td>
                                <td><asp:TextBox ID="rcptno" runat="server" /><asp:RequiredFieldValidator ID="rcptt" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rcptno"></asp:RequiredFieldValidator></td>
                                <td>Installation Date</td>
                                <td> </td>
                               
                            </tr>
                            <tr class="tablerow">
                              <td>Receipt Date</td>
                                <td><asp:TextBox ID="rcptdat" runat="server" /><asp:RequiredFieldValidator ID="rrdate" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rcptdat"></asp:RequiredFieldValidator></td>
                                <td>Initial Reading</td>
                                <td><asp:TextBox ID="initred" runat="server" /><asp:RequiredFieldValidator ID="initialred" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="initred"></asp:RequiredFieldValidator></td>
                                <td>Book No.</td>
                                <td><asp:TextBox ID="bbno" runat="server" /><asp:RequiredFieldValidator ID="bookkno" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="bbno"></asp:RequiredFieldValidator>
                              </td>
                               
                            </tr>
                            <tr><td></td><td></td><td></td><td></td><td>Testing Fees</td><td><asp:TextBox ID="tfees" runat="server" />
                    <asp:RequiredFieldValidator ID="testfee" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="tfees"></asp:RequiredFieldValidator>
                     </td></tr>
                     <tr> <td> </td><td></td><td><br /><br /><asp:Button Height="40px" Width="130px" ID="Button2"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /><br /><br /></td><td></td></tr>

                        </table>
                     </asp:View>
                     <asp:View ID="View5" runat="server">
                        <table class="viewtable" >
                            <tr class="tablerow">
                              <td>Disconnection Date</td>
                                <td></td>
                                <td>Reading</td>
                                <td><asp:TextBox ID="readng" runat="server" /><asp:RequiredFieldValidator ID="readingf" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="readng"></asp:RequiredFieldValidator></td>
                                <td>Receipt Date</td>
                                <td> </td>
                               
                            </tr>
                            <tr class="tablerow">
                              <td>Receipt No</td>
                                <td><asp:TextBox ID="rcptnonm" runat="server" /><asp:RequiredFieldValidator ID="Receiptnom" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rcptnonm"></asp:RequiredFieldValidator></td>
                                <td>Book No.</td>
                                <td><asp:TextBox ID="bkno" runat="server" /><asp:RequiredFieldValidator ID="bknom" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="bkno"></asp:RequiredFieldValidator></td>
                                 </tr>
                            <tr class="tablerow">
                              <td>Disconnection Fees</td>
                                <td><asp:TextBox ID="disfees" runat="server" /><asp:RequiredFieldValidator ID="dconnectfee" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="disfees"></asp:RequiredFieldValidator></td>
                                <td>Disconnect</td>
                                <td><asp:CheckBox ID="disconst" runat="server" /></td>
                        </tr>
                            <tr><td></td><td></td><td>Reason</td>
                                <td><asp:TextBox ID="resonn" runat="server" /></td></tr>
         <tr> <td> </td><td></td><td><br /><br /><asp:Button Height="40px" Width="130px" ID="Button3"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /><br /><br /></td><td></td></tr>

                        </table>
                     </asp:View>
                     <asp:View ID="View6" runat="server">
                        <table class="viewtable" >
                            <tr class="tablerow">
                              <td>Receipt Date</td>  <td></td></tr>
                          <tr class="tablerow"><td>Receipt No.</td>
                                <td><asp:TextBox ID="rcpttno" runat="server" /><asp:RequiredFieldValidator ID="rcpttnn1" runat="server" ErrorMessage="*Error" CssClass="waterc" ControlToValidate="rcpttno"></asp:RequiredFieldValidator></td>
                </tr>  <tr class="tablerow"><td>Book No</td><td><asp:TextBox ID="bkkno" runat="server" /><asp:RequiredFieldValidator ID="bkknomn" runat="server" CssClass="waterc" ErrorMessage="*Error" ControlToValidate="bkkno"></asp:RequiredFieldValidator></td>
                              </tr><tr class="tablerow">
                           <td>Reconnection Fees</td><td><asp:TextBox ID="reconfee" runat="server" /></td></tr>
                 <tr> <td></td><td><asp:Button Height="40px" Width="130px" ID="Button4"  runat="server" OnClick="suwater_Click" Text="Save" BorderColor="White" ForeColor="#000066"  /></td><td></td><td></td><td><br /><br /><br /><br /></td><td></td></tr>

                        </table>
                     </asp:View>
                    
                </asp:MultiView>

            </td>

        </tr>
        
    </table> 


          </div>

</asp:Content>

