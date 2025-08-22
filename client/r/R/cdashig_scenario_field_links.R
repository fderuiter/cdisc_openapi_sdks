#' Create a new CdashigScenarioFieldLinks
#'
#' @description
#' CdashigScenarioFieldLinks Class
#'
#' @docType class
#' @title CdashigScenarioFieldLinks
#' @description CdashigScenarioFieldLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CdashigScenarioFieldRef} [optional]
#' @field codelist  list(\link{RootCtCodelistRefElement}) [optional]
#' @field parentProduct  \link{CdashigProductRef} [optional]
#' @field parentDomain  \link{CdashigDomainRef} [optional]
#' @field parentScenario  \link{CdashigScenarioRef} [optional]
#' @field rootItem  \link{RootCdashigScenarioFieldRef} [optional]
#' @field priorVersion  \link{CdashigScenarioFieldRef} [optional]
#' @field sdtmigDatasetMappingTargets  list(\link{SdtmigDatasetVariableRefTarget}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigScenarioFieldLinks <- R6::R6Class(
  "CdashigScenarioFieldLinks",
  public = list(
    `item_self` = NULL,
    `codelist` = NULL,
    `parentProduct` = NULL,
    `parentDomain` = NULL,
    `parentScenario` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,
    `sdtmigDatasetMappingTargets` = NULL,

    #' @description
    #' Initialize a new CdashigScenarioFieldLinks class.
    #'
    #' @param item_self item_self
    #' @param codelist codelist
    #' @param parentProduct parentProduct
    #' @param parentDomain parentDomain
    #' @param parentScenario parentScenario
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param sdtmigDatasetMappingTargets sdtmigDatasetMappingTargets
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `codelist` = NULL, `parentProduct` = NULL, `parentDomain` = NULL, `parentScenario` = NULL, `rootItem` = NULL, `priorVersion` = NULL, `sdtmigDatasetMappingTargets` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`codelist`)) {
        stopifnot(is.vector(`codelist`), length(`codelist`) != 0)
        sapply(`codelist`, function(x) stopifnot(R6::is.R6(x)))
        self$`codelist` <- `codelist`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentDomain`)) {
        stopifnot(R6::is.R6(`parentDomain`))
        self$`parentDomain` <- `parentDomain`
      }
      if (!is.null(`parentScenario`)) {
        stopifnot(R6::is.R6(`parentScenario`))
        self$`parentScenario` <- `parentScenario`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`sdtmigDatasetMappingTargets`)) {
        stopifnot(is.vector(`sdtmigDatasetMappingTargets`), length(`sdtmigDatasetMappingTargets`) != 0)
        sapply(`sdtmigDatasetMappingTargets`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtmigDatasetMappingTargets` <- `sdtmigDatasetMappingTargets`
      }
    },

    #' @description
    #' Convert to an R object. This method is deprecated. Use `toSimpleType()` instead.
    toJSON = function() {
      .Deprecated(new = "toSimpleType", msg = "Use the '$toSimpleType()' method instead since that is more clearly named. Use '$toJSONString()' to get a JSON string")
      return(self$toSimpleType())
    },

    #' @description
    #' Convert to a List
    #'
    #' Convert the R6 object to a list to work more easily with other tooling.
    #'
    #' @return CdashigScenarioFieldLinks as a base R list.
    #' @examples
    #' # convert array of CdashigScenarioFieldLinks (x) to a data frame
    #' \dontrun{
    #' library(purrr)
    #' library(tibble)
    #' df <- x |> map(\(y)y$toList()) |> map(as_tibble) |> list_rbind()
    #' df
    #' }
    toList = function() {
      return(self$toSimpleType())
    },

    #' @description
    #' Convert CdashigScenarioFieldLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigScenarioFieldLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CdashigScenarioFieldLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`codelist`)) {
        CdashigScenarioFieldLinksObject[["codelist"]] <-
          lapply(self$`codelist`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`parentProduct`)) {
        CdashigScenarioFieldLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentDomain`)) {
        CdashigScenarioFieldLinksObject[["parentDomain"]] <-
          self$`parentDomain`$toSimpleType()
      }
      if (!is.null(self$`parentScenario`)) {
        CdashigScenarioFieldLinksObject[["parentScenario"]] <-
          self$`parentScenario`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        CdashigScenarioFieldLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CdashigScenarioFieldLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`sdtmigDatasetMappingTargets`)) {
        CdashigScenarioFieldLinksObject[["sdtmigDatasetMappingTargets"]] <-
          lapply(self$`sdtmigDatasetMappingTargets`, function(x) x$toSimpleType())
      }
      return(CdashigScenarioFieldLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioFieldLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CdashigScenarioFieldRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`codelist`)) {
        self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- CdashigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentDomain`)) {
        `parentdomain_object` <- CdashigDomainRef$new()
        `parentdomain_object`$fromJSON(jsonlite::toJSON(this_object$`parentDomain`, auto_unbox = TRUE, digits = NA))
        self$`parentDomain` <- `parentdomain_object`
      }
      if (!is.null(this_object$`parentScenario`)) {
        `parentscenario_object` <- CdashigScenarioRef$new()
        `parentscenario_object`$fromJSON(jsonlite::toJSON(this_object$`parentScenario`, auto_unbox = TRUE, digits = NA))
        self$`parentScenario` <- `parentscenario_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootCdashigScenarioFieldRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CdashigScenarioFieldRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`sdtmigDatasetMappingTargets`)) {
        self$`sdtmigDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmigDatasetMappingTargets`, "array[SdtmigDatasetVariableRefTarget]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigScenarioFieldLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigScenarioFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigScenarioFieldLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CdashigScenarioFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      self$`parentProduct` <- CdashigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentDomain` <- CdashigDomainRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentDomain`, auto_unbox = TRUE, digits = NA))
      self$`parentScenario` <- CdashigScenarioRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentScenario`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootCdashigScenarioFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CdashigScenarioFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`sdtmigDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmigDatasetMappingTargets`, "array[SdtmigDatasetVariableRefTarget]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigScenarioFieldLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigScenarioFieldLinks
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# CdashigScenarioFieldLinks$unlock()
#
## Below is an example to define the print function
# CdashigScenarioFieldLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigScenarioFieldLinks$lock()

