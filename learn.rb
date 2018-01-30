package 'apache' do
	package_name 'apache2'
end

service 'apache2' do
	action [:enable, :start]
end

