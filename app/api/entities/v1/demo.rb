class Entities::V1::Demo < Entities::V1::Base
  root 'data', 'object'

  expose :id, documentation: { type: 'Integer' }
  expose :name, documentation: { type: 'String' }
  expose :title, documentation: { type: 'String' }
  expose :content, documentation: { type: 'String' }
end
