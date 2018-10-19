=begin
  summary structure

  pet_shop{}
    :pets[]{}
      :name
      :pet_type
      :breed
      :price
    :admin{}
      :total_cash
      :pets_sold
    :name

=end

def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  # adjust by amount
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, count)
  raise "makes no sense" unless count>0
  pet_shop[:admin][:pets_sold] += count
end

def stock_count(pet_shop)
  # check length of pets array
  pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed_name)
  # result needs to be an array, not just
  # an integer. Not obvious from test but
  # going to return an array of matching pets
  result = []
  for pet in pet_shop[:pets]
    result << pet if pet[:breed] == breed_name
  end
  result
end

def find_pet_by_name(pet_shop, pet_name)
  # return pet based on its pet_name
  for pet in pet_shop[:pets]
    return pet if pet[:name] = pet_name
  end
  return nil # no such pet
end
