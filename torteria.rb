class Torta

  def meter_tortas(number)
    @number = number
    p "Se ha metido un lote de #{@number} tortas!"
    esperar(@time)
  end

  def esperar(time)
    cook_time = 0
    p "están crudas"
    while cook_time < time+2
      p "esperar un minuto mas? s/n"
      decision = gets.chomp
      decision == "s" ? cook_time += 1 : sacar_tortas(cook_time)
      p "Ya casi están listas" if cook_time > time - 2
      p "Ya están listas !" if cook_time == time
    end
  end

  def sacar_tortas(time)
    p "Se ha sacado un lote de #{@number} tortas"
  end

end

class TortaChocolate < Torta
  def initialize(time)
    @time = time
  end  
end

class TortaZarzamora < Torta
  def initialize(time)
    @time = time
  end   
end

class TortaPina < Torta
  def initialize(time)
    @time = time
  end  
end

class TortaQueso < Torta
  def initialize(time)
    @time = time
  end
end

chocolate = TortaChocolate.new(5)
pina = TortaPina.new(2)
queso = TortaQueso.new(4)
zarza = TortaZarzamora.new(3)

chocolate.meter_tortas(10)
pina.meter_tortas(15)
queso.meter_tortas(8)
zarza.meter_tortas(20)


