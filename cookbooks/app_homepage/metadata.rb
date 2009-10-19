maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          IO.read(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'LICENSE')))
description      "Update apache homepage."
version          "0.0.1"

recipe  "app_homepage::default", "Update apache homepage."

#
# required attributes
#
attribute "page_title",
  :display_name => "Page title",
  :description => "Title of homepage",
  :required => true

attribute "page_content",
  :display_name => "Page content",
  :description => "Content of homepage",
  :required => true

