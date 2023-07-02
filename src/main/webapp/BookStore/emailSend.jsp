<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.mail.internet.MimeMessage.RecipientType" %>

<%

//SendMail sendmail = new SendMail();
//sendmail.sendMail();

String email = request.getParameter("email");


final String username = "rywls223@gmail.com";        
final String password = "bsngczcnvbtaxedu";			

		Random random = new Random();
		int checkNum = random.nextInt(999)+111;	


Properties props = new Properties();    
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.host", "smtp.gmail.com");	
props.put("mail.smtp.port", "587");				
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.socketFactory.port", "465"); 
props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory"); 
props.put("mail.smtp.socketFactory.fallback", "false");

  
  
  Session sessions = Session.getInstance(props, new Authenticator() {
	  protected PasswordAuthentication getPasswordAuthentication() {
          return new PasswordAuthentication(username, password);
        }
  });
  
  
  try {
	
      Message message = new MimeMessage(sessions);
      message.setFrom(new InternetAddress(username));

      message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));

      message.setSubject("리사이클링 북스토어 인증번호 안내");

      message.setText("인증번호 : " + String.valueOf(checkNum));

      Transport.send(message);
      System.out.println("message sent ...");
  } catch (AddressException e) {
	  e.printStackTrace();
  } catch (MessagingException e) {
	  e.printStackTrace();
  }
  
  
%>

<!DOCTYPE html>
<html>
<head> </head>
 <style>html, body { margin: 0; padding: 0; height: 100%; text-align: center; }
    header { width: 100%; height: 15%; }
    nav { width: 20%; height: 70%; float: left; }
    section { width: 60%; height: 70%; float: left; }
    aside { width: 20%; height: 70%; float: left; }
    footer { width: 100%; height: 15%; ; }</style>
    <body><header class="header"></header> 
        <nav class="nav"></nav>
        <section class="section"><p>
            <h1><%=email %>로 메일 전송 완료했습니다.</h1>
            <h3>뒤로가기를 눌러 메일에 표시된 인증번호를 입력해 주세요.</h3>
	 </section>
     <aside class="aside"></aside>
     <footer class="footer"></footer>
    </body>
</body>
</html>