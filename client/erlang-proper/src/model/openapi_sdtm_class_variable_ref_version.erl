-module(openapi_sdtm_class_variable_ref_version).

-include("openapi.hrl").

-export([openapi_sdtm_class_variable_ref_version/0]).

-export([openapi_sdtm_class_variable_ref_version/1]).

-export_type([openapi_sdtm_class_variable_ref_version/0]).

-type openapi_sdtm_class_variable_ref_version() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtm_class_variable_ref_version() ->
    openapi_sdtm_class_variable_ref_version([]).

openapi_sdtm_class_variable_ref_version(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

