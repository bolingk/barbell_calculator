
def calc
  bar_weight = 45   # all possible weight configurations end in 5 for bar weight of 45lbs
  plates = [45, 35, 25, 15, 10, 5]

  weight = gets.chomp.to_i

  while weight % 5 != 0
    puts "Enter a weight in increments of 5 lbs:"
    weight = gets.chomp.to_i
  end 

 
  if weight % 10 == 0
    bar_less = weight - bar_weight + 5
    puts "Sorry! We don't have 2.5lb plates to configure this weight"
    puts "Let me bump it up 5 lbs to #{weight + 5} lbs"
    puts "For a weight of #{weight + 5} lbs load the following on each side:"
  else
    bar_less = weight - bar_weight
    puts "For a weight of #{weight} lbs load the following on each side:"
  end


  plates.each do |plate|
  	pair = plate * 2
    if bar_less >= 10
      num_pl = bar_less / pair
      bar_less = bar_less % pair
      if num_pl == 1
        puts "#{num_pl} plate of #{plate}" 
      elsif num_pl > 1
      	puts "#{num_pl} plates of #{plate}" 
      end
    end
  end
end

puts
puts "Enter the desired weight (in lbs.) to load the bar:"

calc



