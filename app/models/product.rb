class Product < ApplicationRecord
  translates :title, :description, fallbacks_for_empty_translations: true
  # I18n.with_locale(:ru) do
  #   Post.create_translation_table!(...)
  # end
end
