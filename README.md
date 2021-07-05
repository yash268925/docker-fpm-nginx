# docker-fpm-nginx

nginx + php-fpm (alpine base)

## これは何

PHPが動くnginxのコンテナ

## 用途

開発するときの使い捨てコンテナに

```zsh
docker run -it --rm -v $(pwd):/var/www/html -p 8080:80 yash268925/fpm-nginx
```

php.iniを適応したい場合

```zsh
vi phpconf/php.ini

docker run -it --rm \
    -v $(pwd/docroot):/var/www/html \
    -v $(pwd/phpconf):/phpconf \
    -p 8080:80 yash268925/fpm-nginx
```
