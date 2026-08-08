# linux-projeto-iac

Projeto de Infrastructure as Code (IaC) com Bash para Linux.

Primeiro projeto do curso de Linux na DIO.

---

## O que o projeto faz

Automatiza a criação de:

- Diretórios (públicos, segurança, front-end, back-end)
- Grupos de usuários (GRP_SEC, GRP_FRO, GRP_BAC)
- Usuários dentro de cada grupo
- Permissões de pastas

Tudo com um único script Bash.

---

## Como usar

**1. Clone o repositório:**

```bash
git clone https://github.com/PereraDev/linux-projeto-iac.git
cd linux-projeto-iac
```

**2. Execute o script:**

```bash
bash iacl.sh
```

**Necessário:** privilégios de root ou sudo.

---

## O que é criado

**Diretórios:**
- `/publico`
- `/security`
- `/front-end`
- `/back-end`

**Grupos:**
- GRP_SEC (segurança)
- GRP_FRO (front-end)
- GRP_BAC (back-end)

**Usuários:**
- 3 usuários por grupo
- Senhas geradas com OpenSSL

**Permissões:**
- Grupos têm acesso aos seus diretórios
- Diretório público é acessível a todos

---

## Requisitos

- Linux (Ubuntu/Debian testado)
- Acesso root ou sudo
- Bash 4+

---

## Estrutura

```
.
├── iacl.sh (script principal)
└── README.md
```

---

## Autor

PereraDev

---

## Licença

MIT
