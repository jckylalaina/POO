require 'time'
require 'pry'

class Event
  attr_accessor :start_date,:duration,:title,:attendees

  def initialize(start_date,duration,title,attendees)
    @start_date = Time.parse(start_date)
    @duration = duration.to_i
    @title = title.to_s
    @attendees = attendees 
  end

  def postpone_24 #decale un evenement de 24h
    @postpone = @start_date + (60 * 60 * 24)
  end	
   
  def end_date #savoir la date de fin de l evenement

    @end_date = @start_date + (@duration * 60) # duration en minutes * 60 pour donner al durees

  end 
  
  def is_past #pour savoir si  la l'evenement est deja passe ou pas
    @start_date < Time.now 		 	
  end

  def is_future #savoir si l'evenement est dans le futur
  
  !self.is_past #contraire a in_past
  
  end	

  def is_soon #si l'evenement est proche -de 30 minutes
   Time.now - @start_date < (30*60) #temps maintenant - debut de l'evenement si inferieur a 60 fois 30 CAD - de 30minutes
  end	

  def to_s #afficher de maniere propre
   puts "Titre: #{@title} \n\Date de début: #{@start_date} \n\Durée:#{@duration}"
   puts "Invité: #{@attendees.join(",")}"
  end	

end
