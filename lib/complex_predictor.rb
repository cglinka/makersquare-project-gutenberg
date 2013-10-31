require_relative 'predictor'

class ComplexPredictor < Predictor
  # Public: Trains the predictor on books in our dataset. This method is called
  # before the predict() method is called.
  #
  # Returns nothing.
  def train!
    @data = {}

    @all_books.each do |category, books|
      @data[category] = {
        :counts => Hash.new(0),
        :totalwords => 0
      }
      books.each do |filename, tokens|
        tokens.each do |w|
          if good_token?(w)
            @data[category][:counts][w] +=1
            @data[category][:totalwords] +=1
          end
        end
      end
    end
  end

  # Public: Predicts category.
  #
  # tokens - A list of tokens (words).
  #
  # Returns a category.
  def predict(tokens)

    @data.each do |category, counts|
      
    end

    predicted_category
  end
end
