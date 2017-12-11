Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
    field :addUser, UserInputType do
	    description "Create user"
	    argument :user, UserInputType
	    resolve ->(obj,args,c) {
	    	p "--------------------------------"
	    	p args[:user]
	      User.create!(args[:user])
	    }
	end
end