# Emailing Local Testing

Install and configure MailHog using this instructions: [MailHog - GitHub](https://github.com/mailhog/MailHog)

Open the file ```WEB-INF/auth/emailCron.jsp``` and edit this lines with the testing SMTP.

```bash
	Properties props = new Properties();
	props.put("mail.smtp.host","127.0.0.1");
	props.put("mail.smtp.port","1025");
```

Access the "mail client" using this url: http://127.0.0.1:8025