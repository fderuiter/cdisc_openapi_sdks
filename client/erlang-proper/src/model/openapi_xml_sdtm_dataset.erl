-module(openapi_xml_sdtm_dataset).

-include("openapi.hrl").

-export([openapi_xml_sdtm_dataset/0]).

-export([openapi_xml_sdtm_dataset/1]).

-export_type([openapi_xml_sdtm_dataset/0]).

-type openapi_xml_sdtm_dataset() ::
  [ {'self', openapi_sdtm_dataset:openapi_sdtm_dataset() }
  ].


openapi_xml_sdtm_dataset() ->
    openapi_xml_sdtm_dataset([]).

openapi_xml_sdtm_dataset(Fields) ->
  Default = [ {'self', openapi_sdtm_dataset:openapi_sdtm_dataset() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

