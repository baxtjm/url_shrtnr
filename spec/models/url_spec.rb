require 'rails_helper'

RSpec.describe Url, type: :model do
    it "should not be able to save if the original_url is blank" do
      u = Url.new(original_url: nil)
      assert_equal(u.save, false)
    end

    it "should not be able to save if the original_url is not a valid url" do
      u = Url.new(original_url: "jeff@hotmail.com")
      assert_equal(false, u.save)
    end

    it "should have a short_url method that returns the short url as a string" do
      u = Url.new(original_url: "http://github.com/abunsen/gSQL/commits")
      assert_equal(true, u.save)
      assert_equal("http://localhost:3000/#{u.id}", u.short_url)
  end
end
