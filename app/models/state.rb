class State < ApplicationRecord
  validates :code, presence: true, length: { minimum: 2, maximum: 2 }
  validates :gstcode, presence: true, uniqueness: true, numericality: { less_than_or_equal_to: 37 }
  validates :name, presence: true, length: { minimum: 5, maximum: 25 }

  def self.to_csv(desired_columns, options = {})
    CSV.generate(options) do |csv|
      csv << desired_columns
      all.each do |data|
        csv << data.attributes.values_at(*desired_columns)
      end
    end
  end
end
