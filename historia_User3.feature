            #language: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Dado que foi feita autenticação de login e senha com sucesso
            E que eu esteja na página de cadastro para finalização de conta

            Cenário: Preenchimento do cadastro
            Quando eu inserir todos os campos obrigatórios marcados com asteriscos
            Então o cadastro será criado com sucesso
            E será habilitado o campo para escolha de "Forma de Pagamento"

            Cenário: Cadastro com e-mail inválido
            Quando eu inserir todos os campos obrigatórios marcados com asteriscos
            E preencher o e-mail com um formato inválido
            Então o sistema deve exibir o alerta "E-mail no formato inválido!"
            E não deve criar o cadastro

            Cenário: Cadastro com campos obrigatórios vazios
            Quando eu inserir os dados em alguns campos obrigatórios
            E deixar um ou mais campos vazios
            Então será exibido um alerta "Preencha os campos obrigatórios marcados com asteriscos!"
            E não deve criar o cadastro

            Esquema do Cenário: Múltiplos casos de cadastro de cliente
            Quando eu inserir todos os campos obrigatórios marcados com asteriscos
            E clico em "Finalizar Compra"
            Então o sistema deve apresentar um <ResultadoEsperado>

            Exemplos:
            | Nome      | Sobrenome | País   | Endereço    | Cidade         | CEP       | Telefone    | E-mail                     | ResultadoEsperado                                                  |
            | Guilherme | Cunha     | Brasil | Rua A, 123  | São Paulo      | 12345-678 | 11987654321 | gui.cunha@ebac.com         | Cadastro criado com sucesso, habilitada "Forma de Pagamento"       |
            | Maria     | Souza     | Brasil | Rua B, 456  | Rio de Janeiro | 23456-789 | 21987654321 | maria.souza@exemplo        | Formato de e-mail inválido, exibir alerta                          |
            | Pedro     | Oliveira  | Brasil |             | Recife         | 34567-890 | 31987654321 | pedro.oliveira@exemplo.com | Todos os campos obrigatórios devem ser preenchidos, exibir  alerta |
            | Ana       | Costa     | Brasil | Rua C, 789  | Salvador       | 45678-901 | 41987654321 |                            | Todos os campos obrigatórios devem ser preenchidos, exibir alerta  |
            | Carla     | Ferreira  | Brasil | Rua D, 1011 | Belo Horizonte | 56789-012 | 51987654321 | carla.ferreira@exemplo.com | Cadastro criado com sucesso, habilitada "Forma de Pagamento"       |
