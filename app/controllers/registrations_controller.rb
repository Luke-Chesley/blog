class RegistrationsController < Devise::RegistrationsController
    def new(*args)
      respond_to do |format|
        format.html { super(*args) }
        format.json { render json: { message: 'success' } }
      end
    end
  end
  