# 🛠️ Rename Tool

Uma ferramenta de linha de comando escrita em Bash para renomear arquivos e pastas de forma inteligente e flexível. Ideal para quem organiza muitos arquivos no terminal e deseja manter nomes consistentes.

> Autor: Ronivaldo Domingues de Andrade  
> GitHub: [@ronidomingues](https://github.com/ronidomingues)

---

## ✨ Funcionalidades

- 🗂️ Renomeia **pastas** substituindo espaços por hífens e convertendo para minúsculas.
- 📄 Renomeia **arquivos** substituindo espaços por underscores e convertendo para minúsculas.
- ✍️ Permite **renomear manualmente** qualquer item com o nome exato desejado (preserva maiúsculas/minúsculas).
- ✅ Suporte a nomes compostos com aspas (`"nome com espaços"`).
- ✅ Mensagens de erro amigáveis.
- ✅ Compatível com Linux, macOS e WSL.

---

## 🚀 Como usar

### Torne o script executável:

```bash
chmod +x rename.sh
```

### Execute com uma das opções:

```bash
./rename.sh [opção] [nome(s)]
```

---

## 🧾 Opções disponíveis

| 🏷️ Flag         | 💡 Descrição                                                                 |
|----------------|------------------------------------------------------------------------------|
| `-fd`          | 📁 Renomeia **pastas**: espaços viram `-` e o nome fica em *minúsculas*       |
| `--folder`     | 🔁 Mesmo que `-fd`                                                            |
| `-f`           | 📄 Renomeia **arquivos**: espaços viram `_` e o nome fica em *minúsculas*     |
| `--file`       | 🔁 Mesmo que `-f`                                                             |
| `-mr`          | ✍️ Renomeia **manualmente**: nome atual e novo nome (sem aplicar formatação)  |
| `--manual-rename`| 🔁 Mesmo que `-mr`                                                            |


---

## 📌 Exemplos:

```bash
./rename.sh -fd "Minha Pasta"
# Resultado: minha-pasta

./rename.sh -f "Trabalho Final.PDF"
# Resultado: trabalho_final.pdf

./rename.sh -mn "Antigo Nome.txt" "Nome Personalizado.txt"
# Resultado: Nome Personalizado.txt
```

---

## 📋 Requisitos

- Terminal Bash
- Sistema operacional baseado em Unix (Linux, macOS, WSL no Windows)
- Bash 4+ (já vem instalado na maioria das distribuições)

---

## 🗃️ Estrutura do Projeto

```bash
.
├── rename.sh       # Script principal
├── README.md       # Documentação do projeto
└── LICENSE         # Licença MIT
```

---

## 📄 Licença

Distribuído sob a Licença MIT. Veja `LICENSE` para mais detalhes.

---

### 💬 Contribuições são bem-vindas!