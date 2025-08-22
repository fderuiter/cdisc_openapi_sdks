-module(openapi_health).

-export([encode/1]).

-export_type([openapi_health/0]).

-type openapi_health() ::
    #{ 'healthy' => boolean(),
       'ldapAuthenticationHealthy' => boolean(),
       'ldapAuthorizationHealthy' => boolean(),
       'databaseHealthy' => boolean(),
       'esHealthy' => boolean()
     }.

encode(#{ 'healthy' := Healthy,
          'ldapAuthenticationHealthy' := LdapAuthenticationHealthy,
          'ldapAuthorizationHealthy' := LdapAuthorizationHealthy,
          'databaseHealthy' := DatabaseHealthy,
          'esHealthy' := EsHealthy
        }) ->
    #{ 'healthy' => Healthy,
       'ldapAuthenticationHealthy' => LdapAuthenticationHealthy,
       'ldapAuthorizationHealthy' => LdapAuthorizationHealthy,
       'databaseHealthy' => DatabaseHealthy,
       'esHealthy' => EsHealthy
     }.
