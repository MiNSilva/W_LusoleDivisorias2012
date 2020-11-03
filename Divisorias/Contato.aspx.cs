using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Contato : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Random number = new Random();

            lblIni.Text = number.Next(50).ToString();
            lblFim.Text = number.Next(50).ToString();

            lblConsentimento.Text = "Estou de acordo em fornecer meu Nome, Email e Telefone para que entre em contato," +
                "bem como estou ciente de que esses dados serão utilizados pelas áreas de Marketing e Comercial para o envio de emails.";
        }
    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = CheckBox1.Checked;
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            try
            {
                int result = Convert.ToInt32(txtresult.Text);

                if (result != (Convert.ToInt32(lblIni.Text) + Convert.ToInt32(lblFim.Text)))
                {
                    return;
                }
                else
                {
                    if (CheckBox1.Checked == true)
                    {
                        string resultado = DBNull.Value.ToString();

                        //Define o conteúdo da mensagem
                        StringBuilder message = new StringBuilder();


                        message.Append("<b>Visitante Contato</b>" + "<br>");
                        message.Append("========================================" + "<br>");
                        message.Append("<b>Nome:</b> " + txtNome.Text + "<br>");
                        message.Append("<b>Email:</b> " + txtEmail.Text + "<br>");
                        message.Append("<b>Telefone:</b> " + txtTelefone.Text + "<br>");
                        message.Append("<b>Assunto:</b> " + txtAssunto.Text + "<br>");
                        message.Append("<b>Descrição:</b> " + txtMessage.Text + "<br>");
                        message.Append("========================================" + "<br>");
                        message.Append("<b>Consentimento:</b> " + lblConsentimento.Text + "<br>");
                        message.Append("========================================");

                        if (String.IsNullOrEmpty(txtvalidaCampo.Text))
                        {
                            resultado = EnviaEmail.EnviarEmail("lusolem@yahoo.com.br", txtEmail.Text, "Contato Site", message.ToString());

                            if (String.IsNullOrEmpty(resultado))
                            {
                                LblMessage.Text = "Mensagem enviada com sucesso!";
                                txtNome.Text = string.Empty;
                                txtEmail.Text = string.Empty;
                                txtTelefone.Text = string.Empty;
                                txtAssunto.Text = string.Empty;
                                txtMessage.Text = string.Empty;
                                txtresult.Text = string.Empty;
                                CheckBox1.Checked = false;
                                btnEnviar.Enabled = false;
                            }
                        }

                    }
                }
            }
            catch (Exception ex)
            {

                LblMessage.Text = ex.Message;
            }
        }
        else
        {
            LblMessage.Text = "Complete todos os campos";
        }

    }
}