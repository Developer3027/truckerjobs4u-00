class Landing < ApplicationRecord
  before_save :format_phone_number

  # ransack
  def self.ransackable_attributes(auth_object = nil)
    %w[created_at updated_at first_name last_name email phone location content]
  end

  def self.ransackable_associations(auth_object = nil)
    []
  end

  private
  def format_phone_number
    self.phone = self.phone.gsub(/\D/, '').insert(0, '(').insert(4, ') ').insert(9, '-')
  end
end
