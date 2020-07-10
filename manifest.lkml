project_name: "extension_kitchensink"

constant: CONNECTION_NAME {
  value: "connection"
  export: override_required
}

application: extension-kitchensink {
  label: "Kitchen Sink"
  # url: "http://localhost:8080/bundle.js"
  file: "bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    core_api_methods: ["all_connections", "search_folders"]
    user_attributes: [
      "locale",
      "marketplace_extension_kitchensink_kitchensink_foo",
      "marketplace_extension_kitchensink_kitchensink_bar",
      "marketplace_extension_kitchensink_kitchensink_secret"
    ]
  }
}
