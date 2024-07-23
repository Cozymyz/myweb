class PostPolicy < ApplicationPolicy
    def create?
        user
    end
    
    def update?
        false
        record.user_id == user.id
    end

    def destroy?
        update?
    end
end