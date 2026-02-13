Integração realizada com a API pública ViaCEP para consulta automática de endereço a partir do CEP informado no cadastro do aluno.

🔗 API utilizada:
https://viacep.com.br

🔗 Endpoint utilizado no projeto:
https://viacep.com.br/ws/{CEP}/json/

A integração foi implementada via HTTP Callout em Apex, com retorno em JSON e preenchimento automático dos campos de endereço no formulário LWC.
