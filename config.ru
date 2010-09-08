use Rack::Static,
  :root => File.dirname(__FILE__),
  :urls => %w(/vendor/css /vendor/lib /slides /config.json /vendor/themes /vendor/images)
run lambda { |env|
  [
    200,
    { 'Content-Type' => 'text/html' },
    [File.read('index.html')]
  ]
}
