ruby 'Update inputs' do
  @node[:input_updates][:updated] = 'New Value'
  @node[:input_updates][:updated_array] = [ 'New Array Value', 'Other New Array Value' ]
end
