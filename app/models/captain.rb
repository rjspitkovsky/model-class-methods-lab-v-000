class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operatiors
    includes(:boats :classifications).where(classifications: {name: "Catamaran"})
  end
end
