-module(openapi_send_implementation_guide_sendig_api).

-export([mdr_root_sendig_datasets_dataset_variables_var_get/3, mdr_root_sendig_datasets_dataset_variables_var_get/4,
         mdr_sendig_version_classes_class_datasets_get/3, mdr_sendig_version_classes_class_datasets_get/4,
         mdr_sendig_version_classes_class_get/3, mdr_sendig_version_classes_class_get/4,
         mdr_sendig_version_classes_get/2, mdr_sendig_version_classes_get/3,
         mdr_sendig_version_datasets_dataset_get/3, mdr_sendig_version_datasets_dataset_get/4,
         mdr_sendig_version_datasets_dataset_variables_get/3, mdr_sendig_version_datasets_dataset_variables_get/4,
         mdr_sendig_version_datasets_dataset_variables_var_get/4, mdr_sendig_version_datasets_dataset_variables_var_get/5,
         mdr_sendig_version_datasets_get/2, mdr_sendig_version_datasets_get/3,
         mdr_sendig_version_get/2, mdr_sendig_version_get/3]).

-define(BASE_URL, <<"/api">>).

%% @doc 
%% Get Root SENDIG Dataset Variable
-spec mdr_root_sendig_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_root_sendig_dataset_variable:openapi_root_sendig_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sendig_datasets_dataset_variables_var_get(Ctx, Dataset, Var) ->
    mdr_root_sendig_datasets_dataset_variables_var_get(Ctx, Dataset, Var, #{}).

-spec mdr_root_sendig_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_root_sendig_dataset_variable:openapi_root_sendig_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_root_sendig_datasets_dataset_variables_var_get(Ctx, Dataset, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/root/sendig/datasets/", Dataset, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Class Dataset List
-spec mdr_sendig_version_classes_class_datasets_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sendig_class_datasets:openapi_sendig_class_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_class_datasets_get(Ctx, Version, Class) ->
    mdr_sendig_version_classes_class_datasets_get(Ctx, Version, Class, #{}).

-spec mdr_sendig_version_classes_class_datasets_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sendig_class_datasets:openapi_sendig_class_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_class_datasets_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/classes/", Class, "/datasets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Class
-spec mdr_sendig_version_classes_class_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sendig_class:openapi_sendig_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_class_get(Ctx, Version, Class) ->
    mdr_sendig_version_classes_class_get(Ctx, Version, Class, #{}).

-spec mdr_sendig_version_classes_class_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sendig_class:openapi_sendig_class(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_class_get(Ctx, Version, Class, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/classes/", Class, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Class List
-spec mdr_sendig_version_classes_get(ctx:ctx(), binary()) -> {ok, openapi_sendig_classes:openapi_sendig_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_get(Ctx, Version) ->
    mdr_sendig_version_classes_get(Ctx, Version, #{}).

-spec mdr_sendig_version_classes_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sendig_classes:openapi_sendig_classes(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_classes_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/classes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Dataset
-spec mdr_sendig_version_datasets_dataset_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sendig_dataset:openapi_sendig_dataset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_get(Ctx, Version, Dataset) ->
    mdr_sendig_version_datasets_dataset_get(Ctx, Version, Dataset, #{}).

-spec mdr_sendig_version_datasets_dataset_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sendig_dataset:openapi_sendig_dataset(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_get(Ctx, Version, Dataset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/datasets/", Dataset, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Dataset Variable List
-spec mdr_sendig_version_datasets_dataset_variables_get(ctx:ctx(), binary(), binary()) -> {ok, openapi_sendig_dataset_variables:openapi_sendig_dataset_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_variables_get(Ctx, Version, Dataset) ->
    mdr_sendig_version_datasets_dataset_variables_get(Ctx, Version, Dataset, #{}).

-spec mdr_sendig_version_datasets_dataset_variables_get(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, openapi_sendig_dataset_variables:openapi_sendig_dataset_variables(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_variables_get(Ctx, Version, Dataset, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/datasets/", Dataset, "/variables"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Dataset Variable
-spec mdr_sendig_version_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), binary()) -> {ok, openapi_sendig_dataset_variable:openapi_sendig_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var) ->
    mdr_sendig_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var, #{}).

-spec mdr_sendig_version_datasets_dataset_variables_var_get(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, openapi_sendig_dataset_variable:openapi_sendig_dataset_variable(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_dataset_variables_var_get(Ctx, Version, Dataset, Var, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/datasets/", Dataset, "/variables/", Var, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG Dataset List
-spec mdr_sendig_version_datasets_get(ctx:ctx(), binary()) -> {ok, openapi_sendig_datasets:openapi_sendig_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_get(Ctx, Version) ->
    mdr_sendig_version_datasets_get(Ctx, Version, #{}).

-spec mdr_sendig_version_datasets_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sendig_datasets:openapi_sendig_datasets(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_datasets_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, "/datasets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SENDIG product
-spec mdr_sendig_version_get(ctx:ctx(), binary()) -> {ok, openapi_sendig_product:openapi_sendig_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_get(Ctx, Version) ->
    mdr_sendig_version_get(Ctx, Version, #{}).

-spec mdr_sendig_version_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_sendig_product:openapi_sendig_product(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
mdr_sendig_version_get(Ctx, Version, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(openapi_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/mdr/sendig/", Version, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


