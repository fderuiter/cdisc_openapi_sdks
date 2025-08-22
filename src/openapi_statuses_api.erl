-module(openapi_statuses_api).

-export([health_get/1, health_get/2,
         mdr_maintenance_get/1, mdr_maintenance_get/2]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Check health of system components
-spec health_get(ctx:ctx()) -> {ok, openapi_health:openapi_health(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
health_get(Ctx) ->
    health_get(Ctx, #{}).

-spec health_get(ctx:ctx(), maps:map()) -> {ok, openapi_health:openapi_health(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
health_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/health"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Set maintenance mode and message
-spec mdr_maintenance_get(ctx:ctx()) -> {ok, openapi_maintenance_body:openapi_maintenance_body(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_maintenance_get(Ctx) ->
    mdr_maintenance_get(Ctx, #{}).

-spec mdr_maintenance_get(ctx:ctx(), maps:map()) -> {ok, openapi_maintenance_body:openapi_maintenance_body(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_maintenance_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/maintenance"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


