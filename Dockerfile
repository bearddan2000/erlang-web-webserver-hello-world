FROM erlang:latest

COPY bin/ ./

RUN chmod +x ./main.erl \
    && erlc ./main.erl

CMD ["erl", "-noshell", "-s", "inets", "start", "-s", "main"]
