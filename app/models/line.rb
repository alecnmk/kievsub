class Line < ActiveRecord::Base
  has_many :stations
  has_many :transitions
  
  def st
    returnable = []
    stations.each do |station|
      returnable[station.order] = station
    end
    returnable
  end 
end

# == Schema Information
#
# Table name: lines
#
#  id    :integer         not null, primary key
#  color :string(255)
#
