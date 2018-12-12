package 'vim-enhanced'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

file '/etc/motd' do
  content 'this server is the property of chef training'
  action :create
end


