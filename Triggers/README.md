# 📚 Bibliotecas Utilizadas

Este diretório contém informações sobre as bibliotecas e padrões utilizados na arquitetura do projeto.

---

## 📦 FFLIB – Apex Enterprise Patterns

Este projeto utiliza a biblioteca **FFLIB (Apex Enterprise Patterns)** para estruturar a aplicação em camadas, promovendo organização, desacoplamento e escalabilidade.

🔗 Repositório oficial:  
https://github.com/apex-enterprise-patterns/fflib-apex-common

### 🔹 Camadas utilizadas no projeto

- Domain
- Service
- Selector
- Unit of Work

A FFLIB permite aplicar boas práticas como:

- Separation of Concerns (SOC)
- Single Responsibility Principle (SRP)
- Centralização de SOQL na camada de Selectors
- Organização clara da lógica de negócio

---

## 📦 DI – Dependency Injection

O projeto também aplica o padrão **Dependency Injection (DI)** para reduzir acoplamento entre classes e melhorar a testabilidade.

🔗 Referência utilizada:  
https://github.com/apex-enterprise-patterns/fflib-apex-common

### 🔹 Aplicações no projeto

- Injeção de serviços
- Uso de interfaces para desacoplamento
- Implementação de serviços como EmailService
- Maior facilidade para criação de testes unitários

---

## 🎯 Objetivo

A utilização da FFLIB e do padrão DI garante:

- Arquitetura organizada e escalável
- Código desacoplado
- Facilidade de manutenção
- Estrutura alinhada com padrões enterprise
