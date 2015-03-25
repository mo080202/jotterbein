class JotMailer < ApplicationMailer
  default from: 'no-reply@jotterbein.com'
  def new_jot(jot)
    @jot = jot
    mail(to: 'michael.ogrysko@comcast.net', subject: 'You have a new jot')
  end

end
