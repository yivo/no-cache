# no-cache

The gem provides easy way to fully disable HTTP cache in Rails controllers.

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
