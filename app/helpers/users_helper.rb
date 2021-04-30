module UsersHelper
    def find_or_create_by(name)
        User.find(id: params[:id]) || User.create(id: params[:id])
    end
    
end
