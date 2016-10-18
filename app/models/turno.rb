# == Schema Information
#
# Table name: turnos
#
#  id          :integer          not null, primary key
#  descripcion :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Turno < ActiveRecord::Base
end
