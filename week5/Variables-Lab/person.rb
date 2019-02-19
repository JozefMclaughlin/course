class Person

    def name
        # create a name variable
        name = "Steve"
    end

    def age
        # create age variable here
        age = 25

    end

    def children
        # create children array here
        children = ["bob", "bill", "tarquin", "xavier"]


    end

    def address

        # create address hash here
        address = {
          :house_number => 55,
          :street => "Edward Rd",
          :town => "Clevedon",
          :county => "Avon",
          :postcode => "BS7 9TD",
          :email_addresses => ["steve@email", "notsteve@email"]
         }

    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end
