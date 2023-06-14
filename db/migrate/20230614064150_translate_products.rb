class TranslateProducts < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir| # <=== 1
      dir.up do
        Product.create_translation_table!({ # <=== 2
                                         title: :string, # <=== 3
                                         description: :text
                                       }, {
                                         migrate_data: true, # <=== 4
                                         remove_source_columns: true # <=== 5
                                       })
      end

      dir.down do
        Product.drop_translation_table! migrate_data: true # <=== 6
      end
    end
  end
end
