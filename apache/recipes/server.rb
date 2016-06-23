package 'httpd' do
	action :install
end
file '/var/www/html/index.html' do
	content "<h1>Hello World! Colivares here</h1><hr><br><h2>IPADDRESS: #{node['ipaddress']}</h2><hr><br><h2>HOSTNAME : #{node['hostname']}</h2>"
                 
end
service 'httpd' do
	action [ :enable, :start ]
end
