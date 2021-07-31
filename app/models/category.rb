class Category < ApplicationRecord
    has_many :children_categories, class_name: "Category",
    foreign_key: "category_id"
    belongs_to :parent_category, class_name: "Category", optional: true, foreign_key: 'category_id'


    has_and_belongs_to_many :products

    #Categoría puede tener muchas categorías hijas
    def all_the_child_categories
        children_categories = []
        self.children_categories.each do |child_category|
            children_categories << child_category.name
        end
        children_categories
    end

    #Muestra categorías padres que no tienen categorías hijas asignadas
    def self.parent_category
        where(category_id: nil) 
    end
end
