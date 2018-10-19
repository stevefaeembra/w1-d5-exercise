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
