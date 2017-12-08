UserType = GraphQL::ObjectType.define do
  name "User"
  description "User details"
  field :id, !types.ID
  field :first_name, types.String
  field :last_name, types.String
  field :full_name, types.String
  field :email, !types.String
end