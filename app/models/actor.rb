class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters


    def full_name
        # binding.pry
        "#{first_name} #{last_name}"
    end

    def list_roles
        # binding.pry
        self.characters.map { |character|"#{character.name} - #{character.show.name}"}
    end






end