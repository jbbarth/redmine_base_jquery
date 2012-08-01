require 'redmine'
require 'redmine_base_jquery/hooks'

Redmine::Plugin.register :redmine_base_jquery do
  name 'Redmine Jquery plugin'
  description 'This plugin brings Jquery to Redmine 1.x or 2.0.x before it lands in a stable release (maybe 2.1.0)'
  author 'Jean-Baptiste BARTH'
  author_url 'mailto:jeanbaptiste.barth@gmail.com'
  version '0.0.1'
  url 'https://github.com/jbbarth/redmine_base_jquery'
end
