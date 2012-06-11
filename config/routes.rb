ActionController::Routing::Routes.draw do |map|
  map.connect 'timesheet/report.:format', :controller => 'timesheet', :action => 'report'
  map.connect 'timesheet/context_menu.:format', :controller => 'timesheet', :action => 'context_menu'
  map.connect 'timesheet/reset', :controller => 'timesheet', :action => 'reset', :conditions => { :method => :delete }
  map.connect '/timesheet/stop', :controller => 'timesheet', :action => 'stop'                                                                                                                                                                                   
  map.connect '/timesheet/start', :controller => 'timesheet', :action => 'start'                                                                                                                                                                                 
  map.connect '/timesheet/suspend', :controller => 'timesheet', :action => 'suspend'                                                                                                                                                                             
  map.connect '/timesheet/resume', :controller => 'timesheet', :action => 'resume'                                                                                                                                                                               
  map.connect '/timesheet/render_menu', :controller => 'timesheet', :action => 'render_menu'                                                                                                                                                                     
  map.connect '/timesheet/show_report', :controller => 'timesheet', :action => 'show_report'                                                                                                                                                                     
  map.connect '/timesheet/delete', :controller => 'timesheet', :action => 'delete'                                                                                                                                                                               
  map.connect '/timesheet', :controller => 'timesheet', :action => 'index'   
end
