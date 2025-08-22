-module(openapi_measures_api).

-export([mdr_qrs_measure_version_get/3, mdr_qrs_measure_version_get/4,
         mdr_qrs_measure_version_items_get/3, mdr_qrs_measure_version_items_get/4,
         mdr_qrs_measure_version_items_item_get/4, mdr_qrs_measure_version_items_item_get/5,
         mdr_qrs_measure_version_responsegroups_get/3, mdr_qrs_measure_version_responsegroups_get/4,
         mdr_qrs_measure_version_responsegroups_responsegroup_get/4, mdr_qrs_measure_version_responsegroups_responsegroup_get/5]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get QRS Product
-spec mdr_qrs_measure_version_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_qrs_product:openapi_qrs_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_get(Ctx, Measure, Version) ->
    mdr_qrs_measure_version_get(Ctx, Measure, Version, #{}).

-spec mdr_qrs_measure_version_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_qrs_product:openapi_qrs_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_get(Ctx, Measure, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/qrs/", Measure, "/", Version, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get QRS Item List
-spec mdr_qrs_measure_version_items_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_qrs_items:openapi_qrs_items(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_items_get(Ctx, Measure, Version) ->
    mdr_qrs_measure_version_items_get(Ctx, Measure, Version, #{}).

-spec mdr_qrs_measure_version_items_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_qrs_items:openapi_qrs_items(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_items_get(Ctx, Measure, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/qrs/", Measure, "/", Version, "/items"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get QRS Item
-spec mdr_qrs_measure_version_items_item_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_qrs_item:openapi_qrs_item(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_items_item_get(Ctx, Measure, Version, Item) ->
    mdr_qrs_measure_version_items_item_get(Ctx, Measure, Version, Item, #{}).

-spec mdr_qrs_measure_version_items_item_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_qrs_item:openapi_qrs_item(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_items_item_get(Ctx, Measure, Version, Item, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/qrs/", Measure, "/", Version, "/items/", Item, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get QRS Response Group List
-spec mdr_qrs_measure_version_responsegroups_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_qrs_responsegroups:openapi_qrs_responsegroups(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_responsegroups_get(Ctx, Measure, Version) ->
    mdr_qrs_measure_version_responsegroups_get(Ctx, Measure, Version, #{}).

-spec mdr_qrs_measure_version_responsegroups_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_qrs_responsegroups:openapi_qrs_responsegroups(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_responsegroups_get(Ctx, Measure, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/qrs/", Measure, "/", Version, "/responsegroups"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get QRS Response Group
-spec mdr_qrs_measure_version_responsegroups_responsegroup_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_qrs_responsegroup:openapi_qrs_responsegroup(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_responsegroups_responsegroup_get(Ctx, Measure, Version, Responsegroup) ->
    mdr_qrs_measure_version_responsegroups_responsegroup_get(Ctx, Measure, Version, Responsegroup, #{}).

-spec mdr_qrs_measure_version_responsegroups_responsegroup_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_qrs_responsegroup:openapi_qrs_responsegroup(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_qrs_measure_version_responsegroups_responsegroup_get(Ctx, Measure, Version, Responsegroup, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/qrs/", Measure, "/", Version, "/responsegroups/", Responsegroup, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


