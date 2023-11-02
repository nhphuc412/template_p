require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/demos", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Demo. As you add validations to Demo, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Demo.create! valid_attributes
      get demos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      demo = Demo.create! valid_attributes
      get demo_url(demo)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_demo_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      demo = Demo.create! valid_attributes
      get edit_demo_url(demo)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Demo" do
        expect {
          post demos_url, params: { demo: valid_attributes }
        }.to change(Demo, :count).by(1)
      end

      it "redirects to the created demo" do
        post demos_url, params: { demo: valid_attributes }
        expect(response).to redirect_to(demo_url(Demo.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Demo" do
        expect {
          post demos_url, params: { demo: invalid_attributes }
        }.to change(Demo, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post demos_url, params: { demo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested demo" do
        demo = Demo.create! valid_attributes
        patch demo_url(demo), params: { demo: new_attributes }
        demo.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the demo" do
        demo = Demo.create! valid_attributes
        patch demo_url(demo), params: { demo: new_attributes }
        demo.reload
        expect(response).to redirect_to(demo_url(demo))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        demo = Demo.create! valid_attributes
        patch demo_url(demo), params: { demo: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested demo" do
      demo = Demo.create! valid_attributes
      expect {
        delete demo_url(demo)
      }.to change(Demo, :count).by(-1)
    end

    it "redirects to the demos list" do
      demo = Demo.create! valid_attributes
      delete demo_url(demo)
      expect(response).to redirect_to(demos_url)
    end
  end
end