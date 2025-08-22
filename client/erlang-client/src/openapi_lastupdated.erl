-module(openapi_lastupdated).

-export([encode/1]).

-export_type([openapi_lastupdated/0]).

-type openapi_lastupdated() ::
    #{ '_links' => openapi_lastupdated_links:openapi_lastupdated_links(),
       'overall' => binary(),
       'data_analysis' => binary(),
       'data_collection' => binary(),
       'data_tabulation' => binary(),
       'measure' => binary(),
       'terminology' => binary()
     }.

encode(#{ '_links' := Links,
          'overall' := Overall,
          'data_analysis' := DataAnalysis,
          'data_collection' := DataCollection,
          'data_tabulation' := DataTabulation,
          'measure' := Measure,
          'terminology' := Terminology
        }) ->
    #{ '_links' => Links,
       'overall' => Overall,
       'data-analysis' => DataAnalysis,
       'data-collection' => DataCollection,
       'data-tabulation' => DataTabulation,
       'measure' => Measure,
       'terminology' => Terminology
     }.
