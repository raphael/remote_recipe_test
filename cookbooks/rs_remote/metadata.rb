maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          IO.read(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'LICENSE')))
description      "Run remote recipes."
version          "0.0.1"

recipe  "rs_remote::default", "Runs a recipe on remote servers."

attribute "remote_recipe",
  :display_name => "Remote Recipe Settings",
  :type => "hash"
  
#
# required attributes
#
attribute "remote_recipe/recipe",
  :display_name => "Remote recipe name",
  :description => "Name of recipe that will be runned remotely",
  :required => true

attribute "remote_recipe/recipients_tags",
  :display_name => "Recipients tags",
  :description => "Tags exposed by servers that should run recipe",
  :required => true

#
# optional attributes
#
attribute "remote_recipe/attributes",
  :display_name => "Remote recipe attributes",
  :description => "Override attributes to use when running recipe remotely",
  :required => true

