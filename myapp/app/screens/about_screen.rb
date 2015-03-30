class AboutScreen < PM::GroupedTableScreen
  title "About"

  def table_data
    @about_table_data||=[{
      title: "Get Help",
      cells:[
        { title: "Email us", action: :email_us},
        { title: "My Map", action: :open_my_map, arguments: 0},
        {
          title: "Debug",
          accessory: {
            view: :switch,
            action: :switched,
            arguments: { message: "Switched!" }
          }
        }
      ]
    }]
  end

  def email_us
    "mailto:user@host.com".nsurl.open

  end

  def open_my_map
    open MyMapScreen.new(nav_bar: true)

  end

  def switched(args={})
    App.alert "Debug Mode: #{args[:value]? 'ON' : 'OFF'}"

  end

end