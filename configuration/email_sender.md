# Email Sender





```xml
<bean id="MailLoader" class="com.oopsclick.silk.utils.MailLoader" init-method="init" >
	<property name="host" value="" />
	<property name="ssl" value="true" />
	<property name="tls" value="false" />
	<property name="auth" value="true" />
	<property name="account" value="" />
	<property name="password" value="" />
	<property name="debug" value="true" />
	<property name="target" value="true" >
		<array>
			<value>Sql-Controller-name</value>
		</array>
	</property>
</bean>
```



## Properties

| Name     | Description                                                  |
| -------- | ------------------------------------------------------------ |
| host     | Sets the SMTP server that will be used to send the emails.   |
| port     | Sets the SMTP port. If it is not provided, it defaults to port 587 if the property **tls** is set to *true*, or to port 465 if the **ssl** property is set to *true*. |
| auth     | Sets whether the SMTP connection requires authentication. If set to true, the account and password properties must be provided. |
| ssl      | Set to true if the connection uses SSL security layer. Should not be used together with the *tls* property. |
| tls      | Set to true if the connection uses TLS security layer. Should not be used together with the *ssl* property. |
| account  | Account registered in the SMTP server.                       |
| passwrod | Password of the registered account.                          |
| debug    | If set to *true* it will send log messages to the console.   |
| target   | A list of SQL Controllers capable of receiving email records. The default value is *SilkSqlController* |

