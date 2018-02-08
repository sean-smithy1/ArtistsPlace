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
        flash[:success] = "Your request has been sent to our support staff"
        render :new
      else
        #Model errors
        render :create
      end
    else
      flash[:error] = "Recaptcha Error - Please try again"
      render :create
    end
  end

private
  def form_params
    params.permit(:name, :email, :subject, :message)
  end
end