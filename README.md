# Projeto BDD com Cucumber

<img src="https://github.com/carolprotasio/bdd_cucumber/blob/main/assets/cucumber-experience.png" alt="web" width="1000"/>

## 📋 Sobre o Projeto

  O projeto **BDD com Cucumber** tem como objetivo aplicar práticas avançadas de **Behavior-Driven Development (BDD)**, utilizando **Ruby** e **Gherkin** para o desenvolvimento de testes automatizados. 
  
  Baseado no site fictício **Starbugs Coffee** ([Starbugs Coffee](https://starbugs-qa.vercel.app/)), uma cafeteria virtual, o projeto visa garantir uma experiência de compra funcional e eficiente, com foco em catálogo de produtos, checkout e aplicação de cupons. 
  
  Ao longo do desenvolvimento, foram implementados cenários detalhados para verificar a funcionalidade completa do sistema, desde o catálogo de produtos até o processo de compra e finalização de pedidos. 
  
  Este projeto é ideal para exemplificar uma abordagem prática de BDD, em que requisitos do sistema são especificados de maneira acessível para todos os envolvidos, desde desenvolvedores até profissionais de negócios e stakeholders. 
  Além disso, este projeto foi desenvolvido como parte do curso "BDD Discover" da **QAxperience**, um treinamento completo que explora BDD, Gherkin e automação de testes, proporcionando uma visão sólida e prática dos conceitos e permitindo que sejam aplicados diretamente no código.

## 🛠️ Tecnologias Utilizadas

As seguintes tecnologias e ferramentas foram usadas neste projeto:

- **Ruby**: linguagem principal do projeto
- **Capybara**: para simulação de ações de usuário
- **RSpec**: framework de testes utilizado para asserções
- **Cucumber**: para escrever cenários de teste em Gherkin
- **Selenium WebDriver**: para a execução de testes automatizados em diferentes navegadores

## 🔍 Cenários de Teste e Critérios de Aceitação

O projeto foi desenvolvido usando o formato BDD, utilizando a sintaxe do **Gherkin** para descrever cenários e definir critérios de aceitação de forma clara e compreensível. 
Cada cenário representa um caso de uso do usuário final e é executado para verificar se o sistema responde conforme esperado.


### ⚙️ Funcionalidade: Catálogo de Cafés

1. 🧪 **Cenário**: Acessar o catálogo de cafés na página principal  
   **Objetivo**: Validar se a lista de cafés é exibida corretamente na página principal.  
   **Critérios de Aceitação**:
   - Ao acessar a página principal, o usuário deve ver uma lista de cafés disponíveis para escolha.

2. 🧪 **Cenário**: Iniciar a compra de um café  
   **Objetivo**: Verificar se é possível iniciar a compra de um café específico e visualizar detalhes no checkout.  
   **Critérios de Aceitação**:
   - O usuário seleciona o café "Expresso Gelado" com preço e entrega especificados e, ao iniciar a compra, é direcionado à página de checkout.
   - O valor total deve ser exibido corretamente, somando produto e entrega.

3. 🧪 **Cenário**: Café indisponível  
   **Objetivo**: Garantir que um produto indisponível exibe uma mensagem ao usuário.  
   **Critérios de Aceitação**:
   - Ao tentar comprar o "Expresso Cremoso", o sistema exibe um popup informando indisponibilidade do produto.
  
<img src="https://github.com/carolprotasio/bdd_cucumber/blob/main/assets/catalago_cafe.png" alt="web" width="1000"/>

### ⚙️ Funcionalidade: Uso de Cupons no Checkout

1. 🧪 **Cenário**: Aplicar desconto de 20%  
   **Objetivo**: Validar o funcionamento do cupom de desconto aplicável ao checkout.  
   **Critérios de Aceitação**:
   - Aplicação do cupom "MEUCAFE" deve reduzir o valor total em 20%.

2. 🧪 **Cenário**: Cupom expirado  
   **Objetivo**: Garantir que um cupom expirado exibe a mensagem correta e não altera o valor total.  
   **Critérios de Aceitação**:
   - Ao aplicar o cupom "PROMO20", o sistema informa que o cupom expirou e mantém o valor total original.

3. 🧪 **Cenário**: Cupom inválido  
   **Objetivo**: Confirmar que cupons inválidos exibem uma notificação e mantêm o valor inalterado.  
   **Critérios de Aceitação**:
   - Ao inserir um cupom inválido como "PROMO100", o sistema deve notificar o erro e manter o valor do pedido.
  
<img src="https://github.com/carolprotasio/bdd_cucumber/blob/main/assets/cupom_checkout.png" alt="web" width="1000"/>


### ⚙️ Funcionalidade: Pedidos

1. 🧪 **Cenário**: Compra bem-sucedida  
   **Objetivo**: Validar o processo de compra desde a seleção do item até a confirmação do pedido.  
   **Critérios de Aceitação**:
   - O usuário seleciona o item "Expresso Tradicional" e insere o CEP e detalhes de endereço.
   - Ao escolher o pagamento com "Cartão de Débito" e finalizar a compra, o sistema redireciona para a página de confirmação com prazo estimado de entrega.

<img src="https://github.com/carolprotasio/bdd_cucumber/blob/main/assets/pedidos.png" alt="web" width="1000"/>

## 💻 Como Executar o Projeto

1. **Pré-requisitos**: Certifique-se de ter o [Ruby](https://www.ruby-lang.org/en/downloads/) e o [Bundler](https://bundler.io/) instalados.
2. Clone o repositório:

   ```bash
   git clone https://github.com/carolprotasio/bdd_cucumber.git
   ```
3. Instale as dependências do projeto:
    ```bash
   bundle install
   ```
4. Execute os testes:
   
    ```bash
    bundle exec cucumber
    ```

# 🚀 Conclusão
Este projeto foi desenvolvido como parte do curso BDD Discover da QAxperience. 
O curso aborda os conceitos de BDD e o uso do Gherkin para a criação de testes automatizados. 
A aplicação prática de BDD com Cucumber possibilitou uma compreensão mais aprofundada da metodologia, destacando os benefícios de ter requisitos claros e bem definidos.

   
