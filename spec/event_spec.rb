require_relative '../lib/event'

describe Event do
  
  before(:each) do
  	# ligne trouvée ici : https://geminstallthat.wordpress.com/2008/08/11/reloading-classes-in-rspec/
  	# qui permet de remettre à zéro la classe. Pratique pour la méthode count, mais pas obligatoire.
    Object.send(:remove_const, 'Event')
    load 'event.rb'
  end

    describe 'initialize' do
    	it 'test' do


      end
	  it "create an event" do
		start_date = "2010-10-31 12:00"
		duration = "30"
		title = "RDV"
		attendees = "JL@jl.com"
	  event = Event.new(start_date,duration,title,attendees)
	  expect(event.start_date).to eq(Time.parse(start_date))
	en

end