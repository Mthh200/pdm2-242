import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server/gmail.dart';

main() async {
  // Configura as credenciais SMTP do Gmail
  final smtpServer = gmail('email', 'senha');

  // Cria uma mensagem de e-mail
  final message = Message()
    ..from = Address('email', 'Matheus Pereira Menezes')
    ..recipients.add('destinatario')
    ..subject = 'EMAIL ENVIADO COM DART SMTP'
    ..text = 'LOREM IPSUM ASDASFAJSGDFAHSKHDFUYASGDKFH JXSBCVA GFAGSDJHFBAHSDGFADSUFGASKJHD GASDFJGAJSDFASGDFHJG ASDGFJASHDGFJHSADJFG ASGDFJHSADGFJASGDFJHAGSD FJAHSGDFJAGSDJFHAGSDFAG SJHGDFAJSGDFJAS';

  try {
    // Envia o e-mail usando o servidor SMTP do Gmail
    final sendReport = await send(message, smtpServer);

    // Exibe o resultado do envio do e-mail
    print('E-mail enviado: ${sendReport.toString()}');
  } on MailerException catch (e) {
    // Exibe informações sobre erros de envio de e-mail
    print('Erro ao enviar e-mail: ${e.toString()}');
  }
}
