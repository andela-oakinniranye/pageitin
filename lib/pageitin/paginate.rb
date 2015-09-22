module Pageitin
  module Paginate
    class ::ActiveRecord::Base
      def self.paginate(page: 1, per_page: 10)
        @@per_page = per_page
        offset_param = (page * per_page) - per_page
        limit(per_page).offset(offset_param)
      end

      def config(*args)
        #set default values
      end

      def self.total_page
        (count.to_f / @@per_page).ceil
      end
    end

  end
end
