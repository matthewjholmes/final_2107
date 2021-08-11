require './lib/item'
require './lib/auction'
require './lib/attendee'
attendee = Attendee.new(name: 'Megan', budget: '$50')
#=> #<Attendee:0x00007fbda913f038 @budget=50, @name="Megan">

attendee.name
#=> "Megan"

attendee.budget
#=> 50
