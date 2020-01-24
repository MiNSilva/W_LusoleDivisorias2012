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

    }
    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            //Instancia o objeto que monta a mensagem já passando como parâmetro o e-mail do remetente e destinatário
            MailMessage mail = new MailMessage(txtEmail.Text, "contato@lusole.com.br");

            //Define o CC(Com Cópia) e CCO(Com cópia oculta) caso tenha sido informado
            //mail.CC.Add("contato@apasbraganca.com.br");
            //mail.Bcc.Add("contato@apasbraganca.com.br");

            //Define o asunto da mensagem
            mail.Subject = txtAssunto.Text;


            //Define o conteúdo da mensagem
            StringBuilder message = new StringBuilder();

            message.Append("<b>Visitante Contato</b>" + "<br>");
            message.Append("========================================" + "<br>");
            message.Append("<b>Nome:</b> " + txtNome.Text + "<br>");
            message.Append("<b>Email:</b> " + txtEmail.Text + "<br>");
            message.Append("<b>Telefone:</b> " + txtTelefone.Text + "<br>");
            message.Append("<b>Assunto:</b> " + txtAssunto.Text + "<br>");
            message.Append("<b>Descrição:</b> " + txtMessage.Text + "<br>");
            message.Append("========================================");

            mail.Body = message.ToString();
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.Normal;

            //Determina a codificação da mensagem no padrão brasileiro
            mail.BodyEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1");

            //Determina a codificação do assunto da mensagem no padrão brasileito
            mail.SubjectEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1");

            //Instancia o objeto de envio da mensagem
            SmtpClient smtp = new SmtpClient();

            //Determina o servidor de envio da mensagem
            smtp.Host = "mail.lusole.com.br";

            //Determina a porta do servidor SMTP
            smtp.Port = Convert.ToInt16("587");

            //Instancia o objeto que permite fazer autenticação no envio de e-mails via SMTP
            smtp.Credentials = new System.Net.NetworkCredential("contato@lusole.com.br", "Didisede123");

            try
            {
                //Envia a mensagem
                smtp.Send(mail);
                LblMessage.Text = "Mensagem enviada com sucesso!";
                txtNome.Text = string.Empty;
                txtEmail.Text = string.Empty;
                txtTelefone.Text = string.Empty;
                txtAssunto.Text = string.Empty;
                txtMessage.Text = string.Empty;
                btnEnviar.Enabled = false;
            }
            catch (Exception ex)
            {
                LblMessage.Text = ex.Message;
            }
            mail.Dispose();
        }
        else
        {
            LblMessage.Text = "Complete todos os campos";
        }

    }
}