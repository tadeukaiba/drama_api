# Usar uma imagem base do Python
FROM python:3.11.6-slim

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /usr/src/app

# Copiar os arquivos de requisitos para o contêiner
COPY requirements.txt .

# Instalar as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo o código do projeto para o contêiner
COPY . .

# Expor a porta que seu aplicativo irá rodar
EXPOSE 4577

# Comando para rodar o aplicativo na porta 4577
CMD ["uvicorn", "api.main:app", "--host", "0.0.0.0", "--port", "4577"]