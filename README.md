# Processo seletivo: Gaudium - Desenvolvedor iOS
Bem vindo ao processo seletivo da Gaudium!

### Pré-requisitos
- Xcode 12.5 ou superior
- Cocoapods instalado
- Ter uma conta no GitHub
- Criar uma cópia deste repositório a partir do botão "Use this template" e convidar o usuário gaudiumtecnicos@gmail.com ao repositório criado
- Git instalado para fazer os commits do código no repositório próprio ao longo da prova
    - Caso tenha dificuldades, recomendamos usar o GitHub Desktop
- Internet estável 

## Novo aplicativo de entregas
Um empresário interessado em atuar no ramo de delivery quer lançar seu próprio app no mercado e dominar as entregas de sua região. Ele tentou fazer o aplicativo por conta própria e após muito sofrimento conseguiu fazer uma tela com apenas um mapa e um marcador nele. Maravilhado com o progresso, ele imediatamente decidiu desistir de ser desenvolvedor e contratou a Gaudium para não ter que lidar com código novamente e poder focar no lançamento da marca.

Sua estratégia de lançamento é focar no destaque para o entregador, então quer que a primeira funcionalidade implementada seja uma tela de perfil com os dados recebidos de um banco de dados.

## Introdução

### O código atual
O código segue o modelo padrão do Xcode, em objective C e usando Storyboards, e possui apenas uma tela, a ViewController, que apenas instancia um mapa do Google Maps e exibe um marcador no centro do Rio de Janeiro. 

<img width="320" src="https://user-images.githubusercontent.com/44851937/153958709-18873b65-0ef9-46ff-aa9b-0a9686bcc386.png">

## O desafio
### Instruções
Você deverá clonar o repositório atual em um repositório próprio.
Além disso, deverá convidar o usuário `gaudiumtecnicos@gmail.com` para o seu repositório que ficará com o código da prova.
Ao final de cada item concluído você deverá fazer um commit da alteração e, na descrição do commit, explicar o que foi feito e qual foi a motivação para as decisões tomadas. Após realizar o commit, **não se esqueça de fazer o push.**

### Etapa zero
Alterar o marcador do usuário para que ele fique com o fundo branco. O marcador atual é o `pin_user`, que possui um fundo transparente. A primeira tarefa será trocar o `pin_user` pelo `pin_user_white`, que é melhor de visualizar no mapa.
Ao finalizar essa etapa inicial, vamos fazer um commit deixando claro qual etapa resolvemos e, na descrição, explicar como chegou na solução enviada.
Ex: 

> **Summary:** Etapa zero: Mudança de imagem utilizada no pin do usuário

> **Description:** Como foi solicitado pelo cliente a troca de uma imagem com um nome específico, procurei pelo código qualquer referência à essa imagem, "pin_user", e alterei onde foi encontrado, conforme o solicitado.

### Etapa 1 - Tela para mostrar os dados do entregador e o histórico
O cliente deseja que os entregadores possam verificar a sua página de perfil, exibindo a sua foto e uma bela descrição. Nesta etapa seu trabalho será inserir essa tela ao app de acordo com o layout passado.

#### 1.1 Como devo chegar nessa tela? <!-- 10 minutos -->
Ótimo, temos que fazer uma tela. Mas onde vamos colocar ela? Primeiramente, devemos inserir um acesso à essa tela em algum lugar da tela principal do app. Pense bem como deve ser essa interação para colocar no lugar que você achar mais interessante pro usuário final (entregador) acessar.

#### 1.2 Tela de perfil do entregador <!-- 60 minutos -->
Criar a tela de Perfil conforme a imagem abaixo:

<img width="320" src="https://user-images.githubusercontent.com/44851937/153963743-0ad60e15-7c85-48fc-a887-eabfd0f23d84.png">


    
A tela possui as seguintes regras:
- Os dados são exibidos no final da tela
- A foto do entregador preenche o espaço faltante entre o topo da tela até a view contendo a descrição do perfil, ficando atrás da view semi-transparente. 
- A foto do entregador será fixa e já está presente no projeto com o nome `img_entregador`
- As margens relevantes estão especificados na imagem abaixo. Caso alguma margem não esteja definida, fique à vontade para decidir a mais apropriada.

<img width="460" src="https://user-images.githubusercontent.com/44851937/153964344-42ee11cd-8323-48bd-bc22-b1ea9b3540c1.png">

As cores utilizadas pelos menus são as seguintes:
- View semi-transparente: `#2B76C9` com `80%` de opacidade
- View inferior: `#2E91FE`

Para os textos da tela, seguem as fontes e tamanhos que devem ser utilizados:
- O nome do entregador (Augusto Prado) usa a fonte `System` com espessura `Regular` e tamanho de `24pt` na cor `#FFFFFF`
- O cargo (Coletor) usa a fonte `System` com espessura `Light` e tamanho `16pt` na cor `#DFE9F7`
- A descrição do perfil usa a fonte `System` com espessura `Regular` e tamanho `15pt` na cor `#ECF4FF`.
  
<img width="460" src="https://user-images.githubusercontent.com/44851937/153964603-cb7786c3-d636-4530-963b-63c9682d0658.png">


### Etapa 2 - Perfil hard-coded não faz sentido <!-- 30 minutos -->
Agora que a tela está pronta, não podemos deixar dados fixos. Sendo assim, você deverá consumir a API `/ps/perfil`, descrita abaixo, para obter os dados referentes a esse entregador (nome, cargo, descrição) e preencher nos devidos locais da tela.

A API `/ps/perfil` retorna os seguintes dados:
- `success`, indicando se funcionou ou não
- `response`, com os dados solicitados
- `nome`, com o nome do entregador
- `cargo`, com o cargo referente ao entregador
- `descricao`, texto contendo a descrição do perfil

Segue a estrutura:
url: https://dbgapi-gamadev.taximachine.com.br/ps/ios/perfil.php
```json
{
    "success":"<String contendo "true" ou "false">",
    "response":{
        "nome":"<String com nome do entregador>",
        "cargo":"<String com nome do cargo do entregador>",
        "descricao":"<String com a descrição do perfil>",
    }
}
```
### Conclusões

- Não existe uma forma específica de resolver cada questão. Veja o que você considera como melhor solução considerando a qualidade do resultado, do código e o tempo restante.
- A prova deverá ser realizada com a câmera ligada e microfone no mudo.
- Vocês podem se ausentar sem precisar pedir permissão, apenas fiquem atentos ao tempo restante.
- Em caso de dúvidas, tire o microfone do mudo e chame o responsável pela prova.
  - Caso o responsável não esteja presente no momento, levante a mão pelo Google Meet para que fique sinalizado a dúvida.

E mais importante, boa sorte e boa prova! :)
