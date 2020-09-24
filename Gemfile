source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Rails dependancies and support
ruby '2.6.3' # A Nice Programming Language.  Very cozy.
gem 'rails', '~> 6.0.3', '>= 6.0.3.3' # This here monolith.
gem 'jbuilder', '~> 2.7' # DSL for declaring JSON objects.
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby] # Timezone support for Windows users.

# Database and DB support
gem 'pg', '>= 0.18', '< 2.0' # Postgres DB.
gem 'seedbank' # Allows for organization and runtime options for seeds.
gem 'activerecord-import' # Provides methods for bulk import of AR objects.
gem 'faker' # Randomized data for seeds and tests.

# Servers
gem 'puma', '~> 4.1'

# Front End Compilers and Magical Artifacts
gem 'bootsnap', '>= 1.4.2', require: false # Speeds up loading by packaging imports and requires.
gem 'turbolinks', '~> 5' # Makes server-side rendered SPA's kinda possible.
gem 'webpacker', '~> 5.0' # Rails wrapper for Webpack.

# Front End Frameworks, Libraries, and Visualization Tools
gem 'react-rails' # Integrate React into rails for component management
gem 'chartkick' # Create charts through API calls
gem 'groupdate' # Easily organize by date for charts
gem 'flutie' # Magically creates divs around each view for CSS organization

# User authorization
gem 'devise' # Creates user authentication

group :development, :test do
  # Testing and support
  gem 'factory_bot' # Allows reusable factories to be created to test models.
  gem 'rspec-rails' # Testing framework. Replaces MiniTest.

  # Debugging
  gem 'pry-rails' # Beautiful debugging.
  gem 'pry-inline' # Inline debugging support.

  # IDE integration
  gem 'solargraph' # Allows IDE users to have live linting and documentation.
end

group :development do
  gem 'web-console', '>= 3.3.0' # Access an interactive console on exception pages or by calling 'console.'

  # Server and Module reloading for developers
  gem 'foreman' # Runs multiple server processes as determined by Procfile.dev.  Allows for HMR.
  gem 'listen', '~> 3.2' # Event watching for Spring.
  gem 'spring' # Live reloading of rails server
  gem 'spring-watcher-listen', '~> 2.0.0' # Interface for Spring and Listen.
end

group :test do
  # System Testing
  gem 'capybara', '>= 2.15' # Framework for system tests
  gem 'selenium-webdriver' # System test driver
  gem 'webdrivers' # Allows system testing in browsers
end
