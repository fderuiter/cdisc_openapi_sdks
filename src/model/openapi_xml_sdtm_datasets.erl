-module(openapi_xml_sdtm_datasets).

-include("openapi.hrl").

-export([openapi_xml_sdtm_datasets/0]).

-export([openapi_xml_sdtm_datasets/1]).

-export_type([openapi_xml_sdtm_datasets/0]).

-type openapi_xml_sdtm_datasets() ::
  [ {'self', openapi_sdtm_datasets:openapi_sdtm_datasets() }
  ].


openapi_xml_sdtm_datasets() ->
    openapi_xml_sdtm_datasets([]).

openapi_xml_sdtm_datasets(Fields) ->
  Default = [ {'self', openapi_sdtm_datasets:openapi_sdtm_datasets() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

