# example ingredients array
ingredients = [
    ["rye", "sourdough", "baguette"],
    ["ham", "salami", "turkey"],
    ["swiss", "munster", "cheddar"],
    ["mayo", "mustard", "tabasco"]
]

def sandwich_request(ingredients, order)
  order.each do |eachitem|
    ingredients.each do |eachingred|
      if eachingred.include?(eachitem)
        return true
      end
    end
    return false
  end
end


# example city_info hash
cities = {
  :new_york => {
    :mayor => "Bill DeBlasio",
    :population => 8337000,
    :website => "http://www.nyc.gov"
  },
  :los_angeles => {
    :mayor => "Eric Garcetti",
    :population => 3884307,
    :website => "http://www.lacity.org"
  },
  :miami => {
    :mayor => "Tomás Regalado",
    :population => 419777,
    :website => "http://www.miamigov.com"
  },
  :chicago => {
    :mayor => "Rahm Emanuel",
    :population => 2695598,
    :website => "http://www.cityofchicago.org/"
  }
}

def city_populations(cities)
  totalPop = 0
  cities.each do |indivcity, icinfo|
    totalPop += (icinfo[:population]).to_i
  end
  return totalPop
end
