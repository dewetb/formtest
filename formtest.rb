#!/home/dewet/.rbenv/shims/ruby
require 'rubygems'
require 'mechanize'
require 'pry'

login_url = "http://blomerusphotography.com/contact/"
agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'
page = agent.get(login_url)
form = page.forms[0]
#form.fields.each { |f| puts f.name }
form.full_name = 'Formtest Form Filler'
form.email = 'dewet@blomerus.org'
form.city = "Let's just say I'm on the internet"
form.send "where-are-you-planning-to-give-birth-hom", "In a datacenter"
form.send "Name-of-your-doctor-or-midwife", "Many people"
form.send "is-there-any-circumstance", "Can't think of any"
form.send "tell-me-a-bit-about-your-pregnancy", "That's a bit open ended for me"
form.send "what-draws-you-to-my-work", "Electricity"
#binding.pry
#form.send 'message-new=', "I am a computer so I will not be having children until 2030 at the earliest"
page = form.submit
# puts page.body
#
