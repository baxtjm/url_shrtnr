require 'rails_helper'

RSpec.describe "urls/index", type: :view do
  before(:each) do
    assign(:urls, [
      Url.create!(
        :original_url => "Original Url"
      ),
      Url.create!(
        :original_url => "Original Url"
      )
    ])
  end

  it "renders a list of urls" do
    render
    assert_select "tr>td", :text => "Original Url".to_s, :count => 2
  end
end
