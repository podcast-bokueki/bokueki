FROM jekyll/jekyll:latest

WORKDIR /srv/jekyll
# Gemfileをコンテナイメージ内で用意する
# ローカルホストマシンで活用するわけではなく、現状コンテナでのみ活用することから
# Gemfile/lockファイル自体のGit管理とせず、Dockerfileで生成する
RUN echo 'source "https://rubygems.org"' >> Gemfile && \
# Ruby 3.0以降包含されておらず、jekyll/jekyll:4のRuby versionが、本Docker環境構築時点で3.1.1のため
echo 'gem "webrick"' >> Gemfile && \
echo 'gem "jekyll-theme-cayman"' >> Gemfile && \
echo 'gem "github-pages",  "232", group: :jekyll_plugins' >> Gemfile && \
# in GitHub Actions Workflow, already applied. but local cannot apply.
echo 'gem "jekyll-relative-links"' >> Gemfile && \
bundle install