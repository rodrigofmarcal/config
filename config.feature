            #language: pt

            Funcionalidade: tela de configurar produtos
            Como cliente da Ebac-Shop
            Quero configurar os produtos de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho de compras

            Contexto: Dado que eu acesse a pagina de produtos da loja Ebac-Shop

            Cenário: Adicionado ao carrinho
            Quando eu selecionar o "tamanho", a "cor" e quantidade de no máximo "10" produtos
            E clicar no botão "carrinho"
            Então deve ser exibida a mensagem "adicionado ao carrinho com sucesso"

            Cenário: Não adicionado ao carrinho
            Quando eu selecionar o "tamanho", a "cor" e a quantidade acima de "10" produtos
            E clicar no botão "carrinho"
            Então deve ser exibida a mensagem de alerta "Não adicionado, quantidade máxima por vez extrapolada"

            Cenário: Página voltada ao estado original
            Quando eu selecionar o "tamanho", a "cor" e a quantidade de no máximo "10" produtos
            E clicar no botão "Limpar"
            Então deve "voltar a página inicial dos produtos"

            Esquema do Cenário: Configurar múltiplos do cenário adicionado ao carrinho
            Quando eu selecionar os itens: <tamanho>, <cor> e quantidade de no máximo <10> produtos
            E clicar no botão <carrinho>
            Então deve ser exibida a <mensagem> de sucesso

            Exemplos:
            | tamanho      | cor       |quantidade| mensagem                            |
            | "tamanho s"  | "blue"    |   "1"    |"adicionado ao carrinho com sucesso" |
            | "tamanho m"  | "red"     |   "2"    |"adicionado ao carrinho com sucesso" |
            | "tamanho l"  | "orange"  |   "6"    |"adicionado ao carrinho com sucesso" |