module ::M1
  module M2
    module M3
      module ModuleMethods

        def method_1
          print "In M1::M2::M3::ModuleMethods method_1\n"
          method_2
        end

        private

        def method_2
          print "In M1::M2::M3::ModuleMethods method_2\n"
        end
      end

      extend ModuleMethods
    end
  end
end
