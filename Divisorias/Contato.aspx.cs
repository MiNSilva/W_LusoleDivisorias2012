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
            try
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
                message.Append("========================================");

                resultado = EnviaEmail.EnviarEmail("lusolem@yahoo.com.br", txtEmail.Text, "Contato Site", message.ToString());

                if (String.IsNullOrEmpty(resultado))
                {
                    LblMessage.Text = "Mensagem enviada com sucesso!";
                    txtNome.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtTelefone.Text = string.Empty;
                    txtAssunto.Text = string.Empty;
                    txtMessage.Text = string.Empty;
                    btnEnviar.Enabled = false;
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