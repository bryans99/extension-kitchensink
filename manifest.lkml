application: kitchen_sink {
  label: "Kitchen Sink"
  url: "http://localhost:8080/bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    core_api_methods: ["all_connections", "search_folders"]
    user_attributes: ["locale", "foo"]
  }
}
