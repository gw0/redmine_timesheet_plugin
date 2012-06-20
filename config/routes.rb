if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match '/timesheet/report', :to => 'timesheet#report', :via =>:get
    match '/timesheet/report', :to => 'timesheet#report', :via =>:post
    match '/timesheet/context_menu', :to => 'timesheet#context_menu', :via =>:get  
    match '/timesheet/reset', :to => 'timesheet#reset', :via =>:delete , :format => false 
    match '/timesheet/stop', :to => 'timesheet#stop', :via =>:get , :format => false
    match '/timesheet/start', :to => 'timesheet#start', :via =>:get , :format => false
    match '/timesheet/suspend', :to => 'timesheet#suspend', :via =>:get , :format => false
    match '/timesheet/resume', :to => 'timesheet#resume', :via =>:get , :format => false
    match '/timesheet/render_menu', :to => 'timesheet#render_menu', :via =>:get , :format => false
    match '/timesheet/show_report', :to => 'timesheet#show_report', :via =>:get , :format => false
    match '/timesheet/delete', :to => 'timesheet#delete', :via =>:get , :format => false
    match '/timesheet', :to => 'timesheet#index', :via =>:get , :format => false
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'timesheet/index', :controller => 'timesheet', :action => 'index'
    map.connect 'timesheet/context_menu', :controller => 'timesheet', :action => 'context_menu'
    map.connect 'timesheet/report.:format', :controller => 'timesheet', :action => 'report'
    map.connect 'timesheet/reset', :controller => 'timesheet', :action => 'reset', :conditions => { :method => :delete }
  end
end
