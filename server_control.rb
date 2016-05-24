require 'daemons'
require 'fileutils'

boot_dir = '/home/pi/Desktop/boot/'

# Make sure boot dir exists
FileUtils::mkdir_p boot_dir

# Get last create ruby file in boot dir
latest_ruby_script = Dir.glob(File.join(boot_dir, '*.rb')).max { |a,b| File.ctime(a) <=> File.ctime(b) }

# Fork daemon
daemon_options = {
  :backtrace  => false,
  :log_output => true
}
Daemons.run(latest_ruby_script, daemon_options) unless latest_ruby_script.nil?