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

describe Bounenkai2015sController do

  # This should return the minimal set of attributes required to create a valid
  # Bounenkai2015. As you add validations to Bounenkai2015, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # Bounenkai2015sController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all bounenkai2015s as @bounenkai2015s" do
      bounenkai2015 = Bounenkai2015.create! valid_attributes
      get :index, {}, valid_session
      assigns(:bounenkai2015s).should eq([bounenkai2015])
    end
  end

  describe "GET show" do
    it "assigns the requested bounenkai2015 as @bounenkai2015" do
      bounenkai2015 = Bounenkai2015.create! valid_attributes
      get :show, {:id => bounenkai2015.to_param}, valid_session
      assigns(:bounenkai2015).should eq(bounenkai2015)
    end
  end

  describe "GET new" do
    it "assigns a new bounenkai2015 as @bounenkai2015" do
      get :new, {}, valid_session
      assigns(:bounenkai2015).should be_a_new(Bounenkai2015)
    end
  end

  describe "GET edit" do
    it "assigns the requested bounenkai2015 as @bounenkai2015" do
      bounenkai2015 = Bounenkai2015.create! valid_attributes
      get :edit, {:id => bounenkai2015.to_param}, valid_session
      assigns(:bounenkai2015).should eq(bounenkai2015)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Bounenkai2015" do
        expect {
          post :create, {:bounenkai2015 => valid_attributes}, valid_session
        }.to change(Bounenkai2015, :count).by(1)
      end

      it "assigns a newly created bounenkai2015 as @bounenkai2015" do
        post :create, {:bounenkai2015 => valid_attributes}, valid_session
        assigns(:bounenkai2015).should be_a(Bounenkai2015)
        assigns(:bounenkai2015).should be_persisted
      end

      it "redirects to the created bounenkai2015" do
        post :create, {:bounenkai2015 => valid_attributes}, valid_session
        response.should redirect_to(Bounenkai2015.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bounenkai2015 as @bounenkai2015" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bounenkai2015.any_instance.stub(:save).and_return(false)
        post :create, {:bounenkai2015 => {  }}, valid_session
        assigns(:bounenkai2015).should be_a_new(Bounenkai2015)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Bounenkai2015.any_instance.stub(:save).and_return(false)
        post :create, {:bounenkai2015 => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested bounenkai2015" do
        bounenkai2015 = Bounenkai2015.create! valid_attributes
        # Assuming there are no other bounenkai2015s in the database, this
        # specifies that the Bounenkai2015 created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Bounenkai2015.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => bounenkai2015.to_param, :bounenkai2015 => { "these" => "params" }}, valid_session
      end

      it "assigns the requested bounenkai2015 as @bounenkai2015" do
        bounenkai2015 = Bounenkai2015.create! valid_attributes
        put :update, {:id => bounenkai2015.to_param, :bounenkai2015 => valid_attributes}, valid_session
        assigns(:bounenkai2015).should eq(bounenkai2015)
      end

      it "redirects to the bounenkai2015" do
        bounenkai2015 = Bounenkai2015.create! valid_attributes
        put :update, {:id => bounenkai2015.to_param, :bounenkai2015 => valid_attributes}, valid_session
        response.should redirect_to(bounenkai2015)
      end
    end

    describe "with invalid params" do
      it "assigns the bounenkai2015 as @bounenkai2015" do
        bounenkai2015 = Bounenkai2015.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bounenkai2015.any_instance.stub(:save).and_return(false)
        put :update, {:id => bounenkai2015.to_param, :bounenkai2015 => {  }}, valid_session
        assigns(:bounenkai2015).should eq(bounenkai2015)
      end

      it "re-renders the 'edit' template" do
        bounenkai2015 = Bounenkai2015.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Bounenkai2015.any_instance.stub(:save).and_return(false)
        put :update, {:id => bounenkai2015.to_param, :bounenkai2015 => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested bounenkai2015" do
      bounenkai2015 = Bounenkai2015.create! valid_attributes
      expect {
        delete :destroy, {:id => bounenkai2015.to_param}, valid_session
      }.to change(Bounenkai2015, :count).by(-1)
    end

    it "redirects to the bounenkai2015s list" do
      bounenkai2015 = Bounenkai2015.create! valid_attributes
      delete :destroy, {:id => bounenkai2015.to_param}, valid_session
      response.should redirect_to(bounenkai2015s_url)
    end
  end

end
