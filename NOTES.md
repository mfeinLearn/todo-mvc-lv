# Step 1: Intergrate Basic Theme to Asset Pipline

/ - And see a stubbed out, non-dynamic, page with the theme.

# Step 2: Allow people to CRUD lists.

ListController
 #index
 - see all their lists
 - doubling as my #new action
  in that it is presenting the
  person with a form to create
  a new list
/ - Index all the lists...
- create a list

- show a list

- i need a model
- i need a controller
- i should generate a resource (generates models and controllers )

Does it impact the DB?
Does it impact my URLS? '/lists/1'

# Step whatever: Fix Down Arrow on Make a List Form

***Feature Story***
I want people to be able to create lists. Then they should be able to add items
to those lists. They should be able to navigate many lists and see each lists
items.

lists
  has many items

items
  belongs to a list
--------
For every prefix after running 'rake routes'
-> for every name prefix you get:
path
url
ex: prefix_path
    prefix_url
List.create(:name => "Shopping List")
