class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  def initialize(station)
    @station = station
  end

  def enter(ticket)
    #Ticketクラスのstampメソッドを呼び出し、自分の駅名を渡す
    ticket.stamp(@station)
  end

  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@station)
    distance = to - from
    FARES[distance - 1]
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
