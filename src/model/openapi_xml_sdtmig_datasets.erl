-module(openapi_xml_sdtmig_datasets).

-include("openapi.hrl").

-export([openapi_xml_sdtmig_datasets/0]).

-export([openapi_xml_sdtmig_datasets/1]).

-export_type([openapi_xml_sdtmig_datasets/0]).

-type openapi_xml_sdtmig_datasets() ::
  [ {'self', openapi_sdtmig_datasets:openapi_sdtmig_datasets() }
  ].


openapi_xml_sdtmig_datasets() ->
    openapi_xml_sdtmig_datasets([]).

openapi_xml_sdtmig_datasets(Fields) ->
  Default = [ {'self', openapi_sdtmig_datasets:openapi_sdtmig_datasets() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

