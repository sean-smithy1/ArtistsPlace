class Spree::SupportFormsController < Spree::StoreController


  def new
    @support=Spree::SupportForm.new
    if spree_current_user
      @support.email=spree_current_user.email
    end
    # @support.like_reply='Yes'
  end

  def create
    @support=Spree::SupportForm.new(form_params)
    @user=spree_current_user
    if verify_recaptcha
      if @support.valid?
        FormMailer.support_request(@support.serialize, @user).deliver_later
        flash.now[:success] = "Your request has been sent to our support staff"
        render :new
      else
        #Model errors
        redirect_back(fallback_location: :new)
      end
    else
      flash.now[:error] = "There is a problem with the Recaptcha"
      redirect_back(fallback_location: :new)
    end
  end

private
  def form_params
    params.permit(:name, :email, :subject, :message)
  end
end