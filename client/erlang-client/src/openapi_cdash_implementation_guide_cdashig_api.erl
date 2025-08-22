-module(openapi_cdash_implementation_guide_cdashig_api).

-export([mdr_cdashig_version_classes_class_domains_get/3, mdr_cdashig_version_classes_class_domains_get/4,
         mdr_cdashig_version_classes_class_get/3, mdr_cdashig_version_classes_class_get/4,
         mdr_cdashig_version_classes_class_scenarios_get/3, mdr_cdashig_version_classes_class_scenarios_get/4,
         mdr_cdashig_version_classes_get/2, mdr_cdashig_version_classes_get/3,
         mdr_cdashig_version_domains_domain_fields_field_get/4, mdr_cdashig_version_domains_domain_fields_field_get/5,
         mdr_cdashig_version_domains_domain_fields_get/3, mdr_cdashig_version_domains_domain_fields_get/4,
         mdr_cdashig_version_domains_domain_get/3, mdr_cdashig_version_domains_domain_get/4,
         mdr_cdashig_version_domains_get/2, mdr_cdashig_version_domains_get/3,
         mdr_cdashig_version_get/2, mdr_cdashig_version_get/3,
         mdr_cdashig_version_scenarios_domain_scenario_fields_field_get/5, mdr_cdashig_version_scenarios_domain_scenario_fields_field_get/6,
         mdr_cdashig_version_scenarios_domain_scenario_fields_get/4, mdr_cdashig_version_scenarios_domain_scenario_fields_get/5,
         mdr_cdashig_version_scenarios_domain_scenario_get/4, mdr_cdashig_version_scenarios_domain_scenario_get/5,
         mdr_cdashig_version_scenarios_get/2, mdr_cdashig_version_scenarios_get/3,
         mdr_root_cdashig_domains_domain_fields_field_get/3, mdr_root_cdashig_domains_domain_fields_field_get/4,
         mdr_root_cdashig_scenarios_domain_scenario_fields_field_get/4, mdr_root_cdashig_scenarios_domain_scenario_fields_field_get/5]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get CDASHIG Class Domain List
-spec mdr_cdashig_version_classes_class_domains_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdashig_class_domains:openapi_cdashig_class_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_domains_get(Ctx, Version, Class) ->
    mdr_cdashig_version_classes_class_domains_get(Ctx, Version, Class, #{}).

-spec mdr_cdashig_version_classes_class_domains_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_class_domains:openapi_cdashig_class_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_domains_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/classes/", Class, "/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Class
-spec mdr_cdashig_version_classes_class_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdashig_class:openapi_cdashig_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_get(Ctx, Version, Class) ->
    mdr_cdashig_version_classes_class_get(Ctx, Version, Class, #{}).

-spec mdr_cdashig_version_classes_class_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_class:openapi_cdashig_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/classes/", Class, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Class Scenario List
-spec mdr_cdashig_version_classes_class_scenarios_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdashig_class_scenarios:openapi_cdashig_class_scenarios(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_scenarios_get(Ctx, Version, Class) ->
    mdr_cdashig_version_classes_class_scenarios_get(Ctx, Version, Class, #{}).

-spec mdr_cdashig_version_classes_class_scenarios_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_class_scenarios:openapi_cdashig_class_scenarios(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_class_scenarios_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/classes/", Class, "/scenarios"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Class List
-spec mdr_cdashig_version_classes_get(ctx:ctx(), binary()) -> {ok, openapi_cdashig_product_classes:openapi_cdashig_product_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_get(Ctx, Version) ->
    mdr_cdashig_version_classes_get(Ctx, Version, #{}).

-spec mdr_cdashig_version_classes_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdashig_product_classes:openapi_cdashig_product_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_classes_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/classes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Domain Field
-spec mdr_cdashig_version_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_cdashig_domain_field:openapi_cdashig_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field) ->
    mdr_cdashig_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field, #{}).

-spec mdr_cdashig_version_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_domain_field:openapi_cdashig_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_fields_field_get(Ctx, Version, Domain, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/domains/", Domain, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Domain Field List
-spec mdr_cdashig_version_domains_domain_fields_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdashig_domain_fields:openapi_cdashig_domain_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_fields_get(Ctx, Version, Domain) ->
    mdr_cdashig_version_domains_domain_fields_get(Ctx, Version, Domain, #{}).

-spec mdr_cdashig_version_domains_domain_fields_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_domain_fields:openapi_cdashig_domain_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_fields_get(Ctx, Version, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/domains/", Domain, "/fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Domain
-spec mdr_cdashig_version_domains_domain_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_cdashig_domain:openapi_cdashig_domain(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_get(Ctx, Version, Domain) ->
    mdr_cdashig_version_domains_domain_get(Ctx, Version, Domain, #{}).

-spec mdr_cdashig_version_domains_domain_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_domain:openapi_cdashig_domain(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_domain_get(Ctx, Version, Domain, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/domains/", Domain, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Domain List
-spec mdr_cdashig_version_domains_get(ctx:ctx(), binary()) -> {ok, openapi_cdashig_product_domains:openapi_cdashig_product_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_get(Ctx, Version) ->
    mdr_cdashig_version_domains_get(Ctx, Version, #{}).

-spec mdr_cdashig_version_domains_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdashig_product_domains:openapi_cdashig_product_domains(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_domains_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/domains"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Product
-spec mdr_cdashig_version_get(ctx:ctx(), binary()) -> {ok, openapi_cdashig_product:openapi_cdashig_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_get(Ctx, Version) ->
    mdr_cdashig_version_get(Ctx, Version, #{}).

-spec mdr_cdashig_version_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdashig_product:openapi_cdashig_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Scenario Field
-spec mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, openapi_cdashig_scenario_field:openapi_cdashig_scenario_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(Ctx, Version, Domain, Scenario, Field) ->
    mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(Ctx, Version, Domain, Scenario, Field, #{}).

-spec mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_scenario_field:openapi_cdashig_scenario_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_fields_field_get(Ctx, Version, Domain, Scenario, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/scenarios/", Domain, ".", Scenario, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Scenario Field List
-spec mdr_cdashig_version_scenarios_domain_scenario_fields_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_cdashig_scenario_fields:openapi_cdashig_scenario_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_fields_get(Ctx, Version, Domain, Scenario) ->
    mdr_cdashig_version_scenarios_domain_scenario_fields_get(Ctx, Version, Domain, Scenario, #{}).

-spec mdr_cdashig_version_scenarios_domain_scenario_fields_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_scenario_fields:openapi_cdashig_scenario_fields(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_fields_get(Ctx, Version, Domain, Scenario, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/scenarios/", Domain, ".", Scenario, "/fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Scenario
-spec mdr_cdashig_version_scenarios_domain_scenario_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_cdashig_scenario:openapi_cdashig_scenario(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_get(Ctx, Version, Domain, Scenario) ->
    mdr_cdashig_version_scenarios_domain_scenario_get(Ctx, Version, Domain, Scenario, #{}).

-spec mdr_cdashig_version_scenarios_domain_scenario_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_cdashig_scenario:openapi_cdashig_scenario(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_domain_scenario_get(Ctx, Version, Domain, Scenario, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/scenarios/", Domain, ".", Scenario, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get CDASHIG Scenario List
-spec mdr_cdashig_version_scenarios_get(ctx:ctx(), binary()) -> {ok, openapi_cdashig_product_scenarios:openapi_cdashig_product_scenarios(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_get(Ctx, Version) ->
    mdr_cdashig_version_scenarios_get(Ctx, Version, #{}).

-spec mdr_cdashig_version_scenarios_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_cdashig_product_scenarios:openapi_cdashig_product_scenarios(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_cdashig_version_scenarios_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/cdashig/", Version, "/scenarios"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Root CDASHIG Domain Field
-spec mdr_root_cdashig_domains_domain_fields_field_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_cdashig_domain_field:openapi_root_cdashig_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdashig_domains_domain_fields_field_get(Ctx, Domain, Field) ->
    mdr_root_cdashig_domains_domain_fields_field_get(Ctx, Domain, Field, #{}).

-spec mdr_root_cdashig_domains_domain_fields_field_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_cdashig_domain_field:openapi_root_cdashig_domain_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdashig_domains_domain_fields_field_get(Ctx, Domain, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/cdashig/domains/", Domain, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get Root CDASHIG Scenario Field
-spec mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_root_cdashig_scenario_field:openapi_root_cdashig_scenario_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(Ctx, Domain, Scenario, Field) ->
    mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(Ctx, Domain, Scenario, Field, #{}).

-spec mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_root_cdashig_scenario_field:openapi_root_cdashig_scenario_field(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_cdashig_scenarios_domain_scenario_fields_field_get(Ctx, Domain, Scenario, Field, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/cdashig/scenarios/", Domain, ".", Scenario, "/fields/", Field, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


