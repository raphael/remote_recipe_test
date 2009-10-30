template '/mnt/www/index.html' do
  source 'index.erb'
  variables( :page_content => @node[:app_homepage][:page_content],
             :page_title   => @node[:app_homepage][:page_title] )
end
