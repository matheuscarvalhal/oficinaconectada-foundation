# Bootstrap GitHub OIDC

Este repositorio provisiona o provider OIDC do GitHub Actions e a role usada pelos pipelines da nova esteira de infraestrutura.

## Saidas importantes

- `github_actions_role_arn`
- `github_oidc_provider_arn`

## Variavel a configurar no GitHub

Depois do `apply` do `foundation`, configure em cada um dos repositorios abaixo, ou como organization variable se preferir:

- `oficinaconectada-foundation`
- `oficinaconectada-data-platform`
- `oficinaconectada-platform-runtime`
- `oficinaconectada-app-deployments`

Variavel:

- `AWS_GITHUB_ACTIONS_ROLE_ARN=<valor do output github_actions_role_arn>`

## Escopo atual da role

A role criada usa a policy definida em `github_actions_policy_arn`.

No bootstrap inicial, o default esta em:

- `arn:aws:iam::aws:policy/AdministratorAccess`

Isso acelera a primeira subida da plataforma. Depois que a esteira estiver estavel, a recomendacao e restringir para policies menores por repositorio ou por camada.
