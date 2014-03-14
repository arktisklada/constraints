#Routing Constraints

Get the starter project with seed data

`https://github.com/arktisklada/constraints`

Ok, so what do we have here?  We don't have any models.  Let's look at the seed data to determine what models we need to create.  Remember how to do that?

`rails g model name:string slug:string map_link:string`

What's the next step?

`rake db:migrate`

Import the seed data with `rake db:seed`


---
###Let's get a view of this:

Let's just say that it's a very simple app all about vacations.

Create the root route to `root 'vacation#index'`

Add the route `get '/:vacation', :to => 'vacation#view'`

Create `vacation_controller.rb`

```
class VacationController < ApplicationController
  def index
    @vacations = Vacation.all
  end

  def view
    @vacation = Vacation.find_by(slug: params[:vacation])
  end
end
```

Add the proper index.html.erb view

```
<ul>
  <% @vacations.each do |v| %>
    <li><%= link_to v.name, v.slug %></li>
  <% end %>
</ul>
```

And view.html.erb

```
<%= link_to 'Map!', @vacation.map_link %>
```

Navigate to a slug.  Now navigate to a slug that doesn't exist.  What's the error?

###Let's create a routing constraint

Create a folder in `app` called `constraints`

Crazy right?

Create a file in this folder called `vacation_constraint.rb`

Constraints operate with true/false.  They tell the router whether or not a particular constraint or condition has been met.  What we're going to do is check if there's a vacation with the slug entered into the address bar

```
class VacationConstraint
  def self.matches?(request)
    vacation = Vacation.find_by(slug: request.params[:vacation]) rescue nil
    vacation.present?
  end
end
```

The params key needs to match the route.  Speaking of, let's update the route to conform to this route

`get '/:vacation' => 'vacation#view', as: :vacation, :constraints => VacationConstraint`

Try a slug that exists and one that doesn't.  What's the error message now?

###Let's add another model

What if we have another model?  What should we do?  

*Create a new one, rake db:migrate, and then add one with a slug*

***Routing priority!***

Think of this in an ecommerce scenario, where you might have a category slug and product slug that both appear right after the .com.  Maybe similarly with a blog, where a post, category, and date can all appear after the .com  What's the priority?

 