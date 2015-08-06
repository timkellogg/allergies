class Fixnum

  define_method(:allergies) do

    allergies = []
    allergies_values = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries",
                        16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats" }

    allergies_total = self

    [1, 2, 4, 8, 16, 32, 64, 128].each do |score|
      allergies_total -= score
      if allergies_total < 0
        allergies
      else
        allergies.push(allergies_values[score])
      end
    end

    if allergies == []
      allergies.push('None')
    end

    allergies
  end

end
