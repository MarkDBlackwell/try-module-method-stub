require 'minitest/autorun'
require 'minitest/pride'
require_relative 'module_methods'

module ::M1
  module M2
    module M3
      class Test < ::Minitest::Test

        def test_it
          ::M1::M2::M3.stub :method_2, method_2_stub do
            filename = ::File.realpath 'loaded.rb', ::Kernel.__dir__
            ::Kernel.load filename
          end
        end

        private

        def method_2_stub
          @method_2_value ||= ::Kernel.lambda do
            print "In Test method_2_stub\n"
          end
        end
      end
    end
  end
end
