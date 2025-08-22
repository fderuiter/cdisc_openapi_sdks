-module(openapi_default_api).

-export([mdr_about_get/1, mdr_about_get/2,
         mdr_lastupdated_get/1, mdr_lastupdated_get/2,
         mdr_products_data_analysis_get/1, mdr_products_data_analysis_get/2,
         mdr_products_data_collection_get/1, mdr_products_data_collection_get/2,
         mdr_products_data_tabulation_get/1, mdr_products_data_tabulation_get/2,
         mdr_products_get/1, mdr_products_get/2,
         mdr_products_measures_get/1, mdr_products_measures_get/2,
         mdr_products_terminology_get/1, mdr_products_terminology_get/2]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get Information About CDISC Library
-spec mdr_about_get(ctx:ctx()) -> {ok, openapi_about:openapi_about(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_about_get(Ctx) ->
    mdr_about_get(Ctx, #{}).

-spec mdr_about_get(ctx:ctx(), maps:map()) -> {ok, openapi_about:openapi_about(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_about_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/about"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Last Updated
-spec mdr_lastupdated_get(ctx:ctx()) -> {ok, openapi_lastupdated:openapi_lastupdated(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_lastupdated_get(Ctx) ->
    mdr_lastupdated_get(Ctx, #{}).

-spec mdr_lastupdated_get(ctx:ctx(), maps:map()) -> {ok, openapi_lastupdated:openapi_lastupdated(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_lastupdated_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/lastupdated"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Product Group Data Analysis
-spec mdr_products_data_analysis_get(ctx:ctx()) -> {ok, openapi_productgroup_data_analysis:openapi_productgroup_data_analysis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_analysis_get(Ctx) ->
    mdr_products_data_analysis_get(Ctx, #{}).

-spec mdr_products_data_analysis_get(ctx:ctx(), maps:map()) -> {ok, openapi_productgroup_data_analysis:openapi_productgroup_data_analysis(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_analysis_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products/DataAnalysis"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Product Group Data Collection
-spec mdr_products_data_collection_get(ctx:ctx()) -> {ok, openapi_productgroup_data_collection:openapi_productgroup_data_collection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_collection_get(Ctx) ->
    mdr_products_data_collection_get(Ctx, #{}).

-spec mdr_products_data_collection_get(ctx:ctx(), maps:map()) -> {ok, openapi_productgroup_data_collection:openapi_productgroup_data_collection(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_collection_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products/DataCollection"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Product Group Data Tabulation
-spec mdr_products_data_tabulation_get(ctx:ctx()) -> {ok, openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_tabulation_get(Ctx) ->
    mdr_products_data_tabulation_get(Ctx, #{}).

-spec mdr_products_data_tabulation_get(ctx:ctx(), maps:map()) -> {ok, openapi_productgroup_data_tabulation:openapi_productgroup_data_tabulation(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_data_tabulation_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products/DataTabulation"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Products
-spec mdr_products_get(ctx:ctx()) -> {ok, openapi_products:openapi_products(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_get(Ctx) ->
    mdr_products_get(Ctx, #{}).

-spec mdr_products_get(ctx:ctx(), maps:map()) -> {ok, openapi_products:openapi_products(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Product Group QRS
-spec mdr_products_measures_get(ctx:ctx()) -> {ok, openapi_productgroup_qrs:openapi_productgroup_qrs(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_measures_get(Ctx) ->
    mdr_products_measures_get(Ctx, #{}).

-spec mdr_products_measures_get(ctx:ctx(), maps:map()) -> {ok, openapi_productgroup_qrs:openapi_productgroup_qrs(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_measures_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products/Measures"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDISC Library Product Group Terminology
-spec mdr_products_terminology_get(ctx:ctx()) -> {ok, openapi_productgroup_terminology:openapi_productgroup_terminology(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_terminology_get(Ctx) ->
    mdr_products_terminology_get(Ctx, #{}).

-spec mdr_products_terminology_get(ctx:ctx(), maps:map()) -> {ok, openapi_productgroup_terminology:openapi_productgroup_terminology(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_products_terminology_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/products/Terminology"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


