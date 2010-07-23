class Newsletter < ActionMailer::Base
  
    #se precisar os parametros são Email.deliver_padrao(corpo, "Assunto",email para&nbsp;&nbsp; #enviar(destino), email para resposta)
    def enviar(corpo, assunto, email = "juntoscom@betotricoli.com.br",responder = "juntoscom@betotricoli.com.br")
        recipients email
        from "Beto Tricoli <juntoscom@betotricoli.com.br>"
        subject assunto
        reply_to responder
        body :corpo => corpo
    end
end
