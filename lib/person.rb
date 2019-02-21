require "pry"

class Person
  attr_accessor :bank_account
  attr_reader  :name, :hygiene, :happiness

  def initialize(name, happiness=8, hygiene=8, bank_account=25)
    @name = name
    @happiness = happiness
    @hygiene = hygiene
    @bank_account = bank_account
  end


  def happiness=(new_happiness)
    @happiness = new_happiness
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(new_hygiene)
    @hygiene = new_hygiene
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def clean?
    if @hygiene > 7
      return true
    else
      return false
    end
  end


  def happy?
    if @happiness > 7
      return true
    else
      return false
    end
  end

  def get_paid(salary)
    @salary = salary
    @bank_account += @salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene +=4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness +=2
    self.hygiene -=3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end



  def start_conversation(partner, topic)
    if topic == "politics"
      self.happiness -= 2
      partner.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      partner.happiness += 1
      return "blah blah sun blah rain"
    else
     return "blah blah blah blah blah"
   end
 end
end
