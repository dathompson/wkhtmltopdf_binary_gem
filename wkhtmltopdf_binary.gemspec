# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "wkhtmltopdf_binary/version"

Gem::Specification.new do |s|
  s.name        = "wkhtmltopdf-binary"
  s.version     = WkhtmltopdfBinary::VERSION
  s.authors     = ["dathompson"]
  s.email       = ["da@dathompson.com"]
  s.homepage    = ""
  s.summary     = "Binary distribution of the wkhtmltopdf static builds for mac, linux and windows."
  s.description = "Binary distribution of the wkhtmltopdf static builds for mac, linux and windows."

  s.rubyforge_project = "wkhtmltopdf_binary"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  s.add_development_dependency "aruba"
  # s.add_runtime_dependency "rest-client"
end
