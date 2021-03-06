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

describe DesignatedOperationalEntitiesController do

  # This should return the minimal set of attributes required to create a valid
  # DesignatedOperationalEntity. As you add validations to DesignatedOperationalEntity, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end
  
  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # DesignatedOperationalEntitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all designated_operational_entities as @designated_operational_entities" do
      designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
      get :index, {}, valid_session
      assigns(:designated_operational_entities).should eq([designated_operational_entity])
    end
  end

  describe "GET show" do
    it "assigns the requested designated_operational_entity as @designated_operational_entity" do
      designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
      get :show, {:id => designated_operational_entity.to_param}, valid_session
      assigns(:designated_operational_entity).should eq(designated_operational_entity)
    end
  end

  describe "GET new" do
    it "assigns a new designated_operational_entity as @designated_operational_entity" do
      get :new, {}, valid_session
      assigns(:designated_operational_entity).should be_a_new(DesignatedOperationalEntity)
    end
  end

  describe "GET edit" do
    it "assigns the requested designated_operational_entity as @designated_operational_entity" do
      designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
      get :edit, {:id => designated_operational_entity.to_param}, valid_session
      assigns(:designated_operational_entity).should eq(designated_operational_entity)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new DesignatedOperationalEntity" do
        expect {
          post :create, {:designated_operational_entity => valid_attributes}, valid_session
        }.to change(DesignatedOperationalEntity, :count).by(1)
      end

      it "assigns a newly created designated_operational_entity as @designated_operational_entity" do
        post :create, {:designated_operational_entity => valid_attributes}, valid_session
        assigns(:designated_operational_entity).should be_a(DesignatedOperationalEntity)
        assigns(:designated_operational_entity).should be_persisted
      end

      it "redirects to the created designated_operational_entity" do
        post :create, {:designated_operational_entity => valid_attributes}, valid_session
        response.should redirect_to(DesignatedOperationalEntity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved designated_operational_entity as @designated_operational_entity" do
        # Trigger the behavior that occurs when invalid params are submitted
        DesignatedOperationalEntity.any_instance.stub(:save).and_return(false)
        post :create, {:designated_operational_entity => {}}, valid_session
        assigns(:designated_operational_entity).should be_a_new(DesignatedOperationalEntity)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        DesignatedOperationalEntity.any_instance.stub(:save).and_return(false)
        post :create, {:designated_operational_entity => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested designated_operational_entity" do
        designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
        # Assuming there are no other designated_operational_entities in the database, this
        # specifies that the DesignatedOperationalEntity created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        DesignatedOperationalEntity.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => designated_operational_entity.to_param, :designated_operational_entity => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested designated_operational_entity as @designated_operational_entity" do
        designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
        put :update, {:id => designated_operational_entity.to_param, :designated_operational_entity => valid_attributes}, valid_session
        assigns(:designated_operational_entity).should eq(designated_operational_entity)
      end

      it "redirects to the designated_operational_entity" do
        designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
        put :update, {:id => designated_operational_entity.to_param, :designated_operational_entity => valid_attributes}, valid_session
        response.should redirect_to(designated_operational_entity)
      end
    end

    describe "with invalid params" do
      it "assigns the designated_operational_entity as @designated_operational_entity" do
        designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DesignatedOperationalEntity.any_instance.stub(:save).and_return(false)
        put :update, {:id => designated_operational_entity.to_param, :designated_operational_entity => {}}, valid_session
        assigns(:designated_operational_entity).should eq(designated_operational_entity)
      end

      it "re-renders the 'edit' template" do
        designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        DesignatedOperationalEntity.any_instance.stub(:save).and_return(false)
        put :update, {:id => designated_operational_entity.to_param, :designated_operational_entity => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested designated_operational_entity" do
      designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
      expect {
        delete :destroy, {:id => designated_operational_entity.to_param}, valid_session
      }.to change(DesignatedOperationalEntity, :count).by(-1)
    end

    it "redirects to the designated_operational_entities list" do
      designated_operational_entity = DesignatedOperationalEntity.create! valid_attributes
      delete :destroy, {:id => designated_operational_entity.to_param}, valid_session
      response.should redirect_to(designated_operational_entities_url)
    end
  end

end
