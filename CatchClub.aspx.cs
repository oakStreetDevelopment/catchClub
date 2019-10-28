using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.Mail;


public partial class CatchClub_CatchClub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CatchClubConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("Insert Into CatchClubMembers (First_Name, Last_Name, Email, Telephone, Address, City, State, Zipcode, Marriott_Rewards, Birthday, Anniversary) VALUES (@First_Name, @Last_Name, @Email, @Telephone, @Address, @City, @State, @Zipcode, @Marriott_Rewards, @Birthday, @Anniversary)", conn);
        cmd.CommandType = CommandType.Text;
        cmd.Parameters.AddWithValue ("@First_Name", First_Name.Text);
        cmd.Parameters.AddWithValue("@Last_Name", Last_Name.Text);
        cmd.Parameters.AddWithValue("@Email", Email.Text);
        cmd.Parameters.AddWithValue("@Telephone", Telephone.Text);
        cmd.Parameters.AddWithValue("@Address", Address.Text);
        cmd.Parameters.AddWithValue("@City", City.Text);
        cmd.Parameters.AddWithValue("@State", State.SelectedValue);
        cmd.Parameters.AddWithValue("@Zipcode", Zipcode.Text);
        cmd.Parameters.AddWithValue("@Marriott_Rewards", Rewards.Text);
        cmd.Parameters.AddWithValue("@Birthday", Birthday.SelectedItem.Text);
        cmd.Parameters.AddWithValue("@Anniversary", Anniversary.SelectedItem.Text);
        conn.Open();
        cmd.ExecuteNonQuery();

        const string SERVER = "relay-hosting.secureserver.net";
        MailMessage oMail = new System.Web.Mail.MailMessage();
        oMail.From = "CatchClub@catchwaterside.com";
        oMail.To = "Aaron.Berger@marriott.com";
        oMail.Subject = "<b>New Catch Club Member</b>";
        oMail.BodyFormat = MailFormat.Html; // enumeration
        oMail.Priority = MailPriority.High; // enumeration
        oMail.Body = "<b>Sent at:</b> " + DateTime.Now + "</br> <b> First Name: </b>" + First_Name.Text + "</br> <b> Last Name: </b>" + Last_Name.Text + "</br> <b> Email: </b>" + Email.Text + "</br> <b> Telephone: </b>" + Telephone.Text + "</br> <b> Address: </b>" + Address.Text + "</br> <b> City: </b>" + City.Text + "</br> <b> State: </b>" + State.SelectedValue + "</br> <b> Zipcode: </b>" + Zipcode.Text + "</br> <b> Marriott Rewards: </b>" + Rewards.Text + "</br> <b> Birthday: </b>" + Birthday.SelectedItem.Text + "</br> <b> Anniversary: </b>" + Anniversary.SelectedItem.Text;
        SmtpMail.SmtpServer = SERVER;
        SmtpMail.Send(oMail);
        oMail = null; // free up resources
      
        
        Response.Redirect("~/default.aspx");
    
    
    
    }

}