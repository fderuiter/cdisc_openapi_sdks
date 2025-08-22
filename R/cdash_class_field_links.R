#' Create a new CdashClassFieldLinks
#'
#' @description
#' CdashClassFieldLinks Class
#'
#' @docType class
#' @title CdashClassFieldLinks
#' @description CdashClassFieldLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CdashClassFieldRef} [optional]
#' @field codelist  list(\link{RootCtCodelistRefElement}) [optional]
#' @field parentProduct  \link{CdashProductRef} [optional]
#' @field parentClass  \link{CdashClassRef} [optional]
#' @field rootItem  \link{RootCdashClassFieldRef} [optional]
#' @field priorVersion  \link{CdashClassFieldRef} [optional]
#' @field sdtmClassMappingTargets  list(\link{SdtmClassVariableRefTarget}) [optional]
#' @field sdtmDatasetMappingTargets  list(\link{SdtmDatasetVariableRefTarget}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashClassFieldLinks <- R6::R6Class(
  "CdashClassFieldLinks",
  public = list(
    `item_self` = NULL,
    `codelist` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,
    `sdtmClassMappingTargets` = NULL,
    `sdtmDatasetMappingTargets` = NULL,

    #' @description
    #' Initialize a new CdashClassFieldLinks class.
    #'
    #' @param item_self item_self
    #' @param codelist codelist
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param sdtmClassMappingTargets sdtmClassMappingTargets
    #' @param sdtmDatasetMappingTargets sdtmDatasetMappingTargets
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `codelist` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `rootItem` = NULL, `priorVersion` = NULL, `sdtmClassMappingTargets` = NULL, `sdtmDatasetMappingTargets` = NULL, ...) {
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
      if (!is.null(`parentClass`)) {
        stopifnot(R6::is.R6(`parentClass`))
        self$`parentClass` <- `parentClass`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`sdtmClassMappingTargets`)) {
        stopifnot(is.vector(`sdtmClassMappingTargets`), length(`sdtmClassMappingTargets`) != 0)
        sapply(`sdtmClassMappingTargets`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtmClassMappingTargets` <- `sdtmClassMappingTargets`
      }
      if (!is.null(`sdtmDatasetMappingTargets`)) {
        stopifnot(is.vector(`sdtmDatasetMappingTargets`), length(`sdtmDatasetMappingTargets`) != 0)
        sapply(`sdtmDatasetMappingTargets`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtmDatasetMappingTargets` <- `sdtmDatasetMappingTargets`
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
    #' @return CdashClassFieldLinks as a base R list.
    #' @examples
    #' # convert array of CdashClassFieldLinks (x) to a data frame
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
    #' Convert CdashClassFieldLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashClassFieldLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CdashClassFieldLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`codelist`)) {
        CdashClassFieldLinksObject[["codelist"]] <-
          lapply(self$`codelist`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`parentProduct`)) {
        CdashClassFieldLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        CdashClassFieldLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        CdashClassFieldLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CdashClassFieldLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`sdtmClassMappingTargets`)) {
        CdashClassFieldLinksObject[["sdtmClassMappingTargets"]] <-
          lapply(self$`sdtmClassMappingTargets`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`sdtmDatasetMappingTargets`)) {
        CdashClassFieldLinksObject[["sdtmDatasetMappingTargets"]] <-
          lapply(self$`sdtmDatasetMappingTargets`, function(x) x$toSimpleType())
      }
      return(CdashClassFieldLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashClassFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashClassFieldLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CdashClassFieldRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`codelist`)) {
        self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- CdashProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentClass`)) {
        `parentclass_object` <- CdashClassRef$new()
        `parentclass_object`$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
        self$`parentClass` <- `parentclass_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootCdashClassFieldRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CdashClassFieldRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`sdtmClassMappingTargets`)) {
        self$`sdtmClassMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmClassMappingTargets`, "array[SdtmClassVariableRefTarget]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sdtmDatasetMappingTargets`)) {
        self$`sdtmDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmDatasetMappingTargets`, "array[SdtmDatasetVariableRefTarget]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashClassFieldLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashClassFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashClassFieldLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CdashClassFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      self$`parentProduct` <- CdashProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- CdashClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootCdashClassFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CdashClassFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`sdtmClassMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmClassMappingTargets`, "array[SdtmClassVariableRefTarget]", loadNamespace("openapi"))
      self$`sdtmDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmDatasetMappingTargets`, "array[SdtmDatasetVariableRefTarget]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashClassFieldLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashClassFieldLinks
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
# CdashClassFieldLinks$unlock()
#
## Below is an example to define the print function
# CdashClassFieldLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashClassFieldLinks$lock()

