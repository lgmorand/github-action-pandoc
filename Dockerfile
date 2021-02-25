FROM pandoc/latex:2.6

RUN apk update\
    && apk add texlive-full\
    texlive-xetex\
    biber\
    make\
    rsync\
    tar\
    libarchive-tools\
    gmp
        
ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
