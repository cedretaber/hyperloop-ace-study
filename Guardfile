guard :shell do
  watch("src/app.rb") { |m| `.bundle/ruby/2.4.0/bin/opal -c src/app.rb > dist/bundle.js` }
end
