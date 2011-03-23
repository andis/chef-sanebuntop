cookbooks = File.expand_path(File.join(File.dirname(__FILE__), "../.."))
cookbook_path cookbooks

runlist = Tempfile.new('runlist.json', cookbooks + '/sanebuntop/contrib')
runlist << '{"run_list": [ "recipe[sanebuntop]" ]}'
json_attribs runlist
