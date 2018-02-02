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

file '/home/praneeth/Builds/Chefplaybook/test.html' do
	content 'created in chefplaybook dir'
	
end



 

	


