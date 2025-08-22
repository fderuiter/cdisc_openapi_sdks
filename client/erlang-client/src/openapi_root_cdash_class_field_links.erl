-module(openapi_root_cdash_class_field_links).

-export([encode/1]).

-export_type([openapi_root_cdash_class_field_links/0]).

-type openapi_root_cdash_class_field_links() ::
    #{ 'self' => openapi_root_cdash_class_field_ref:openapi_root_cdash_class_field_ref(),
       'versions' => list()
     }.

encode(#{ 'self' := Self,
          'versions' := Versions
        }) ->
    #{ 'self' => Self,
       'versions' => Versions
     }.
