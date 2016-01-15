Appx::Database produces Appx_database {
  name => $app_name,
  host => $::fqdn,
  user => $db_user,
  pass => $db_pass,
}

define appx::database (
  $app_name,
  $db_user,
  $db_pass,
) {

  notify { "database":
    message => "$app_name on $clientcert using user:$db_user and pass:$db_pass",
  }

}
