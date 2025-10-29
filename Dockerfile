 
FROM n8nio/n8n:latest

USER root

# Créer les dossiers nécessaires
RUN mkdir -p /home/node/.n8n && \
    chown -R node:node /home/node/.n8n

USER node

WORKDIR /home/node

ENV N8N_PORT=5678

EXPOSE 5678

CMD ["n8n", "start"]
