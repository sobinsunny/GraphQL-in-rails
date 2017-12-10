ProductType = GraphQL::ObjectType.define do
  name "Product"
  description "Product details"
  # `!` marks a field as "non-null"
  field :id, !types.ID
  field :quantity, !types.Int
  field :quantity_in, !types.Int do 
  	 argument :unit, !types.Float
  end
  field :price, types.Float
end
