-module(openapi_analysis_data_model_and_implementation_guide_ada_m_and_ada_mig_api).

-export([mdr_adam_product_datastructures_get/2, mdr_adam_product_datastructures_get/3,
         mdr_adam_product_datastructures_structure_get/3, mdr_adam_product_datastructures_structure_get/4,
         mdr_adam_product_datastructures_structure_variables_get/3, mdr_adam_product_datastructures_structure_variables_get/4,
         mdr_adam_product_datastructures_structure_variables_var_get/4, mdr_adam_product_datastructures_structure_variables_var_get/5,
         mdr_adam_product_datastructures_structure_varsets_get/3, mdr_adam_product_datastructures_structure_varsets_get/4,
         mdr_adam_product_datastructures_structure_varsets_varset_get/4, mdr_adam_product_datastructures_structure_varsets_varset_get/5,
         mdr_adam_product_get/2, mdr_adam_product_get/3]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get ADaM Data Structure List
-spec mdr_adam_product_datastructures_get(ctx:ctx(), binary()) -> {ok, openapi_adam_product_datastructures:openapi_adam_product_datastructures(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_get(Ctx, Product) ->
    mdr_adam_product_datastructures_get(Ctx, Product, #{}).

-spec mdr_adam_product_datastructures_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_adam_product_datastructures:openapi_adam_product_datastructures(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_get(Ctx, Product, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Data Structure
-spec mdr_adam_product_datastructures_structure_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_adam_datastructure:openapi_adam_datastructure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_get(Ctx, Product, Structure) ->
    mdr_adam_product_datastructures_structure_get(Ctx, Product, Structure, #{}).

-spec mdr_adam_product_datastructures_structure_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_adam_datastructure:openapi_adam_datastructure(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_get(Ctx, Product, Structure, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures/", Structure, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Variable List
-spec mdr_adam_product_datastructures_structure_variables_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_adam_datastructure_variables:openapi_adam_datastructure_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_variables_get(Ctx, Product, Structure) ->
    mdr_adam_product_datastructures_structure_variables_get(Ctx, Product, Structure, #{}).

-spec mdr_adam_product_datastructures_structure_variables_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_adam_datastructure_variables:openapi_adam_datastructure_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_variables_get(Ctx, Product, Structure, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures/", Structure, "/variables"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Variable
-spec mdr_adam_product_datastructures_structure_variables_var_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_adam_variable:openapi_adam_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_variables_var_get(Ctx, Product, Structure, Var) ->
    mdr_adam_product_datastructures_structure_variables_var_get(Ctx, Product, Structure, Var, #{}).

-spec mdr_adam_product_datastructures_structure_variables_var_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_adam_variable:openapi_adam_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_variables_var_get(Ctx, Product, Structure, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures/", Structure, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Variable Set List
-spec mdr_adam_product_datastructures_structure_varsets_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_adam_datastructure_varsets:openapi_adam_datastructure_varsets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_varsets_get(Ctx, Product, Structure) ->
    mdr_adam_product_datastructures_structure_varsets_get(Ctx, Product, Structure, #{}).

-spec mdr_adam_product_datastructures_structure_varsets_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_adam_datastructure_varsets:openapi_adam_datastructure_varsets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_varsets_get(Ctx, Product, Structure, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures/", Structure, "/varsets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Variable Set
-spec mdr_adam_product_datastructures_structure_varsets_varset_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_adam_varset:openapi_adam_varset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_varsets_varset_get(Ctx, Product, Structure, Varset) ->
    mdr_adam_product_datastructures_structure_varsets_varset_get(Ctx, Product, Structure, Varset, #{}).

-spec mdr_adam_product_datastructures_structure_varsets_varset_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_adam_varset:openapi_adam_varset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_datastructures_structure_varsets_varset_get(Ctx, Product, Structure, Varset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, "/datastructures/", Structure, "/varsets/", Varset, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get ADaM Product
-spec mdr_adam_product_get(ctx:ctx(), binary()) -> {ok, openapi_adam_product:openapi_adam_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_get(Ctx, Product) ->
    mdr_adam_product_get(Ctx, Product, #{}).

-spec mdr_adam_product_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_adam_product:openapi_adam_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_adam_product_get(Ctx, Product, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/adam/", Product, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


