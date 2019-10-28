<%@ Page Title="Catch Club" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CatchClub.aspx.cs" Inherits="CatchClub_CatchClub" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<script type="text/javascript">
    function checkBeforeConfirm()//put this javascript function
    {
        if (Page_ClientValidate() == true)//method to check validations
        {
            var msg1 = "Thank you for your submission";
            var msg2 = " Please click ok to continue";
            if (confirm(msg1 + "\n" + msg2) == true)//confirm after validations check
            {
                return true;
            }
            else {
                return false;
            }
        }
        else {
            return false;
        }
    }


</script>
    
 
    <asp:Panel ID="Panel4" runat="server">
    <table class="direction">
        <tr>
            <td>
                <asp:Image ID="Image6" runat="server" 
                    ImageUrl="~/Images/PageHeaderBars/Header_Bar-CatchClub.jpg" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="Loginlink" runat="server" NavigateUrl="~/CatchClubAdmin/Admin.aspx" ForeColor="DimGray">Admin Login</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:CatchClubConnectionString %>" 
                     
                    InsertCommand="INSERT INTO [CatchClubMembers] ([First_Name], [Last_Name], [Email], [Telephone], [Address], [City], [State], [Zipcode], [Marriott_Rewards], [Birthday], [Anniversary]) VALUES (@First_Name, @Last_Name, @Email, @Telephone, @Address, @City, @State, @Zipcode, @Marriott_Rewards, @Birthday, @Anniversary)" 
                    ProviderName="<%$ ConnectionStrings:CatchClubConnectionString.ProviderName %>" 
                    SelectCommand="SELECT * FROM [CatchClubMembers]" >
                    
                    <DeleteParameters>
                        <asp:Parameter Name="column1" Type="Object" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="column1" Type="Object" />
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zipcode" Type="String" />
                        <asp:Parameter Name="Marriott_Rewards" Type="String" />
                        <asp:Parameter DbType="Date" Name="Birthday" />
                        <asp:Parameter DbType="Date" Name="Anniversary" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="First_Name" Type="String" />
                        <asp:Parameter Name="Last_Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="State" Type="String" />
                        <asp:Parameter Name="Zipcode" Type="String" />
                        <asp:Parameter Name="Marriott_Rewards" Type="String" />
                        <asp:Parameter DbType="Date" Name="Birthday" />
                        <asp:Parameter DbType="Date" Name="Anniversary" />
                        <asp:Parameter Name="column1" Type="Object" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <cc1:Accordion ID="Accordion1" runat="server" SelectedIndex="0" 
                    HeaderCssClass="accordian_header" ContentCssClass="accordian_content" 
                    FadeTransitions="true" FramesPerSecond="50" TransitionDuration="250" 
                    AutoSize="None"   Width="571px"   >
                <Panes>
                <cc1:AccordionPane ID="AccordionPane1" runat="server">
                <Header>
                <asp:Panel ID="panel3" runat="server" Width="570px" Height="26px" BackImageUrl="~/Images/Accordian Bars/Bar-Accordian Medium-AboutCatchClub.jpg"> <a href=""  onclick="return false;" class="accordian_link"></a>
                    
                    </asp:Panel></Header>
                   <Content><table width="560px"><tr><td>&nbsp</td></tr><tr><td> Catch Club is a way for us at Catch to connect with and show our appreciation to our local and repeat guests. We also want to ensure that members stay informed of all the upcoming events and specials here at Catch. Hey you may even have a few free drinks thrown your way. To learn more about the benefits of becoming a Catch Club member click on "Membership Benefits" below. </td></tr><tr><td>&nbsp</td></tr></Table>
           
           </Content>
                </cc1:AccordionPane>
                <cc1:AccordionPane ID="AccordionPane2" runat="server">
                <Header>
                    <asp:Panel ID="panel1" runat="server" Width="570px" Height="26px" BackImageUrl="~/Images/Accordian Bars/Bar-Accordian Medium-MemberCatchclub.jpg" ><a href="" onclick="return false;" class="accordian_link"></a>
                        
                    </asp:Panel>
                    
                     </Header>
                <Content><table> 
                <tr><td>&nbsp</td></tr>
                <tr> <td><b>Members of Catch Club can expect the following:</b></td> </tr>
                <tr><td>&nbsp</td></tr>
                <tr><td>Receive a special offer in your email just for signing up</td></tr>
                <tr><td>Receive updates of all the latest events and specials taking place at Catch</td></tr>
                <tr><td>Receive special offers for Birthdays and Anniversaries</td></tr>
                <tr><td>And we have been know for our occassional random acts of kindness so who knows you might just end up with something free</td></tr>
                <tr><td>&nbsp</td></tr>
                <tr><td><b>So dont miss out on the deals any longer and sign up below today</b></td></tr>
                <tr><td>&nbsp</td></tr>
                
                </table> 
                </Content>
                </cc1:AccordionPane>
                
                <cc1:AccordionPane ID="AccordionPane3" runat="server">
                <Header><asp:Panel ID="panel2" runat="server" Width="570" Height="26px" BackImageUrl="~/Images/Accordian Bars/Bar-Accordian Medium-Signup-Catchclub.jpg"  ><a href="" onclick="return false;" class="accordian_link"></a>
                    
                    </asp:Panel></Header>
                <Content>
                <div>
                <table class="direction">
                <tr>
                <td><asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-FirstName.jpg" /> </td>

                <td><asp:TextBox ID="First_Name" runat="server"></asp:TextBox>  </td>

                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="First_Name"></asp:RequiredFieldValidator> </td>
                </tr>

                <tr>
                <td><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-LastName.jpg" /></td>
                
                <td> <asp:TextBox ID="Last_Name" runat="server"></asp:TextBox></td>

                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="Last_Name"></asp:RequiredFieldValidator> </td>
                </tr>
                
                <tr>
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Email.jpg" /></td>
                <td>
                    <asp:TextBox ID="Email" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="Email"></asp:RequiredFieldValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-ConfirmEmail.jpg" /></td>
                <td>
                    <asp:TextBox ID="Email_Confirm" runat="server"></asp:TextBox></td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" CssClass="Validation" ErrorMessage="Email doesn't match" ControlToCompare="Email" ControlToValidate="Email_Confirm"></asp:CompareValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Telephone.jpg" /></td>
                <td>
                    <asp:TextBox ID="Telephone" runat="server"></asp:TextBox></td>
                <td></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Address.jpg" /></td>
                <td>
                    <asp:TextBox ID="Address" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="Address"></asp:RequiredFieldValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image8" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-City.jpg" /></td>
                <td>
                    <asp:TextBox ID="City" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="City"></asp:RequiredFieldValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image9" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-State.jpg" /></td>
                <td>
                  <asp:DropDownList id="State" runat="server">
 
    <asp:ListItem Value="AL">Alabama</asp:ListItem>
 
    <asp:ListItem Value="AK">Alaska</asp:ListItem>
 
    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
 
    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
 
    <asp:ListItem Value="CA">California</asp:ListItem>
 
    <asp:ListItem Value="CO">Colorado</asp:ListItem>
 
    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
 
    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
 
    <asp:ListItem Value="DE">Delaware</asp:ListItem>
 
    <asp:ListItem Value="FL">Florida</asp:ListItem>
 
    <asp:ListItem Value="GA">Georgia</asp:ListItem>
 
    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
 
    <asp:ListItem Value="ID">Idaho</asp:ListItem>
 
    <asp:ListItem Value="IL">Illinois</asp:ListItem>
 
    <asp:ListItem Value="IN">Indiana</asp:ListItem>
 
    <asp:ListItem Value="IA">Iowa</asp:ListItem>
 
    <asp:ListItem Value="KS">Kansas</asp:ListItem>
 
    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
 
    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
 
    <asp:ListItem Value="ME">Maine</asp:ListItem>
 
    <asp:ListItem Value="MD">Maryland</asp:ListItem>
 
    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
 
    <asp:ListItem Value="MI">Michigan</asp:ListItem>
 
    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
 
    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
 
    <asp:ListItem Value="MO">Missouri</asp:ListItem>
 
    <asp:ListItem Value="MT">Montana</asp:ListItem>
 
    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
 
    <asp:ListItem Value="NV">Nevada</asp:ListItem>
 
    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
 
    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
 
    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
 
    <asp:ListItem Value="NY">New York</asp:ListItem>
 
    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
 
    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
 
    <asp:ListItem Value="OH">Ohio</asp:ListItem>
 
    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
 
    <asp:ListItem Value="OR">Oregon</asp:ListItem>
 
    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
 
    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
 
    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
 
    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
 
    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
 
    <asp:ListItem Value="TX">Texas</asp:ListItem>
 
    <asp:ListItem Value="UT">Utah</asp:ListItem>
 
    <asp:ListItem Value="VT">Vermont</asp:ListItem>
 
    <asp:ListItem Value="VA">Virginia</asp:ListItem>
 
    <asp:ListItem Value="WA">Washington</asp:ListItem>
 
    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
 
    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
 
    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
 
</asp:DropDownList>
  </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="State"></asp:RequiredFieldValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-ZipCode.jpg" /></td>
                <td>
                    <asp:TextBox ID="Zipcode" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" CssClass="Validation" ErrorMessage="Required" ControlToValidate="Zipcode"></asp:RequiredFieldValidator></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Rewards.jpg" /></td>
                <td>
                    <asp:TextBox ID="Rewards" runat="server"></asp:TextBox></td>
                <td></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Birthday.jpg" /></td>
                <td>
                    <asp:DropDownList ID="Birthday" runat="server" >
                    <asp:ListItem Text="Choose One..." Selected="True"></asp:ListItem>
                    <asp:ListItem Text="January"></asp:ListItem>
                    <asp:ListItem Text="February"></asp:ListItem>
                    <asp:ListItem Text="March"></asp:ListItem>
                    <asp:ListItem Text="April"></asp:ListItem>
                    <asp:ListItem Text="May"></asp:ListItem>
                    <asp:ListItem Text="June"></asp:ListItem>
                    <asp:ListItem Text="July"></asp:ListItem>
                    <asp:ListItem Text="August"></asp:ListItem>
                    <asp:ListItem Text="September"></asp:ListItem>
                    <asp:ListItem Text="October"></asp:ListItem>
                    <asp:ListItem Text="November"></asp:ListItem>
                    <asp:ListItem Text="December"></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                </tr>

                 <tr>
                <td>
                    <asp:Image ID="Image13" runat="server" ImageUrl="~/Images/Info Bars/InfoBar-Anniversary.jpg" /></td>
                <td>
                    <asp:DropDownList ID="Anniversary" runat="server">
                    <asp:ListItem Text="Choose One..." Selected="True"></asp:ListItem>
                    <asp:ListItem Text="January"></asp:ListItem>
                    <asp:ListItem Text="February"></asp:ListItem>
                    <asp:ListItem Text="March"></asp:ListItem>
                    <asp:ListItem Text="April"></asp:ListItem>
                    <asp:ListItem Text="May"></asp:ListItem>
                    <asp:ListItem Text="June"></asp:ListItem>
                    <asp:ListItem Text="July"></asp:ListItem>
                    <asp:ListItem Text="August"></asp:ListItem>
                    <asp:ListItem Text="September"></asp:ListItem>
                    <asp:ListItem Text="October"></asp:ListItem>
                    <asp:ListItem Text="November"></asp:ListItem>
                    <asp:ListItem Text="December"></asp:ListItem>
                    </asp:DropDownList>
                    </td>
                <td></td>
                </tr>

                <tr><td colspan="3">&nbsp</td></tr>
                 <tr>
                <td>
                    </td>
                <td>
                    <asp:ImageButton ID="Button1" runat="server" OnClientClick="return checkBeforeConfirm();" OnClick="Button_Click"  ImageUrl="~/Images/Submit.jpg"  /></td>
                <td></td>
                </tr>

                <tr> 
                <td colspan="3" >
                    <asp:ValidationSummary ID="ValidationSummary1" CssClass="Validation" runat="server" /> </td>
                </tr>

                </table>
                </div>
                
                    
           </Content> 
                </cc1:AccordionPane>
                
                
                </Panes>
                    
                   
                    
                </cc1:Accordion>
                
                </td>
        </tr>
        
        
        </table>
     </asp:Panel>
</asp:Content>

