Form:


<% form_tag(url) do %>

<% end %>

when we have a active record model we use the
following:

<%= form_for(instance of activerecord) do |f|  %>
f - form builder = which I am yealding to this
block, is able to generate fields, inputs and
controls based on the instance of activerecord

This will be only be used if i have
to manually build the form
