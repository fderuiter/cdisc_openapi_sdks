-module(openapi_health).

-include("openapi.hrl").

-export([openapi_health/0]).

-export([openapi_health/1]).

-export_type([openapi_health/0]).

-type openapi_health() ::
  [ {'healthy', boolean() }
  | {'ldapAuthenticationHealthy', boolean() }
  | {'ldapAuthorizationHealthy', boolean() }
  | {'databaseHealthy', boolean() }
  | {'esHealthy', boolean() }
  ].


openapi_health() ->
    openapi_health([]).

openapi_health(Fields) ->
  Default = [ {'healthy', boolean() }
            , {'ldapAuthenticationHealthy', boolean() }
            , {'ldapAuthorizationHealthy', boolean() }
            , {'databaseHealthy', boolean() }
            , {'esHealthy', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

