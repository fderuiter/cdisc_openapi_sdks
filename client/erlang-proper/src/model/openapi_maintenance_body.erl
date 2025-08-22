-module(openapi_maintenance_body).

-include("openapi.hrl").

-export([openapi_maintenance_body/0]).

-export([openapi_maintenance_body/1]).

-export_type([openapi_maintenance_body/0]).

-type openapi_maintenance_body() ::
  [ {'maintenanceMode', boolean() }
  | {'maintenanceMessage', binary() }
  ].


openapi_maintenance_body() ->
    openapi_maintenance_body([]).

openapi_maintenance_body(Fields) ->
  Default = [ {'maintenanceMode', boolean() }
            , {'maintenanceMessage', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

