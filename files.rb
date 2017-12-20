require 'json'

h = {
  one: ["test/models/post_test.rb"],
  two: ["test/models/post_2_test.rb"]
}
puts h.to_json
