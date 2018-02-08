class Spree::StaticPagesController < Spree::StoreController

  def privacy_policy
  end

  def about
  end

  def support

  end

  def support_create
    if verify_recaptcha(model: @support_email) && @user.save
      # Add message good
      rendor 'support'
    else
      # Add errors Bad
      render 'support'
    end


  end

  def coming_soon
    render layout: false
  end

end
