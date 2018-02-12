# XS

Laravel 5.5 + Dingo + JWT

## USAGE

```
$ git clone https://github.com/xiuery/Laravel5.5-Dingo-JWT.git xs
$ composer install
$ 设置 `storage` 目录必须让服务器有写入权限。
$ cp .env.example .env
$ vim .env
    DB_*
        填写数据库相关配置
    APP_KEY
        php artisan key:generate
    JWT_SECRET
        php artisan jwt:secret

头信息中可以增加 Accept:application/vnd.app.v1+json 切换v1和v2版本
```

## USEFUL LINK

读文档很重要，请先仔细读读文档 laravel, dingo/api，jwt，fractal 的文档。

- laravel5.5 [https://d.laravel-china.org/docs/5.5](https://d.laravel-china.org/docs/5.5)
- dingo/api [https://github.com/dingo/api](https://github.com/dingo/api)
- dingo api 中文文档 [dingo-api-wiki-zh](https://github.com/liyu001989/dingo-api-wiki-zh)
- jwt(json-web-token) [https://github.com/tymondesigns/jwt-auth](https://github.com/tymondesigns/jwt-auth)
- transformer [fractal](http://fractal.thephpleague.com/)
- apidoc 生成在线文档 [apidocjs](http://apidocjs.com/)
- rest api 参考规范 [jsonapi.org](http://jsonapi.org/format/)
- api 调试工具 [postman](https://www.getpostman.com/)
- 有用的文章 [http://oomusou.io/laravel/laravel-architecture](http://oomusou.io/laravel/laravel-architecture/)
- php lint [phplint](https://github.com/overtrue/phplint)
- Laravel 理念 [From Apprentice To Artisan](https://my.oschina.net/zgldh/blog/389246)
- 我对 REST 的理解 [http://blog.lyyw.info/2017/02/09/2017-02-09%20%E5%AF%B9rest%E7%9A%84%E7%90%86%E8%A7%A3/](http://blog.lyyw.info/2017/02/09/2017-02-09%20%E5%AF%B9rest%E7%9A%84%E7%90%86%E8%A7%A3/)

## 相关说明

- 让 findOrFail 返回 404, 更方便使用
- 可以用过 `Accept-Language` 头来却换语言，比如 zh-CN, 当然也可以默认中文

## License

[MIT license](http://opensource.org/licenses/MIT)
