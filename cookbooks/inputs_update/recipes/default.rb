ruby 'Update inputs' do
  @node[:inputs_update][:updated] = 'New Value'
  @node[:inputs_update][:updated_array] = [ 'New Array Value', 'Other New Array Value' ]
end
