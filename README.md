# DeployKit GitHub Action
[![Publish Image](https://github.com/gatecheckdev/deploykit-action/actions/workflows/image-delivery.yml/badge.svg)](https://github.com/gatecheckdev/deploykit-action/actions/workflows/image-delivery.yml)

A simple Action that uses the [DeployKit](https://github.com/gatecheckdev/deploykit) CLI tool.

## Inputs

Note: `manifest_deploy_token` should be an ssh token for private repositories

|       NAME       | FIELD TYPE |            DEFAULT             |     FLAG NAME     |   ENV VARIABLE KEY   | REQUIRED |
|------------------|------------|--------------------------------|-------------------|----------------------|----------|
| Directory        | string     |                                | directory         | DK_DIRECTORY         | Y*       |
| Repository       | string     |                                | repository        | DK_REPOSITORY        | Y*       |
| Service          | string     |                                | service           | DK_SERVICE           | Y        |
| Image            | string     |                                | image             | DK_IMAGE             | Y        |
| Message          | string     | deploykit: push IMAGE to       | message           | DK_MESSAGE           |          |
|                  |            | SERVICE in SDIR                |                   |                      |          |
| ServiceDirectory | string     |                                | service-directory | DK_SERVICE_DIRECTORY |          |
| SkipPush         | bool       | false                          | skip-push         | DK_SKIP_PUSH         |          |
| Attempts         | int        | 3                              | attempts          | DK_ATTEMPTS          |          |
| BackoffMethod    | string     | random                         | backoff-method    | DK_BACKOFF_METHOD    |          |
