guard 'bundler' do
  watch('Gemfile')
end

guard "foodcritic", :cookbook_paths => ".", :cli => "--epic-fail any --include rules" do
  watch(%r{attributes/.+\.rb$})
  watch(%r{providers/.+\.rb$})
  watch(%r{recipes/.+\.rb$})
  watch(%r{resources/.+\.rb$})
end
