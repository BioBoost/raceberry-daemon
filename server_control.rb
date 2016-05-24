require 'daemons'

Daemons.run('app.rb', :backtrace => true)