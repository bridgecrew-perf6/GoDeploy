## Description

It's simple github action for auto deploy laravel app.

## Usage

```yml
name: Deploy
on:
  create:
    tags:
      - v*
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - name: Deploy
      uses: pavel-one/LaravelDeploy@master
      with:
        host: ${{secrets.HOST}}
        user: ${{secrets.USER}}
        key: ${{secrets.KEY}}
        dir: ${{secrets.DIR}}
```