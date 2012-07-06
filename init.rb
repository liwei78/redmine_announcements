# liwei created at 2012-7-6
# 0.0.1 basic
require 'redmine'

Redmine::Plugin.register :redmine_announcement do
  name 'Redmine Announcement Plugin'
  author 'Riquel Li'
  description 'Announcement for display'
  version '0.0.1'
  url 'http://railser.cn'
  author_url 'http://railser.cn/me'

  settings :default => {},
           :partial => 'announcements/manage'

  $ANNOUNCEMENT = ""

end

ActionController::Routing::Routes.draw do |map|
  map.resources :announcements, :only => [:edit]
end