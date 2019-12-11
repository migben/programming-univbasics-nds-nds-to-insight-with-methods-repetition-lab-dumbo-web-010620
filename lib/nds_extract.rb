$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
# Enjoyed the Nth-Order Method example on the Intro. It's a popular reference that's used quite often in the course of Harvard CS50. 
# Unable to use the multi line comment format =begin =end 

def directors_totals(src)
  
  result = {}
  director_index = 0
  
  while director_index < src.size
    
    director = src[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
    
  end
  
  result
end

def gross_for_director(d)
  
  total = 0
  index = 0

  while index < d[:movies].size
  
    total += d[:movies][index][:worldwide_gross]
    index += 1
    
  end

  total
  
end

#######################################################
#                   My code is below                  #
#######################################################

def list_of_directors(src)
  # Write this implementation
  director_list = []
  idx = 0
  
  while idx < src.size
    director_list << src[idx][:name]
    
    idx += 1
  end
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  total = 0
  
end


