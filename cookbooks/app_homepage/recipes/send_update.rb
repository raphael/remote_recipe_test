remote_recipe 'send_update' do
  recipe 'app_homepage::update'
  recipients_tags @node[:app_homepage][:update][:target]
  attributes :app_homepage => { :page_title   => @node[:app_homepage][:update][:page_title],
                                :page_content => @node[:app_homepage][:update][:page_content] }
end
