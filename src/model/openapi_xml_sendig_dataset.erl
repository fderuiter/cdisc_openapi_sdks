-module(openapi_xml_sendig_dataset).

-include("openapi.hrl").

-export([openapi_xml_sendig_dataset/0]).

-export([openapi_xml_sendig_dataset/1]).

-export_type([openapi_xml_sendig_dataset/0]).

-type openapi_xml_sendig_dataset() ::
  [ {'self', openapi_sendig_dataset:openapi_sendig_dataset() }
  ].


openapi_xml_sendig_dataset() ->
    openapi_xml_sendig_dataset([]).

openapi_xml_sendig_dataset(Fields) ->
  Default = [ {'self', openapi_sendig_dataset:openapi_sendig_dataset() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

