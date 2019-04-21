class Doctype < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }


  def self.to_csv(desired_columns, options = {})
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |data|
        csv << data.attributes.values_at(*desired_columns)
      end
    end
  end
end
