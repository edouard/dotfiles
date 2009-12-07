#!/usr/bin/ruby
require 'rubygems'

# Useful to get my own User object in the console
def me
  User.find_by_email 'edouard.briere@gmail.com'
end

# Copy data in clipboard
def copy(data)
  File.popen('pbcopy', 'w') { |p| p << data.to_s }
  $?.success?
end
