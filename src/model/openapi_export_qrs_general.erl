-module(openapi_export_qrs_general).

-include("openapi.hrl").

-export([openapi_export_qrs_general/0]).

-export([openapi_export_qrs_general/1]).

-export_type([openapi_export_qrs_general/0]).

-type openapi_export_qrs_general() ::
  [ {'Name', binary() }
  | {'Label', binary() }
  | {'Effective_Date', binary() }
  | {'Description', binary() }
  | {'Type', binary() }
  | {'Categorys_Codelist_C_Code', binary() }
  | {'Categorys_Term_C_Code', binary() }
  ].


openapi_export_qrs_general() ->
    openapi_export_qrs_general([]).

openapi_export_qrs_general(Fields) ->
  Default = [ {'Name', binary() }
            , {'Label', binary() }
            , {'Effective Date', binary() }
            , {'Description', binary() }
            , {'Type', binary() }
            , {'Category&#39;s Codelist C-Code', binary() }
            , {'Category&#39;s Term C-Code', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

