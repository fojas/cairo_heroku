Gem::Specification.new do |s|
  s.name    = 'cairo_heroku'
  s.version = '0.1.0'
  s.summary = 'Cairo for Heroku'
  s.authors = ['Anthony Fojas']

  s.files = ["AUTHORS", "COPYING", "GPL", "Gemfile", "NEWS", "README.rdoc",'Rakefile'].map do |file|
    "vendor/rcairo/#{file}"
  end
  s.files += Dir.glob("vendor/rcairo/{lib,samples}/**/*.rb")
  s.files += Dir.glob("vendor/rcairo/ext/**/{*.def,depend,*.rb,*.c,*.h}")
  s.test_files = Dir.glob("vender/rcairo/test/**/*.rb")
  s.extra_rdoc_files = ["vendor/rcairo/README.rdoc"]

  s.require_paths = ['vendor/rcairo/lib']
  s.extensions = ['ext/cairo_heroku/extconf.rb']
end
