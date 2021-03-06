#
# Cookbook Name:: home_run
# Recipe:: rvm
#
# Copyright 2012, Chris Griego
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

node['home_run']['rvm_rubies'].each do |ruby_version|
  rvm_gem "home_run #{ruby_version}" do
    package_name "home_run"
    ruby_string ruby_version
    version node['home_run']['version']
    notifies :run, "rvm_shell[install home_run #{ruby_version}]"
  end

  rvm_shell "install home_run #{ruby_version}" do
    code "home_run --uninstall && home_run --install"
    ruby_string ruby_version
    action :nothing
  end
end

node['home_run']['uninstall_rvm_rubies'].each do |ruby_version|
  rvm_shell "uninstall home_run #{ruby_version}" do
    code "home_run --uninstall"
    ruby_string ruby_version
    only_if { File.exist? File.join(node['rvm']['root_path'], "gems", ruby_version, "bin", "home_run") }
  end

  rvm_gem "home_run #{ruby_version}" do
    package_name "home_run"
    ruby_string ruby_version
    action :remove
  end
end
