import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

main() async {
  // Configura as credenciais SMTP do Gmail
  final smtpServer =
      gmail('matheuspereira2212@gmail.com', 'zdce khza khto qzcx');
      

  // Cria uma mensagem de e-mail
  final message = Message()
    ..from = Address(
        'matheuspereira2212@gmail.com', 'Matheus Pereira Menezes')
    ..recipients.add('matheus.pereira62@aluno.ifce.edu.br')
    ..subject = 'EMAIL ENVIADO COM DART SMTP'
    ..text =
        'LOREM IPSUM ASDASFAJSGDFAHSKHDFUYASGDKFH JXSBCVA GFAGSDJHFBAHSDGFADSUFGASKJHD GASDFJGAJSDFASGDFHJG ASDGFJASHDGFJHSADJFG ASGDFJHSADGFJASGDFJHAGSD FJAHSGDFJAGSDJFHAGSDFAG SJHGDFAJSGDFJAS';

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
