# =========================================================
# PIPELINE DE BUILD - TECTONIC (XeLaTeX)
# Arquitetura: Template ABNT de Alta Performance
# =========================================================

# --- VARIÁVEIS DE AMBIENTE ---
# Centraliza os alvos. Se o nome do entrypoint mudar, altera-se apenas aqui.
ENTRYPOINT = main.tex
TARGET = main.pdf

# --- DIRETIVAS DE SEGURANÇA ---
# .PHONY impede que o Make confunda essas regras com arquivos reais de mesmo 
# nome no diretório (ex: se alguém criar uma pasta chamada "build").
.PHONY: all build clean

# Regra default: O que é executado quando o usuário digita apenas `make`.
all: build

# --- REGRAS DE EXECUÇÃO ---

# Invoca o motor Tectonic. 
# Ele resolve a árvore de dependências on-the-fly e injeta o PDF na raiz.
build:
	@echo "==> Iniciando compilação (Tectonic) do entrypoint: $(ENTRYPOINT)..."
	tectonic $(ENTRYPOINT)
	@echo "==> Build finalizado com sucesso. Artefato: $(TARGET)"

# Higieniza o ambiente.
# A flag -f (force) garante que o comando não retorne erro se o PDF não existir.
clean:
	@echo "==> Limpando artefatos de build..."
	rm -f $(TARGET)
	@echo "==> Diretório raiz higienizado."
