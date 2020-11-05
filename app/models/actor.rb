# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def movie 
    a_id = self.id 
    matching_characters = Character.where({ :actor_id => a_id })

    return
  end

  def characters
    my_id = self.id 

    matching_movies

    return
    
  end
end
