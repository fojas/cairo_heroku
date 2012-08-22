require 'mkmf'

root = File.expand_path('../../..', __FILE__)

Dir.chdir(File.join(root, 'vendor/rcairo')) do
  system "ruby extconf.rb"
  system "make"
  system "make install"
  system "make clean"
end

create_makefile 'cairo_heroku'
