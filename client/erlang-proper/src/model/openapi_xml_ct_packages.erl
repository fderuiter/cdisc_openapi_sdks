-module(openapi_xml_ct_packages).

-include("openapi.hrl").

-export([openapi_xml_ct_packages/0]).

-export([openapi_xml_ct_packages/1]).

-export_type([openapi_xml_ct_packages/0]).

-type openapi_xml_ct_packages() ::
  [ {'self', openapi_ct_packages:openapi_ct_packages() }
  ].


openapi_xml_ct_packages() ->
    openapi_xml_ct_packages([]).

openapi_xml_ct_packages(Fields) ->
  Default = [ {'self', openapi_ct_packages:openapi_ct_packages() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

