require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'
require 'bookclean'

class BookCleanTest < MiniTest::Unit::TestCase 
  def test_publisher_clean
    assert_equal "Difusão", BookClean::Publisher.clean("difusão editora")
    assert_equal "Opção", BookClean::Publisher.clean("opÇÃo editora")
    assert_equal "Neotrópica", BookClean::Publisher.clean("editora neotrópica")
    assert_equal "Ática", BookClean::Publisher.clean("ática")
    assert_equal "Gold", BookClean::Publisher.clean("gold editora ltda")
    assert_equal "Gold", BookClean::Publisher.clean("gold editora ltda.")
    assert_equal "Editora da Mente", BookClean::Publisher.clean("editora da mente")
    assert_equal "Civilização", BookClean::Publisher.clean("civilizaÇao editora")    
  end 
end