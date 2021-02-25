FROM pandoc/latex:2.6

RUN apk update && apk add texmf-dist texlive

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
