maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          IO.read(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'LICENSE')))
description      "Update apache homepage."
version          "0.0.1"

recipe  "app_homepage", "Setup homepage."
recipe  "app_homepage::update", "Update homepage."
recipe  "app_homepage::send_update", "Send homepage update request."
recipe  "app_homepage::tag", "Set tag on server."
recipe  "app_homepage::tag_decom", "Add decommission tag to server."

attribute "app_homepage",
  :type => "hash"

attribute "app_homepage/update",
  :type => "hash"

#
# required attributes
#
attribute "app_homepage/page_title",
  :display_name => "Page title",
  :description => "Title of homepage",
  :type => "string",
  :required => true

attribute "app_homepage/page_content",
  :display_name => "Page content",
  :description => "Content of homepage",
  :type => "string",
  :required => true

attribute "app_homepage/page_content",
  :display_name => "Page content",
  :description => "Content of homepage",
  :type => "string",
  :required => true

#
# update attributes
#
attribute "app_homepage/update/target",
  :display_name => "Update target tag",
  :description => "Tag exposed by servers that should run update recipe",
  :type => "string"

attribute "app_homepage/update/page_title",
  :display_name => "Update page title",
  :description => "Page title to be set by update",
  :type => "string"

attribute "app_homepage/update/page_content",
    :display_name => "Update page content",
    :description => "Page content to be set by update",
    :type => "string"

#
# tag attribute
#
attribute "app_homepage/tag",
  :type => "hash"

attribute "app_homepage/tag/value",
  :display_name => "New tag value",
  :description => "Create new tag with given value",
  :type => "string"
