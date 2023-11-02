require 'rails_helper'

RSpec.describe "demos/new", type: :view do
  before(:each) do
    assign(:demo, Demo.new(
      name: "MyString",
      title: "MyString",
      content: "MyText"
    ))
  end

  it "renders new demo form" do
    render

    assert_select "form[action=?][method=?]", demos_path, "post" do

      assert_select "input[name=?]", "demo[name]"

      assert_select "input[name=?]", "demo[title]"

      assert_select "textarea[name=?]", "demo[content]"
    end
  end
end
