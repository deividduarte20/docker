## Esse projeto consiste em criar container baseado em python com uma aplicação que solicita um número e verifica se o número digitado é par ou impar

#### Requisitos:

git

zip

python

docker

## Uso

#### Buildar imagem Docker - Logado no diretório onde se encontra os arquivos Dockerfile e par_impar.py

docker image build -t nome_de_sua_escolha:1.0 .

#### Subir container

docker container run -ti nome_de_sua_escolha:1.0

#### O sistema python irá pedir para digitar um número e a partir desta etapa o sistema irá retornar se o número é par, impar ou inválido.


