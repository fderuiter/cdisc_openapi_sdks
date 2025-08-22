-module(openapi_productgroup_terminology_links).

-include("openapi.hrl").

-export([openapi_productgroup_terminology_links/0]).

-export([openapi_productgroup_terminology_links/1]).

-export_type([openapi_productgroup_terminology_links/0]).

-type openapi_productgroup_terminology_links() ::
  [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
  | {'packages', list(openapi_ct_package_ref_element:openapi_ct_package_ref_element()) }
  ].


openapi_productgroup_terminology_links() ->
    openapi_productgroup_terminology_links([]).

openapi_productgroup_terminology_links(Fields) ->
  Default = [ {'self', openapi_productgroup_ref:openapi_productgroup_ref() }
            , {'packages', list(openapi_ct_package_ref_element:openapi_ct_package_ref_element()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

