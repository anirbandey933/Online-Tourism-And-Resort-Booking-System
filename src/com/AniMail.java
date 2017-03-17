package com;
import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

class AniMail
{
	public static void main(String[] args)
	{
        String to="das.amal777@gmail.com";
		Properties props=new Properties();
		props.put("mail.smtp.host","smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port","465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth","true");
		props.put("mail.smtp.port","465");
		Session session=Session.getDefaultInstance(props,new javax.mail.Authenticator()
						{
							protected PasswordAuthentication getPasswordAuthentication()
							{
								return new PasswordAuthentication("mscbscmsc@gmail.com","chhatarmatha");
							} 
						});
			//compose message
		try
		{
			MimeMessage message=new MimeMessage(session);
			message.setFrom(new InternetAddress("mscbscmsc@gmail.com"));
			message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
			message.setSubject("Hello");
			message.setText("Salute to JAVA.");
			
			//send message
			Transport.send(message);
			System.out.println("Message sent successfully");
		}
		catch (MessagingException e)
		{
			throw new RuntimeException(e);
		}
	}
}
