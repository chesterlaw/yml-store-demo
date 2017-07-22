require 'yaml/store'
store = YAML::Store.new("my_store.yml")

new_number = (rand*10).to_i

store.transaction do
  !store[:my_array] && store[:my_array] = []
  if !store[:my_array].include? new_number
    store[:my_array].push(new_number)
  end
end
