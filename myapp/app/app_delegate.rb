class AppDelegate < PM::Delegate
  def on_load(app, options)
    open_menu HomeScreen.new(nav_bar: true), left: NavigationScreen, to_show: :all

  end
end
