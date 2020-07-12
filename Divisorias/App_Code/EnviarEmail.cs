using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

public class EnviaEmail
{
    public static string EnviarEmail(string EmailTo, string EmailReplyTo, string Assunto, string Mensagem)
    {

        string retorno = DBNull.Value.ToString();

        // Configurações do Email
        MailMessage mail = new MailMessage();
        mail.From = new MailAddress(EmailReplyTo + "<sistema@diapoio.com.br>");
        mail.To.Add(FormatMultipleEmailAddresses(EmailTo));
        if (!string.IsNullOrEmpty(EmailReplyTo))
        {
            mail.ReplyTo = new MailAddress(EmailReplyTo);
        }
        mail.IsBodyHtml = true;
        //Define Prioridade
        mail.Priority = MailPriority.Normal;
        //Determina a codificação da mensagem no padrão brasileiro
        mail.BodyEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1");
        //Determina a codificação do assunto da mensagem no padrão brasileito
        mail.SubjectEncoding = System.Text.Encoding.GetEncoding("ISO-8859-1");
        //Assunto do email
        mail.Subject = Assunto;
        //Define o conteúdo da mensagem
        mail.Body = Mensagem;

        //Instancia o objeto de envio da mensagem
        SmtpClient smtp = new SmtpClient();
        //Determina o servidor de envio da mensagem
        smtp.Host = "smtp.zoho.com";
        //Determina a porta do servidor SMTP
        smtp.Port = Convert.ToInt16("587");
        //Credencial
        smtp.UseDefaultCredentials = false;
        //Instancia o objeto que permite fazer autenticação no envio de e-mails via SMTP
        smtp.Credentials = new System.Net.NetworkCredential("sistema@diapoio.com.br", "Did!sed3@123");
        //SSL
        smtp.EnableSsl = true;

        try
        {
            //Envia a mensagem
            smtp.Send(mail);
        }
        catch (Exception ex)
        {
            retorno = ex.Message.ToString();
        }
        mail.Dispose();
        return retorno;
    }

    public static string FormatMultipleEmailAddresses(string emailAddresses)
    {
        var delimiters = new[] { ',', ';' };

        var addresses = emailAddresses.Split(delimiters, StringSplitOptions.RemoveEmptyEntries);

        return string.Join(",", addresses);
    }
}
