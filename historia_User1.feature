            #languade: pt

            Funcionalidade: Carrinho de Compra
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Dado que eu tenha validado meu acesso com login e senha
            E acesado a página do produto escolhido

            Cenário: Escolha do produto
            Quando eu escolher a cor do produto "Amarela"
            E escolher o tamanho do produto "G"
            Então deve habilitar o campo de quantidade

            Cenário: Escolha a quantidade
            Dado que a quantidade do produto se limita a 10 unidades
            Quando eu escolher a quantidade de produtos "5"
            Então deve habilitar o botão de "Compra"

            Cenário: Limpar opções de escolha
            Dado que eu esteja na página do produto
            E tenha selecionado minhas preferências de cor, tamanho e quantidade
            | Cor     | Tamanho | Quantidade |
            | Amarela | G       | 5          |
            Quando clicar no botão "Limpar"
            Então redefinir as escolhas de quantidade, cor e tamanho do produto

            Esquema do Cenário: Múltiplos casos de compra de produto
            Quando eu selecionar a <cor> do produto
            E selecionar o <tamanho> do produto
            E selecionar a <quantidade>
            Então deve habilitar a opção de Comprar

            Exemplos:
            | Cor      | Tamanho | Quantidade | Habilitar Botão de Compra |
            | Branco   | P       | 5          | Sim                       |
            | Azul     | GG      | 0          | Não                       |
            | Vermelho | -       | 10         | Não                       |
            | Amarela  | PP      | 2          | Sim                       |





