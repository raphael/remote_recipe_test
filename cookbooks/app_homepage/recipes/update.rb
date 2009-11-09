template '/mnt/www/index.html' do
  source 'index.erb'
  variables( :page_content => @node[:app_homepage][:page_content],
             :page_title   => @node[:app_homepage][:page_title] )
end

ruby 'fix ports.conf' do
  ports_path = '/etc/apache2/ports.conf'
  content = IO.read(ports_path).gsub('8000', '80')
  File.open('ports_path', 'w') { |f| f.puts content }
end
