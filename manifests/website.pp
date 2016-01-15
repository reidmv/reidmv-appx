Appx::Website consumes Appx_api {
  name => $app_name,
  host => $api_host,
}

define appx::website (
  $app_name,
  $api_host,
) {

  notify { "website":
    message => "$app_name on $clientcert using api_host:$api_host",
  }

}
