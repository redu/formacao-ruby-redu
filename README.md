Exercícios realizados na formação de colaboradores do Redu Open Source.

Lista: rubyredu@googlegroups.com


## Overview do curso

  O curso percorre todas as tecnologias utilizadas na construção de uma Rede Social que em seu ápice, sustentou a interação de 30.000 usuários compartilhando conhecimento. Vamos abordar todas as tecnologias usadas no Redu, assim como a infra-estrutura distribuída que permite o Redu suporte tal quantidade de usuários.

## Objetivos

  Nosso objetivo é capacitar os alunos para serem capazes de contribuir com Redu e torná-lo cada vez melhor. Para isso, vamos percorrer todas as tecnologias e ferramentas, incluindo Ruby, Ruby on Rails, MySQL, MongoDB, Solr, Chef, Delayed Job e outras, usadas na construção e manutenção do Redu como plataforma.

## Proposta do Projeto

  Para alcançar tais objetivos, teremos como um guia o desenvolvimento de um pequeno projeto que introduz o uso de algumas ferramentas:

### Mini Rede-Social - Minedu

  Desenvolveremos uma mini rede-social, onde é possível um usuário se tornar amigo de outros usuários e trocar mensagens entre eles.

Requisitos:

- Usuário deve se cadastrar na Minedu através de e-mail e senha
- Usuário logado pode:
  - Ver seu próprio perfil, o perfil terá:
    - Dados sobre o usuário
    - Posts dos amigos (Mural do usuário)
  - Ver perfis de outros usuários
  - Adicionar uma imagem ao perfil
  - Adicionar outro usuário como contato
    - Usuário que foi adicionado como contato recebe um e-mail informando a conexão
  - Enviar um post de texto para outro usuário através do mural  (atividade executada em background - utilizar DelayedJob)
    - Usuário que recebeu a mensagem recebe um e-mail informando a mensagem
  - No mural de outro usuário aparecerá:
    - Somente posts dele
  - Buscar por outros usuários (utilizar Solr)
