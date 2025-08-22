-module(openapi_products_links).

-export([encode/1]).

-export_type([openapi_products_links/0]).

-type openapi_products_links() ::
    #{ 'self' => openapi_products_ref:openapi_products_ref(),
       'data_collection' => openapi_productgroup_data_collection:openapi_productgroup_data_collection(),
       'data_tabulation' => openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation(),
       'data_analysis' => openapi_productgroup_data_analysis:openapi_productgroup_data_analysis(),
       'terminology' => openapi_productgroup_terminology:openapi_productgroup_terminology(),
       'measure' => openapi_productgroup_qrs:openapi_productgroup_qrs()
     }.

encode(#{ 'self' := Self,
          'data_collection' := DataCollection,
          'data_tabulation' := DataTabulation,
          'data_analysis' := DataAnalysis,
          'terminology' := Terminology,
          'measure' := Measure
        }) ->
    #{ 'self' => Self,
       'data-collection' => DataCollection,
       'data-tabulation' => DataTabulation,
       'data-analysis' => DataAnalysis,
       'terminology' => Terminology,
       'measure' => Measure
     }.
