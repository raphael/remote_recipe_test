remote_recipe 'run remote' do
  recipe          @node[:remote_recipe][:recipe]
  recipients_tags @node[:remote_recipe][:recipients_tags]
  attributes      @node[:remote_recipe][:attributes]
end
  
