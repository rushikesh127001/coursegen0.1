class Course <ActiveRecord::Base
    attr_accessor :form_step
    cattr_accessor :form_steps do
        %w(identity characteristics instructions)
    end

end        