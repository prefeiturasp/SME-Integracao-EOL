-- Mediator

Padrao Mediator 

- Baixo acoplamento e diminui dependencias 
- suporta resquest/response commands queryes etc.. 
- Separar a escrita da leitura fica mais facil para gerenciar  (CQRS) 

-----
PLUGAR COMPORTAMENTAMENTOS QUE TEM APENAS UMA RESPONSABILIDADE (COMMAND HANDLER)

quem se registra é chamado de command handler

- Pode ir configurando o sistema - Encaixar novos blocos sem quebrar nada
- Uma caixinha nao depende da outra sao isoladas
- Isso é otimo para testes pq cada command handler
- Rodar no container e escalar 
- 