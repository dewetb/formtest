#!/home/dewet/.rbenv/shims/ruby
require 'rubygems'
require 'mechanize'

login_url = "http://blomerusphotography.com/contact/"
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get(login_url)
form = page.forms[0]

#form.fields.each { |f| puts f.name }
form.full_name = 'Formtest Form Filler'
form.email = 'dewet@blomerus.org'
form.city = "Let's just say I'm on the internet"
form.send 'message-new=', "I am a computer so I will not be having children until 2030 at the earliest"
page = form.submit
# puts page.body