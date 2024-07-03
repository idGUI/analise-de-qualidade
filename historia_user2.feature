            #language: pt

            Funcionalidade: Login na Plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Dado que estou na página de acesso da EBAC-SHOP

            Cenário: Autenticação com sucesso
            Quando eu digitar o login válido "gui.cunha@ebac.com"
            E senha válida "Senha@123"
            Então deve redirecionar o usuário à página de "checkout"

            Cenário: Falha de autenticação
            Quando eu digitar o login inválido "joao@asdfg.com"
            E senha inválida "123456"
            Então deve receber o alerta "Usuário ou Senha inválido!"

            Esquema do Cenário: Múltiplos casos de Autenticação
            Quando eu digitar o <usuario>
            E senha <senha>
            Então deve exibir o <resultaodo>

            Exemplos:
            | usuario               | senha     | Resultado                             |
            | gui.cunha@ebac.com    | senha@123 | será redirecionado a tela checkout    |
            | naovalidado@email.com | senha@123 | Mensagem "Usuário ou senha inválido!" |
            | joao.silva@ebac.com   | 123456    | Mensagem "Usuário ou senha inválido!" |
            | joao.silva@ebac.com   | senha@123 | será redirecionado a tela checkout    |
