class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :category_id     , null: false
      t.integer    :condition_id     , null: false
      t.integer    :shipping_cost_id     , null: false
      t.integer    :shipping_area_id     , null: false
      t.integer    :shipping_date_id     , null: false
      t.timestamps
    end
  end
end
