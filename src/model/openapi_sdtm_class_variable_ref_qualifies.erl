-module(openapi_sdtm_class_variable_ref_qualifies).

-include("openapi.hrl").

-export([openapi_sdtm_class_variable_ref_qualifies/0]).

-export([openapi_sdtm_class_variable_ref_qualifies/1]).

-export_type([openapi_sdtm_class_variable_ref_qualifies/0]).

-type openapi_sdtm_class_variable_ref_qualifies() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtm_class_variable_ref_qualifies() ->
    openapi_sdtm_class_variable_ref_qualifies([]).

openapi_sdtm_class_variable_ref_qualifies(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

