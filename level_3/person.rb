# Here should be the `Person` class

class Person
  attr_accessor :title, :first_name, :last_name, :email

  def initialize(title, first_name, last_name, email)
    @title =  title
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def gender(title)
    case title
      when "M", "m" then gender = "Male"
      when "Mme", "Mlle" then gender = "Female"
    end
  end

end
