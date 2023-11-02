require 'rails_helper'

RSpec.describe "demos/index", type: :view do
  before(:each) do
    assign(:demos, [
      Demo.create!(
        name: "Name",
        title: "Title",
        content: "MyText"
      ),
      Demo.create!(
        name: "Name",
        title: "Title",
        content: "MyText"
      )
    ])
  end

  it "renders a list of demos" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
