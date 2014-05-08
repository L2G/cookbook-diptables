class Chef::Runner

  alias_method :old_delayed_actions, :delayed_actions

  def delayed_actions *args
    
    result = old_delayed_actions *args
    # p "wkpo!! on appelle delayed_actions avec #{args} => #{result}"
    result.each do |n|
      p "wkpo!! on a #{n.resource.resource_name} # #{n.resource.name} # #{n.action}"
    end
    result
  end

end
