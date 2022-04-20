class AreaPolicy
    attr_reader :user, :area
  
    def initialize(user, area)
      @user = user
      @area = area
    end
  
    def new?
        @user.has_role? :admin
        
    end

    def create?
        @user.has_role? :admin
    end
end