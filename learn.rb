package 'apache' do
	package_name 'apache2'
end

service 'apache2' do
	action [:enable, :start]
end

file '/var/www/index.html' do
	action :delete
end

file '/var/www/html/index.html' do
	content 'Hello world'
	owner 'praneeth'
end

file '/home/praneeth/Devops/Chefplaybook/test.html' do
	content 'created in chefplaybook dir'
	
end

execute 'command-test' do

	command 'echo blah >> /home/praneeth/Devops/Chefplaybook/test.html'
	only_if 'test -r /home/praneeth/Devops/Chefplaybook/test.html'

end

 

	


