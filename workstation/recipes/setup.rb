package 'vim-enhanced'


package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

file '/etc/motd' do
  content "property of:
  ip address : #{node['ipaddress']}

"
  action :create
end


