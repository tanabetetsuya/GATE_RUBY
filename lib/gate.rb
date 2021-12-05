class Gate
  def initialize(station)
    @station = station
  end

  def enter(ticket)
  end

  def exit(ticket)
    true
  end


end

  

#umeda = Gate.new(:umeda)
#mikuni = Gate.new(:mikuni)

#ticket = Ticket.new(150)
#umeda.enter(ticket)
#mikuni.exit(ticket)

#ticket = Ticket.new(190)
#umeda.enter(ticket)
#mikuni.exit(ticket)
