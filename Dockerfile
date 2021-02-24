FROM pandoc/latex:2.6

LABEL "maintainer"="Louis-Guillaume MORAND"
LABEL "repository"="https://github.com/lgmorand/github-action-pandoc"
LABEL "homepage"="https://github.com/lgmorand/github-action-pandoc"

LABEL "com.github.actions.name"="Pandoc Document Conversion"
LABEL "com.github.actions.description"="Convert documents with pandoc and LaTeX."
LABEL "com.github.actions.icon"="book-open"
LABEL "com.github.actions.color"="orange"

ADD entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
