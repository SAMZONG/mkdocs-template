FROM squidfunk/mkdocs-material

RUN cd /docs
RUN pip install mkdocs-material \
    mkdocs-git-revision-date-plugin \
    mkdocs-mermaid2-plugin \
    mkdocs-plugin-tags \
    mkdocs-rss-plugin \
    mkdocs-minify-plugin \
    mkdocs-macros-plugin \
    mkdocs-git-revision-date-localized-plugin

EXPOSE 8000