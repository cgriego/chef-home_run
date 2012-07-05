name             "home_run"
maintainer       "Chris Griego"
maintainer_email "cgriego@gmail.com"
license          "MIT"
description      "Installs/Configures home_run"
long_description IO.read(File.join(File.dirname(__FILE__), "README.md"))
version          "1.0.0"

recommends "rvm"

supports "debian"
supports "ubuntu"

recipe "home_run::rvm", "Installs home_run into RVM-managed rubies"
