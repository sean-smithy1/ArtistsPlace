class Spree::SupportForm
  include ActiveModel::Model

  attr_accessor :name, :email, :subject, :message


  def serialize
    ActiveSupport::JSON.encode(self.as_json)
  end

end