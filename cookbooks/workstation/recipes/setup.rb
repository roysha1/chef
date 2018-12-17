package 'vim-enhanced'


package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

template '/etc/motd' do
  source 'motd.erb'
  variables(
    :name => 'roy'
  )
  action :create
end


