# Usando a imagem oficial do Grafana
FROM grafana/grafana

# Definindo variáveis de ambiente
ENV GF_SECURITY_ADMIN_PASSWORD=admin

# Copiando qualquer configuração customizada (se necessário)
# Exemplo: Copiar arquivos de configuração para o contêiner
# COPY ./custom.ini /etc/grafana/grafana.ini

# Adicionando plugins personalizados (opcional)
# Exemplo: Adicionando o plugin de Prometheus
# RUN grafana-cli plugins install grafana-prometheus-datasource

# Expõe a porta padrão do Grafana
EXPOSE 3000

# Comando para iniciar o Grafana
CMD [ "/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web" ]
