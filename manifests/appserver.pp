Appx::Appserver consumes Appx_database {
  app_name => $name,
  db_host  => $host,
  db_user  => $user,
  db_pass  => $pass,
}

Appx::Appserver produces Appx_api {
  name => $app_name,
  host => $::fqdn,
}

define appx::appserver (
  $app_name,
  $db_host,
  $db_user,
  $db_pass,
) {

  notify { "appserver":
    message => "$app_name on $clientcert using user:$db_user and pass:$db_pass",
  }

}
