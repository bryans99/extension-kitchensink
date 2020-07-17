project_name: "extension_kitchensink"

constant: CONNECTION_NAME {
  value: "connection"
  export: override_required
}

application: extension-kitchensink {
  label: "Kitchen Sink"
  url: "http://localhost:8080/bundle.js"
  # file: "bundle.js"
  entitlements: {
    local_storage: yes
    navigation: yes
    new_window: yes
    allow_same_origin: yes
    core_api_methods: ["all_connections","search_folders", "run_inline_query", "me", "all_looks", "run_look"]
    external_api_urls: ["http://127.0.0.1:3000", "http://localhost:3000", "https://*.googleapis.com", "https://*.github.com", "https://*.auth0.com"]
    oauth2_urls: ["https://accounts.google.com/o/oauth2/v2/auth", "https://github.com/login/oauth/authorize", "https://dev-5eqts7im.auth0.com/authorize", "https://dev-5eqts7im.auth0.com/login/oauth/token", "https://github.com/login/oauth/access_token"]
    global_user_attributes: [
      "locale"
    ]
    scoped_user_attributes: [
      "foo",
      "bar",
      "secret",
      "custom_secret_key"
    ]
  }
}
