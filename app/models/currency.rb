class Currency < ApplicationRecord
  validates :code, presence: true, length: { minimum: 3, maximum: 3 }
  validates :name, presence: true, length: { minimum: 5, maximum: 30 }

  def self.to_csv(desired_columns, options = {})
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |data|
        csv << data.attributes.values_at(*desired_columns)
      end
    end
  end
end
