require 'json'

h = {
  0 => ["test/models/post_test.rb", "test/models/post_4_test.rb"],
  1 => ["test/models/post_2_test.rb", "test/models/post_3_test.rb"]
}
puts h.to_json
