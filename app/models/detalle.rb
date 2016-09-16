# == Schema Information
#
# Table name: detalles
#
#  id              :integer          not null, primary key
#  cantidad        :integer
#  descripcion     :string
#  detallable_id   :integer
#  detallable_type :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_detalles_on_detallable_type_and_detallable_id  (detallable_type,detallable_id)
#

class Detalle < ActiveRecord::Base
end
