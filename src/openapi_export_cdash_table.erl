-module(openapi_export_cdash_table).

-export([encode/1]).

-export_type([openapi_export_cdash_table/0]).

-type openapi_export_cdash_table() ::
    #{ 'class_variables' => list(),
       'domain_variables' => list()
     }.

encode(#{ 'class_variables' := ClassVariables,
          'domain_variables' := DomainVariables
        }) ->
    #{ 'class-variables' => ClassVariables,
       'domain-variables' => DomainVariables
     }.
