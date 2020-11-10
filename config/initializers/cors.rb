Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'gtime.netlify.app'
  
      resource '*',
        headers: :any,
        methods: [:get, :post]
    end
  end