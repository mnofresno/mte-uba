# == Schema Information
#
# Table name: chofers
#
#  id         :integer          not null, primary key
#  nombre     :string
#  apellido   :string
#  radio      :string
#  taller_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_chofers_on_taller_id  (taller_id)
#
# Foreign Keys
#
#  fk_rails_0a1b307730  (taller_id => tallers.id)
#

class Chofer < ActiveRecord::Base
  belongs_to :taller
end
