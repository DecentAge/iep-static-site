# production environment
FROM nginx:1.20-alpine
ENV NGINX_PORT=80
ENV NGINX_PATH=/
ENV IEP_CHAIN=mainnet

# COPY ./${IEP_CHAIN}/bootnodes.json /usr/share/nginx/html/
COPY ./sites /iep-static-site/sites
COPY ./default.conf.template /etc/nginx/templates/default.conf.template
COPY 30-iep-startup-script.sh /docker-entrypoint.d/30-iep-startup-script.sh
RUN chmod 775 /docker-entrypoint.d/30-iep-startup-script.sh
EXPOSE ${NGINX_PORT}
CMD ["nginx", "-g", "daemon off;"]