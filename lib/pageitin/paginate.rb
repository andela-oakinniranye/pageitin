module Pageitin
  extend ActiveSupport::Concern
  module ClassMethods
    def paginate(page: 1, per_page: 10)
      offset_param = (page * per_page) - per_page
      limit(per_page).offset(offset_param)
    end

    def total_page(per_page)
      (count.to_f / per_page).ceil
    end
  end

  module InstanceMethods

  end
end

ActiveRecord::Base.include Pageitin

    # cattr
      # per_page = per_page

    # def config(*args)
    #   #set default values
    # end

# class ActiveRecord::Base
#   include Pageitin
# end
