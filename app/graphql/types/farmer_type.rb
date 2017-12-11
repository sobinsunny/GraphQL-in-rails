FarmerType = GraphQL::ObjectType.define do
  name "Farmer"
  description "Farmer details"
  field :id, !types.ID
  field :products, !types[ProductType]
  field :user, !types[UserType]
end