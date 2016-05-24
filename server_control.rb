require 'daemons'

boot_dir = '/home/pi/Desktop/boot/'

# Make sure boot dir exists
FileUtils::mkdir_p boot_dir

# Get last create ruby file in boot dir
latest_ruby_script = Dir.glob(File.join(boot_dir, '*.rb')).max { |a,b| File.ctime(a) <=> File.ctime(b) }

# Fork daemon
Daemons.run(latest_ruby_script, :backtrace => true) unless latest_ruby_script.nil?