application appx (
  $app_name  = $title,
  $db_user   = 'appx_user',
  $db_pass   = 'appx_pass',
) {

  appx::database { "Appx[$title]/database":
    app_name => $app_name,
    db_user  => $db_user,
    db_pass  => $db_pass,
    export   => Appx_database["Appx[$title]/database"],
  }

  appx::appserver { "Appx[$title]/appserver":
    consume => Appx_database["Appx[$title]/database"],
    export  => Appx_api["Appx[$title]/appserver"],
  }

  appx::website { "Appx[$title]/website":
    consume => Appx_api["Appx[$title]/appserver"],
  }

}
