UserInputType = GraphQL::InputObjectType.define do
  name "UserInput"
  description "User details"
  argument :id, types.ID
  argument :first_name, types.String
  argument :last_name, types.String
  argument :email, types.String
  argument :password, types.String
  argument :password_confirmation, types.String
end	