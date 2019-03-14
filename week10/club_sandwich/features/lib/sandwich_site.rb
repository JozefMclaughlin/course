
require_relative '../lib/pages/index'
require_relative '../lib/pages/edit'
require_relative '../lib/pages/show'
require_relative '../lib/pages/new'


  module Club_Sandwich

    def indexsandwich
      SandwichIndex.new
    end
    def newsandwich
      SandwichNew.new
    end
    def showsandwich
      SandwichShow.new
    end
    def editxsandwich
      SandwichEdit.new
    end


  end
