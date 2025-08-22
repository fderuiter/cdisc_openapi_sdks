-module(openapi_api).

-export([ mdr_root_sdtm_classes_class_variables_var_get/2
        , mdr_root_sdtm_datasets_dataset_variables_var_get/2
        , mdr_sdtm_version_classes_class_datasets_get/2
        , mdr_sdtm_version_classes_class_get/2
        , mdr_sdtm_version_classes_class_variables_get/2
        , mdr_sdtm_version_classes_class_variables_var_get/3
        , mdr_sdtm_version_classes_get/1
        , mdr_sdtm_version_datasets_dataset_get/2
        , mdr_sdtm_version_datasets_dataset_variables_get/2
        , mdr_sdtm_version_datasets_dataset_variables_var_get/3
        , mdr_sdtm_version_datasets_get/1
        , mdr_sdtm_version_get/1
        ]).

-define(BASE_URL, "/api").

%% @doc 
%% Get Root of SDTM Class Variable
-spec mdr_root_sdtm_classes_class_variables_var_get(binary(), binary()) ->
  openapi_utils:response().
mdr_root_sdtm_classes_class_variables_var_get(Class, Var) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/root/sdtm/classes/", Class, "/variables/", Var, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get Root SDTM Dataset Variable
-spec mdr_root_sdtm_datasets_dataset_variables_var_get(binary(), binary()) ->
  openapi_utils:response().
mdr_root_sdtm_datasets_dataset_variables_var_get(Dataset, Var) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/root/sdtm/datasets/", Dataset, "/variables/", Var, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Class Dataset List
-spec mdr_sdtm_version_classes_class_datasets_get(binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_classes_class_datasets_get(Version, Class) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/classes/", Class, "/datasets"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Class
-spec mdr_sdtm_version_classes_class_get(binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_classes_class_get(Version, Class) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/classes/", Class, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Class Variable List
-spec mdr_sdtm_version_classes_class_variables_get(binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_classes_class_variables_get(Version, Class) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/classes/", Class, "/variables"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Class Variable
-spec mdr_sdtm_version_classes_class_variables_var_get(binary(), binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_classes_class_variables_var_get(Version, Class, Var) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/classes/", Class, "/variables/", Var, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Class List
-spec mdr_sdtm_version_classes_get(binary()) ->
  openapi_utils:response().
mdr_sdtm_version_classes_get(Version) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/classes"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Dataset
-spec mdr_sdtm_version_datasets_dataset_get(binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_datasets_dataset_get(Version, Dataset) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/datasets/", Dataset, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Dataset Variable List
-spec mdr_sdtm_version_datasets_dataset_variables_get(binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_datasets_dataset_variables_get(Version, Dataset) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/datasets/", Dataset, "/variables"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Dataset Variable
-spec mdr_sdtm_version_datasets_dataset_variables_var_get(binary(), binary(), binary()) ->
  openapi_utils:response().
mdr_sdtm_version_datasets_dataset_variables_var_get(Version, Dataset, Var) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/datasets/", Dataset, "/variables/", Var, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM Dataset List
-spec mdr_sdtm_version_datasets_get(binary()) ->
  openapi_utils:response().
mdr_sdtm_version_datasets_get(Version) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, "/datasets"],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

%% @doc 
%% Get SDTM product
-spec mdr_sdtm_version_get(binary()) ->
  openapi_utils:response().
mdr_sdtm_version_get(Version) ->
  Method      = get,
  Host        = application:get_env(openapi, host, "http://localhost:8080"),
  Path        = ["/mdr/sdtm/", Version, ""],

  openapi_utils:request(Method, [Host, ?BASE_URL, Path]).

