# no-cache

A gem providing way to make HTTP clients stop caching responses.

## Usage

Please, see the code sample below.

```ruby
class HelloController < ActionController::Metal
  before_action { no_cache! if request.get? }

  def index
    self.response_body = "Hello World!"
  end
end
```
