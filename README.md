# Docker Development

Olá, bom dia, aqui será apresentado uma documentação básica de instalação desse ambiente de desenvolvimento.

# Husky, Commitlint and Commitzen

Inicialmente vamos instalar o Husky e Commitzen

```shell
npm install -g commitizen
npm install -g husky
```

### Clonar os Respositorios

Execute via terminal o arquivo "install.sh"

```shell
./install.sh
```

### Rodando os Projetos

Para rodar todos os projetos execute via terminal esse comando:

```shell
docker compose up -d
```

Para rodar um projeto específico coloque a nomenclatura dele no final do comando já citado acima:

```shell
docker compose up -d application-example
```

## Dependencies

| [nvm](https://nodejs.org/pt-br/download/package-manager) |
| [commitlint + husky + commitzen](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n) |
| [commitlint + husky + commitzen](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n) |
| [docker](https://docs.docker.com/engine/install/) |

### Extras

Caso tenha algum erro ao rodar algum projeto verifique se o arquivo .env foi criado e dê uma olhada no arquivo README.md de cada projeto pra ver se não deixou passar nada!
