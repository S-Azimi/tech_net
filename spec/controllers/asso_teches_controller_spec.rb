require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe AssoTechesController do

  # This should return the minimal set of attributes required to create a valid
  # AssoTech. As you add validations to AssoTech, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "tech_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # AssoTechesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all asso_teches as @asso_teches" do
      asso_tech = AssoTech.create! valid_attributes
      get :index, {}, valid_session
      assigns(:asso_teches).should eq([asso_tech])
    end
  end

  describe "GET show" do
    it "assigns the requested asso_tech as @asso_tech" do
      asso_tech = AssoTech.create! valid_attributes
      get :show, {:id => asso_tech.to_param}, valid_session
      assigns(:asso_tech).should eq(asso_tech)
    end
  end

  describe "GET new" do
    it "assigns a new asso_tech as @asso_tech" do
      get :new, {}, valid_session
      assigns(:asso_tech).should be_a_new(AssoTech)
    end
  end

  describe "GET edit" do
    it "assigns the requested asso_tech as @asso_tech" do
      asso_tech = AssoTech.create! valid_attributes
      get :edit, {:id => asso_tech.to_param}, valid_session
      assigns(:asso_tech).should eq(asso_tech)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new AssoTech" do
        expect {
          post :create, {:asso_tech => valid_attributes}, valid_session
        }.to change(AssoTech, :count).by(1)
      end

      it "assigns a newly created asso_tech as @asso_tech" do
        post :create, {:asso_tech => valid_attributes}, valid_session
        assigns(:asso_tech).should be_a(AssoTech)
        assigns(:asso_tech).should be_persisted
      end

      it "redirects to the created asso_tech" do
        post :create, {:asso_tech => valid_attributes}, valid_session
        response.should redirect_to(AssoTech.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved asso_tech as @asso_tech" do
        # Trigger the behavior that occurs when invalid params are submitted
        AssoTech.any_instance.stub(:save).and_return(false)
        post :create, {:asso_tech => { "tech_id" => "invalid value" }}, valid_session
        assigns(:asso_tech).should be_a_new(AssoTech)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        AssoTech.any_instance.stub(:save).and_return(false)
        post :create, {:asso_tech => { "tech_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested asso_tech" do
        asso_tech = AssoTech.create! valid_attributes
        # Assuming there are no other asso_teches in the database, this
        # specifies that the AssoTech created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        AssoTech.any_instance.should_receive(:update).with({ "tech_id" => "1" })
        put :update, {:id => asso_tech.to_param, :asso_tech => { "tech_id" => "1" }}, valid_session
      end

      it "assigns the requested asso_tech as @asso_tech" do
        asso_tech = AssoTech.create! valid_attributes
        put :update, {:id => asso_tech.to_param, :asso_tech => valid_attributes}, valid_session
        assigns(:asso_tech).should eq(asso_tech)
      end

      it "redirects to the asso_tech" do
        asso_tech = AssoTech.create! valid_attributes
        put :update, {:id => asso_tech.to_param, :asso_tech => valid_attributes}, valid_session
        response.should redirect_to(asso_tech)
      end
    end

    describe "with invalid params" do
      it "assigns the asso_tech as @asso_tech" do
        asso_tech = AssoTech.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AssoTech.any_instance.stub(:save).and_return(false)
        put :update, {:id => asso_tech.to_param, :asso_tech => { "tech_id" => "invalid value" }}, valid_session
        assigns(:asso_tech).should eq(asso_tech)
      end

      it "re-renders the 'edit' template" do
        asso_tech = AssoTech.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        AssoTech.any_instance.stub(:save).and_return(false)
        put :update, {:id => asso_tech.to_param, :asso_tech => { "tech_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested asso_tech" do
      asso_tech = AssoTech.create! valid_attributes
      expect {
        delete :destroy, {:id => asso_tech.to_param}, valid_session
      }.to change(AssoTech, :count).by(-1)
    end

    it "redirects to the asso_teches list" do
      asso_tech = AssoTech.create! valid_attributes
      delete :destroy, {:id => asso_tech.to_param}, valid_session
      response.should redirect_to(asso_teches_url)
    end
  end

end
