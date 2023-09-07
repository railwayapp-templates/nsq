FROM nsqio/nsq

COPY entrypoint.sh .
RUN chmod +x ./entrypoint.sh

EXPOSE 4171

ENTRYPOINT ["./entrypoint.sh"]