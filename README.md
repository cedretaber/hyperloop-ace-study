## How to try

```bash
$ bundle install
$ bower install
$ mkdir dist
$ bundle exec opal -I. -c src/app.rb > dist/bundle.js
$ bundle exec ruby -run -e httpd .
```
