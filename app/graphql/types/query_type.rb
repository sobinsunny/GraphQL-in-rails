Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

    field :user, types.String do
      type types[UserType]
      argument :id, types.ID
      resolve ->(obj, args, ctx) {
        if args[:id].present?
          User.where(id: args[:id])
        else
          User.all
        end
      }
    end

    field :product, types.String do
      type types[ProductType]
      argument :id, types.ID
      resolve ->(obj, args, ctx) {
        if args[:id].present?
          Product.where(id: args[:id])
        else
          Product.all
        end
      }
    end




end
