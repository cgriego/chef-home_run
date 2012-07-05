Installs [home_run][home_run], fast Date/DateTime classes for ruby.

[chef-home_run]: https://github.com/cgriego/chef-home_run
[home_run]: https://github.com/jeremyevans/home_run
[chef-rvm]: https://github.com/fnichol/chef-rvm

# Attributes

* `node['home_run']['version']`    - The version of home_run to install, defaults to "1.0.6"
* `node['home_run']['rvm_rubies']` - The RVM managed rubies in which to install home_run

# Recipes

## rvm

Installs home_run into the specified RVM-managed Ruby versions. Depends
on [Fletcher Nichol's RVM cookbook][chef-rvm].

# LICENSE AND AUTHOR

Author:: Chris Griego (<cgriego@gmail.com>)

Copyright 2012, Chris Griego

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
