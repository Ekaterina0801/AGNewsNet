require ''
module AGNews
  module Net
    class << self
      attr_writer :batch_size, :count_epochs
      def trainWithNewParameters(batch_size, count_epochs)
        @batch_size = batch_size
        @count_epochs = count_epochs

      end
    end
  end
  module Classifier
    class <<self
      attr_accessor :file_path

    end
  end
end
