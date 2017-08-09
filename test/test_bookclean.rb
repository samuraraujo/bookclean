require 'minitest/unit'
require 'minitest/autorun'
require 'minitest/pride'
require 'bookclean'
#to run it:
# ruby -Ilib:test test/test_bookclean
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
    assert_equal "Contraponto", BookClean::Publisher.clean("contraponto editora")
    assert_equal "Difusão Cultural do Livro", BookClean::Publisher.clean("difusÃo cultural do livro")
    assert_equal "Globo", BookClean::Publisher.clean("globo lv")
    assert_equal "Globo", BookClean::Publisher.clean("globo s.a.")
    assert_equal "Autentica", BookClean::Publisher.clean("EDITORA AUTENTICA")
    assert_equal "Expressão Gráfica", BookClean::Publisher.clean("expressão gráfica editora    ")
    assert_equal "Ática", BookClean::Publisher.clean("Ã?tica")
    
  end 
end