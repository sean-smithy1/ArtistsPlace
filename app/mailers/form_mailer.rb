class FormMailer < ActionMailer::Base

    # ActiveJob (deliver_later) needs to have an id field. ActiveRecord provides Ids
    # Since I'm using a tableless Object, No id is included
    # Fix was to serialize the object into JSON, pass through to mailer then create HWINA
    # https://stackoverflow.com/questions/27898183/rails-4-2-using-deliver-later-with-a-tableless-model
    # This can be persisted at a later date if we want to capture support requests
    # There is a gem that wraps this up also
    
  def support_request(support_json, user)
    @support=JSON.parse(support_json).with_indifferent_access
    mail(to: @support[:email], subject: 'Artists Place Support Request')   
  end
end