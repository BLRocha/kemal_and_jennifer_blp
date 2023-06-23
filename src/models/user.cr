require "./application_model_base"

class User < ApplicationModelBase
  mapping(
    id: Primary64,
    name: String,
    email: String,
  )
end
