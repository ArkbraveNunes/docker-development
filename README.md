# Husky, Commitlint and Commitzen

Install Husky and Commitizen globally

```shell
npm install -g commitizen
npm install -g husky
```

# docker-development

Root where all the applications docker settings are located

## Dependencies

| ------------------------------------------------------------------------------------------------------------------------- |
| [nvm](https://nodejs.org/pt-br/download/package-manager) |
| [commitlint + husky + commitzen](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n) |
| [commitlint + husky + commitzen](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n) |
| [docker](https://docs.docker.com/engine/install/) |
| ------------------------------------------------------------------------------------------------------------------------- |

### Running the projects

To run the projects

```shell
docker compose up -d
```

To run specific project

```shell
docker compose up -d application-example
```

### Clone submodules

Open new terminal in the projects dir and execute

```shell
git clone https://github.com/ArkbraveNunes/nestjs-monorepo.git nestjs-monorepo
```
