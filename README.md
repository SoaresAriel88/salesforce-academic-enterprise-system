# 🎓 Salesforce Academic Enterprise System
### LWC | Apex | FFLIB | Arquitetura em Camadas | Modelagem Relacional

## 📌 Sobre o Projeto

O Salesforce Academic Enterprise System é uma aplicação desenvolvida na plataforma Salesforce com o objetivo de simular o gerenciamento acadêmico de uma instituição de ensino.

O projeto foi desenvolvido durante o estágio na **C3C Software**, com foco na aplicação de boas práticas de arquitetura, modelagem de dados e padrões enterprise no ecossistema Salesforce.

A solução foi construída utilizando **Lightning Web Components (LWC)** no front-end e **Apex** no back-end, aplicando conceitos avançados como Apex Enterprise Patterns (FFLIB), Separation of Concerns (SOC) e Trigger Handler Pattern.

---

## 🚀 Funcionalidades

### 📊 Gestão de Status dos Alunos
- Listagem completa de alunos
- Filtro por:
  - Todos
  - Ativos
  - Inativos
- Controle de matrícula através de campo de status customizado

---

### 📝 Registro Customizado de Alunos
- Substituição do botão padrão de criação de registros
- Validação de campos obrigatórios
- Campo de relacionamento com Curso
- Integração com API ViaCEP
- Preenchimento automático de endereço:
  - Rua
  - Bairro
  - Cidade
  - Estado

---

### 👨‍🏫 Consulta de Professores
- Seleção de professor via picklist
- Exibição dinâmica:
  - Alunos que o professor ministra
  - Disciplinas que o professor ministra

---

## 📧 Regras de Negócio Automatizadas (Triggers)

As triggers foram implementadas utilizando **Trigger Handler + Trigger Dispatcher**, mantendo a trigger limpa e delegando a lógica para camadas apropriadas.

### ✔ Before Insert
- Impede a criação de aluno já definido como Inativo.

### ✔ After Update
- Detecta alteração do status para Inativo.
- Envia e-mail automático ao professor responsável.
- Atualiza automaticamente a quantidade de alunos do curso relacionado.

### ✔ After Delete
- Atualiza a quantidade de alunos do curso quando um aluno é excluído.

---

## 🏗 Arquitetura Aplicada

O projeto foi estruturado seguindo o padrão **Apex Enterprise Patterns (FFLIB)**.

Fluxo arquitetural:

Trigger → Trigger Handler → Trigger Dispatcher → Domain → Service → Selector

A comunicação entre LWC e Apex ocorre via Controllers expostos com `@AuraEnabled`, garantindo desacoplamento entre interface e regra de negócio.

---

## 🧩 Modelagem de Dados e Relacionamentos

A modelagem dos objetos foi estruturada utilizando diferentes tipos de relacionamento da plataforma Salesforce:

### 🔹 Master-Detail
Utilizado para relacionamentos onde há forte dependência entre os registros.

Exemplo aplicado:
- Curso → Aluno

Características aplicadas:
- Herança de segurança e permissões
- Exclusão em cascata
- Atualização automática de campos agregados (quantidade de alunos por curso)

---

### 🔹 Lookup (Relacionamento de Pesquisa)
Utilizado para relacionamentos com menor dependência estrutural.

Exemplo aplicado:
- Professor → Aluno
- Professor → Disciplina

Características:
- Relacionamento flexível
- Não obrigatoriedade de exclusão em cascata
- Permite associação dinâmica entre registros

---

Essa modelagem permitiu implementar corretamente:
- Atualização automática de contadores
- Controle de integridade dos dados
- Regras de negócio baseadas em dependência entre objetos

---

## 🧠 Princípios e Padrões Utilizados

- Programação Orientada a Objetos (POO)
- Encapsulamento
- Abstração
- Polimorfismo
- Inversão de Dependência
- Dependency Injection (Injector)
- Separation of Concerns (SOC)
- Single Responsibility Principle (SRP)
- Trigger Handler Pattern
- Trigger Dispatcher Pattern
- Apex Enterprise Patterns (FFLIB)
- Centralização de SOQL na camada de Selectors
- Uso de Unit of Work

---

## 📧 Serviço de E-mail

Implementado a classe Single Email para verificação das Triggers

---

## 🌐 Integração Externa

Integração com a API ViaCEP para preenchimento automático de endereço a partir do CEP informado no cadastro do aluno.

---

## 🎯 Diferenciais do Projeto

- Aplicação de arquitetura enterprise em projeto desenvolvido durante estágio
- Estrutura totalmente desacoplada
- Uso correto de Master-Detail e Lookup
- Automatização baseada em eventos
- Integração com serviço externo
- Organização em camadas seguindo padrões de mercado

---

## 📚 Aprendizados

Durante o desenvolvimento deste projeto, foram consolidados conhecimentos em:

- Arquitetura escalável na plataforma Salesforce
- Modelagem correta de relacionamentos (Master-Detail e Lookup)
- Implementação profissional de Triggers
- Estruturação em camadas utilizando FFLIB
- Comunicação eficiente entre LWC e Apex
- Aplicação prática de conceitos avançados de POO

---

## 👨‍💻 Autor

Ariel Soares  
Projeto desenvolvido durante estágio na C3C Software, aplicando arquitetura enterprise e boas práticas no ecossistema Salesforce.
