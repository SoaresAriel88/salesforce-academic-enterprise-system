# 🎨 Camada de Interface – Lightning Web Components (LWC)

Esta seção do projeto é responsável pela camada de apresentação da aplicação, desenvolvida utilizando **Lightning Web Components (LWC)**.

Os componentes foram estruturados para garantir separação de responsabilidades, comunicação eficiente com Apex e uma experiência de usuário organizada e intuitiva.

---

## 🎓 Aba de Alunos/Professores

### 📌 Descrição

A aba de Professores permite visualizar informações relacionadas aos docentes cadastrados no sistema.

Ao selecionar um professor, o sistema exibe dinamicamente:

- 📚 Disciplinas ministradas
- 👨‍🎓 Alunos vinculados ao professor

### ⚙️ Objetivo Técnico

- Demonstrar relacionamento entre objetos
- Exibir dados relacionados via Lookup
- Renderização condicional de informações
- Comunicação entre LWC e Apex Controller

---

## 📊 Tabela de Status dos Alunos

### 📌 Descrição

Componente responsável por exibir a listagem completa de alunos cadastrados, permitindo filtragem por status.

Filtros disponíveis:

- Todos
- Ativos
- Inativos

### ⚙️ Objetivo Técnico

- Renderização dinâmica de listas
- Uso de @wire para busca de dados
- Filtro aplicado via parâmetro para Apex
- Atualização automática após alterações

Este componente demonstra manipulação de dados, controle de estado e interação com o back-end.

---

## 📝 Registro de Alunos

### 📌 Descrição

Componente responsável pelo cadastro customizado de alunos na plataforma.

Inclui:

- Validação de campos obrigatórios
- Seleção de curso e professor
- Integração com API ViaCEP
- Preenchimento automático de endereço

### 🌐 Integração Externa

Ao informar o CEP, o sistema realiza uma chamada HTTP para a API ViaCEP e preenche automaticamente:

- Rua
- Bairro
- Cidade
- Estado

### ⚙️ Objetivo Técnico

- Implementação de formulário customizado
- Uso de eventos e manipulação de estado
- Integração LWC → Apex → API externa
- Tratamento de erros e validações

---

## 🏗 Arquitetura da Camada LWC

Os componentes seguem os princípios de:

- Separation of Concerns
- Reutilização de lógica
- Comunicação desacoplada com Apex
- Organização clara entre HTML, JS e Metadata

---

## 🎯 Finalidade

A camada LWC foi construída para demonstrar:

- Domínio da interface moderna do Salesforce
- Integração com arquitetura enterprise
- Aplicação prática de relacionamentos Master-Detail e Lookup
- Experiência de usuário funcional e organizada
