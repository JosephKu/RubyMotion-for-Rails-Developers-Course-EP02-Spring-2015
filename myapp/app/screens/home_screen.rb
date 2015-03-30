class HomeScreen < PM::Screen
  title 'myapp'

  def on_load
    set_nav_bar_button :right, title: "About", action: :show_about
    set_nav_bar_button :left, title: "Menu", action: :show_menu
    set_attributes self.view, {
      background_color: hex_color("#FFFFFF")
    }

  end

  def show_about
    open AboutScreen.new(nav_bar: true)

  end

  def show_menu
    app_delegate.menu.show(:left)

  end

end