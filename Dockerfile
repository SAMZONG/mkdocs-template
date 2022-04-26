FROM squidfunk/mkdocs-material

RUN cd /docs
RUN pip install mkdocs-material \
    mkdocs-git-revision-date-plugin \
    mkdocs-mermaid2-plugin \
    mkdocs-plugin-tags

EXPOSE 8000