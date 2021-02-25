FROM pandoc/latex:2.6

RUN apk update && add --no-cache \
        texlive \
        texlive-xetex \
        textlive-full
        
ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
