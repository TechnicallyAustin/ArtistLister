module UsersHelper
    def find_or_create_by(name)
        User.find(name: params[:name]) || User.create(name: params[:name])
    end
    
end
