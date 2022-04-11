require 'sinatra'
$: << 'lib'

require 'rack/livereload'

use Rack::Logger
use Rack::LiveReload
run Rack::Directory.new('.')

set :bind, '0.0.0.0'

if false

get '/' do
  File.read('index.html')
end

run Sinatra::Application
end
