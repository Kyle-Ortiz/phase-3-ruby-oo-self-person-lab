class Person 
     
     attr_reader :name
     attr_accessor :bank_account

     def initialize(name)
          @name = name
          @bank_account = 25
          @happiness = 8
          @hygeiene = 8 
     end

     def happiness(value)
          if value < 10 && value > 0 
               @happiness = value
          else if value > 10
               @happiness = 10
          else if value < 0 
               @happiness = 0
               
          end
     end

     def hygeiene(value)
          if value < 10 && value > 0 
               @hygeiene = value
          else if value > 10
               @hygeiene = 10
          else if value < 0 
               @hygeiene = 0
               
          end
     end

     def clean?
          if self.hygeiene > 7
               true
          else 
               false
          end
     end

     def happy?
          if self.happiness > 7 
               true
          else
               false 
          end
     end

     def get_paid(amount)
          self.bank_account += amount
          puts "all about the benjamins"
     end

     def take_bath
          self.hygeiene += 4
          puts "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out 
          self.happiness += 4 
          self.hygeiene -+ 3 
          puts "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
          self.happiness += 3 
          friend.happiness += 3 
          puts "Hi #{self.name}! It's #{friend.name}. How are you?"
     end

     def start_conversation(friend, topic)
          if topic == "politics"
               self.happiness -= 2 
               friend.happiness -= 2
               puts "blah blah partisan blah lobbyist"
          else if topic == "weather"
               self.happiness += 1 
               friend.happiness += 1 
               puts "blah blah sun blah rain"
          else 
               puts "blah" * 5
          end
     end
end