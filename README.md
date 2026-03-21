# Arquitetura Tipográfica ABNT - UFAM

Template de alta performance para relatórios acadêmicos e projetos da Universidade Federal do Amazonas (UFAM). Construído sob rígidos princípios de Engenharia de Software: modularidade, separação de escopo (SoC) e tipografia nativa, eliminando pacotes legados e monolíticos.

## 🚀 Stack Tecnológica

- **Motor de Compilação:** [Tectonic](https://tectonic-typesetting.github.io/) (Resolução de árvore de dependências *on-the-fly*).
- **Engine Base:** XeLaTeX (Suporte nativo a fontes do SO via `fontspec`).
- **Pipeline de Build:** GNU Make.

## ⚙️ Pré-requisitos

Para compilar este projeto, você precisa apenas do motor principal no seu PATH:
- `tectonic` (Engine de compilação autossuficiente).

*(Opcional)*: `make` (Linux/macOS) ou extensão *LaTeX Workshop* (VS Code) para automação de build.

## 🔨 Pipeline de Execução (Build)

Em ambientes Unix (Linux/macOS), a infraestrutura é automatizada via terminal:

- **Compilar o documento:**
  ```zsh
  make build
  # ou simplesmente: make

