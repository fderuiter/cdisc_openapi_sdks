-module(openapi_root_sdtm_class_variable).

-include("openapi.hrl").

-export([openapi_root_sdtm_class_variable/0]).

-export([openapi_root_sdtm_class_variable/1]).

-export_type([openapi_root_sdtm_class_variable/0]).

-type openapi_root_sdtm_class_variable() ::
  [ {'_links', openapi_root_sdtm_class_variable_links:openapi_root_sdtm_class_variable_links() }
  ].


openapi_root_sdtm_class_variable() ->
    openapi_root_sdtm_class_variable([]).

openapi_root_sdtm_class_variable(Fields) ->
  Default = [ {'_links', openapi_root_sdtm_class_variable_links:openapi_root_sdtm_class_variable_links() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

