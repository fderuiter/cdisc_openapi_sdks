-module(openapi_maintenance_body).

-export([encode/1]).

-export_type([openapi_maintenance_body/0]).

-type openapi_maintenance_body() ::
    #{ 'maintenanceMode' => boolean(),
       'maintenanceMessage' => binary()
     }.

encode(#{ 'maintenanceMode' := MaintenanceMode,
          'maintenanceMessage' := MaintenanceMessage
        }) ->
    #{ 'maintenanceMode' => MaintenanceMode,
       'maintenanceMessage' => MaintenanceMessage
     }.
