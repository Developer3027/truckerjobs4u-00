class Landing < ApplicationRecord
  before_save :format_phone_number

  private
  def format_phone_number
    self.phone = self.phone.gsub(/\D/, '').insert(0, '(').insert(4, ') ').insert(9, '-')
  end
end
