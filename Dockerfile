FROM nsqio/nsq

# Install Nginx and supervisor
RUN apk add --no-cache nginx supervisor

# Copy Nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy Supervisor config
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports for nsqd, nsqlookupd, nsqadmin, and Nginx
EXPOSE 4150 4151 4160 4161 4170 4171 80

CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
