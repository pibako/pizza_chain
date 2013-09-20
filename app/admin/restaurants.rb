# -*- coding: utf-8 -*-
ActiveAdmin.register Restaurant do
  show do |restaurant|
    attributes_table do
      row :id
      row :name

      schedule = restaurant.schedule

      row :weekday do
        div "#{schedule.open_weekday} - #{schedule.close_weekday}"
      end

      row :weekend do
        div "#{schedule.open_weekend} - #{schedule.close_weekend}"
      end

      restaurant.pizzas.each do |pizza|
        row :pizza do
          div "#{pizza.name}, #{pizza.price} zł - #{pizza.description}"
        end
      end
    end
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
    end

    f.inputs "Schedule" do
      f.semantic_fields_for(:schedule,
                            restaurant.schedule || restaurant.build_schedule) do |schedule|
        schedule.inputs(:open_weekday,
                        :close_weekday,
                        :open_weekend,
                        :close_weekend)
      end
    end

    f.has_many :pizzas do |pizza|
      pizza.inputs do
        pizza.input :name
        pizza.input :price
        pizza.input :description
      end
    end

    f.actions
  end
end
