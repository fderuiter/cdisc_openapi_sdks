-module(openapi_sdtm_class_ref_subclass).

-include("openapi.hrl").

-export([openapi_sdtm_class_ref_subclass/0]).

-export([openapi_sdtm_class_ref_subclass/1]).

-export_type([openapi_sdtm_class_ref_subclass/0]).

-type openapi_sdtm_class_ref_subclass() ::
  [ {'href', binary() }
  | {'title', binary() }
  | {'type', binary() }
  ].


openapi_sdtm_class_ref_subclass() ->
    openapi_sdtm_class_ref_subclass([]).

openapi_sdtm_class_ref_subclass(Fields) ->
  Default = [ {'href', binary() }
            , {'title', binary() }
            , {'type', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

