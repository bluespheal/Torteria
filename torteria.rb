class Torta
  attr_reader :time

  def self.cake_in(lote)
    end_time = lote.map { |x| x.time }.max
    torta_state = ["cruda", "casi lista", "lista", "quemada"]

    for i in 0..end_time + 1
      lote.map do |y|
        if i < y.time - 2
          p "Su #{y.class.name} sigue #{torta_state[0]}. Desea esperar un minuto mas? s/n"
          choice = gets.chomp
          if choice == "n"
            y.sacar_tortas(y.class.name, torta_state[0])
            lote.delete(y)
          end
          p "#{y.class.name} #{torta_state[0]}!"
        elsif i < y.time - 1
          p "Su #{y.class.name} está #{torta_state[1]}. Desea esperar un minuto mas? s/n"
          choice = gets.chomp
          if choice == "n"
            y.sacar_tortas(y.class.name, torta_state[1])
            lote.delete(y)
          end
          p "#{y.class.name} #{torta_state[1]}"
        elsif i  == y.time
          p "Su #{y.class.name} está #{torta_state[2]}. Desea esperar un minuto mas? s/n"
          choice = gets.chomp
          if choice == "n"
            y.sacar_tortas(y.class.name, torta_state[2])
            lote.delete(y)
          end
          p "#{y.class.name} #{torta_state[2]}!"
        elsif i > y.time
          p "Su #{y.class.name} está #{torta_state[3]}. Desea esperar un minuto mas? s/n"
          choice = gets.chomp
          if choice == "n"
            y.sacar_tortas(y.class.name, torta_state[3])
            lote.delete(y)
          end
          p "#{y.class.name} #{torta_state[3]}!"
        # else
        #   sacar_tortas(torta_state)
        end
      end
      sleep 0.5
      # p i      
    end
  end



  def sacar_tortas(name, torta_state)
    puts "Se ha sacado un lote #{name} #{torta_state}"

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

# p chocolate

lote = [chocolate, queso, pina, zarza]

Torta.cake_in(lote)
# chocolate.meter_tortas(10)
# pina.meter_tortas(10)
# queso.meter_tortas(8)
# zarza.meter_tortas(20)


