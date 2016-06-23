package 'tree' do 
	action :install
end
package 'git' do
	action :install
end

file '/etc/motd' do 
   content "property of Colivares

HOSTNAME : #{node['ipaddress']}
IP : #{node['ipaddress']}
MEM : #{node['memory']['total']}
CPU : #{node['cpu']['0']['mhz']} MHz
"
end
