-module(openapi_xml_sdtmig_dataset).

-include("openapi.hrl").

-export([openapi_xml_sdtmig_dataset/0]).

-export([openapi_xml_sdtmig_dataset/1]).

-export_type([openapi_xml_sdtmig_dataset/0]).

-type openapi_xml_sdtmig_dataset() ::
  [ {'self', openapi_sdtmig_dataset:openapi_sdtmig_dataset() }
  ].


openapi_xml_sdtmig_dataset() ->
    openapi_xml_sdtmig_dataset([]).

openapi_xml_sdtmig_dataset(Fields) ->
  Default = [ {'self', openapi_sdtmig_dataset:openapi_sdtmig_dataset() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

