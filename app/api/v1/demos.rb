class V1::Demos < Grape::API
  resource :demos do
    desc 'List demo',
      entity: Entities::V1::Demo
    get do
      present Demo.all, with: Entities::V1::Demo
    end
  end
end
