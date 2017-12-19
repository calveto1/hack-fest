require 'test_helper'

class PostTest < ActiveSupport::TestCase
  it "foo" do
    assert_equal(2, Post.all.count)
    Post.create(body: 'foo')
    assert_equal(3, Post.all.count)
  end
end
