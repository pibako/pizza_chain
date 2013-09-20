ActiveAdmin.register Pizza do
  index do
    column :name
    column :restaurant
    column :price
    column :description
    default_actions
  end
end
