# Use a imagem oficial do MySQL a partir do Docker Hub
FROM mysql:latest

# Defina as variáveis de ambiente para configurar o MySQL
ENV MYSQL_ROOT_PASSWORD=123456789
ENV MYSQL_DATABASE=db_dev
ENV MYSQL_USER=dev
ENV MYSQL_PASSWORD=123456789

# Copie arquivos SQL para criar tabelas ou inserir dados (opcional)
# COPY ./arquivos_sql/ /docker-entrypoint-initdb.d/

# Exponha a porta padrão do MySQL
EXPOSE 3306

# Comando para iniciar o MySQL quando o contêiner for iniciado
CMD ["mysqld"]
