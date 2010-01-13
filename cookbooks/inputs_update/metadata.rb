maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          IO.read(File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'LICENSE')))
description      "Test input updates."
version          "0.0.1"

recipe  "input_updates", "Update inputs."

attribute "input_updates",
  :type => "hash"

attribute "app_homepage/updated",
  :type => "string"

attribute "app_homepage/updated_array",
  :type => "array"
