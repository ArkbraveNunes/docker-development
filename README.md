# Docker Development

Olá, bom dia, aqui será apresentado uma documentação básica de instalação desse ambiente de desenvolvimento.

## Commitlint, Husky e Commitzen

### Instalação do Commitlint:

```shell
npm install @commitlint/config-conventional @commitlint/cli --save-dev
```

É possível gerenciar as configurações do commitlint no arquivo commitlint.config.js

### Instalação do Husky:

```shell
npm install -g husky
npm install husky@^8.0.3 --save-dev
```

Adicione o script abaixo do husky no package.json

```
"scripts": {
  "prepare": "husky install"
}
```

Para finalizar adicione os arquivos "commit-msg" e "husky.sh" da pasta .husky como hooks; OBS: Em alguns casos sera adicionado um "undefined" no final de ambos arquivos, é necessário remover esse "undefined" de ambos, senão o hook do husky não irá funcionar!

```shell
npx husky add .husky/husky.sh
npx husky add .husky/commit-msg
```

### Instalação do Commitzen:

```shell
npm install -g commitizen
npm install commitizen --save-dev
commitizen init cz-conventional-changelog
```

Adicione o script abaixo do commitzen no package.json

```
"scripts": {
  "commit": "git-cz"
}
```

Agora usando o commando "git-cz" será aberta uma interface onde você pode escolher qual o tipo de categoria do commit (feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert); Selecionando a categoria você poderá digitar o escopo que pertence o commit, uma mensagem curta sobre o commit, e caso deseje adicionar mais detalhes também terá a opção de colocar uma descrição;

Caso tenha alguma dúvida ou queira personalizar mais a configuração, segue abaixo o artigo em que foi inspirado a implementação dessas ferramentas:

[Padronização de commit com (Commitlint, Husky e Commitizen)](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n)

## Clonar os Repositorios

Execute via terminal o arquivo "install.sh"

```shell
./install.sh
```

## HOSTS

Para acessar os databases e aplicações localmente é necessário alterar o arquivo de hosts do seu sistema operacional:

```shell
127.0.1.1 api.application-openings.localhost
127.0.1.1 api.application-template.localhost

127.0.1.1 db.mongo.application-template
127.0.1.1 db.mysql.application-openings
```

Caso tenha alguma dúvida sobre como alterar o arquivo hosts ao seu sistema operacional, segue abaixo artigos com dicas:

| [Como editar o arquivo hosts no Linux](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-linux-ubuntu/) |
| [Como editar o arquivo hosts no Windows](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-windows/) |
| [Como editar o arquivo hosts no Mac OS](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-mac-os-x-apple/) |

## Rodando os Projetos

Para rodar todos os projetos execute via terminal esse comando:

```shell
docker compose up -d
```

Para rodar um projeto específico coloque a nomenclatura dele no final do comando já citado acima:

```shell
docker compose up -d application-example
```

## Dependencies

| [docker](https://docs.docker.com/engine/install/) |
| [nvm](https://nodejs.org/pt-br/download/package-manager) |
| [Padronização de commit com (Commitlint, Husky e Commitizen)](https://dev.to/vitordevsp/padronizacao-de-commit-com-commitlint-husky-e-commitizen-3g1n) |
| [Como editar o arquivo hosts no Linux](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-linux-ubuntu/) |
| [Como editar o arquivo hosts no Windows](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-windows/) |
| [Como editar o arquivo hosts no Mac OS](https://king.host/wiki/artigo/como-editar-o-arquivo-hosts-no-mac-os-x-apple/) |

# Extras

Caso tenha algum erro ao rodar algum projeto verifique se o arquivo .env foi criado e dê uma olhada no arquivo README.md de cada projeto pra ver se não deixou passar nada!
