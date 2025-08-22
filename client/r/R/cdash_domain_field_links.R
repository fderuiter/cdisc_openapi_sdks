#' Create a new CdashDomainFieldLinks
#'
#' @description
#' CdashDomainFieldLinks Class
#'
#' @docType class
#' @title CdashDomainFieldLinks
#' @description CdashDomainFieldLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CdashDomainFieldRef} [optional]
#' @field codelist  list(\link{RootCtCodelistRefElement}) [optional]
#' @field parentProduct  \link{CdashProductRef} [optional]
#' @field parentClass  \link{CdashClassRef} [optional]
#' @field parentDomain  \link{CdashDomainRef} [optional]
#' @field rootItem  \link{RootCdashDomainFieldRef} [optional]
#' @field priorVersion  \link{CdashDomainFieldRef} [optional]
#' @field sdtmDatasetMappingTargets  list(\link{SdtmDatasetVariableRefTarget}) [optional]
#' @field sdtmigDatasetMappingTargets  list(\link{SdtmigDatasetVariableRefTarget}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashDomainFieldLinks <- R6::R6Class(
  "CdashDomainFieldLinks",
  public = list(
    `item_self` = NULL,
    `codelist` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `parentDomain` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,
    `sdtmDatasetMappingTargets` = NULL,
    `sdtmigDatasetMappingTargets` = NULL,

    #' @description
    #' Initialize a new CdashDomainFieldLinks class.
    #'
    #' @param item_self item_self
    #' @param codelist codelist
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param parentDomain parentDomain
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param sdtmDatasetMappingTargets sdtmDatasetMappingTargets
    #' @param sdtmigDatasetMappingTargets sdtmigDatasetMappingTargets
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `codelist` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `parentDomain` = NULL, `rootItem` = NULL, `priorVersion` = NULL, `sdtmDatasetMappingTargets` = NULL, `sdtmigDatasetMappingTargets` = NULL, ...) {
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
      if (!is.null(`parentDomain`)) {
        stopifnot(R6::is.R6(`parentDomain`))
        self$`parentDomain` <- `parentDomain`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`sdtmDatasetMappingTargets`)) {
        stopifnot(is.vector(`sdtmDatasetMappingTargets`), length(`sdtmDatasetMappingTargets`) != 0)
        sapply(`sdtmDatasetMappingTargets`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtmDatasetMappingTargets` <- `sdtmDatasetMappingTargets`
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
    #' @return CdashDomainFieldLinks as a base R list.
    #' @examples
    #' # convert array of CdashDomainFieldLinks (x) to a data frame
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
    #' Convert CdashDomainFieldLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashDomainFieldLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CdashDomainFieldLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`codelist`)) {
        CdashDomainFieldLinksObject[["codelist"]] <-
          lapply(self$`codelist`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`parentProduct`)) {
        CdashDomainFieldLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        CdashDomainFieldLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`parentDomain`)) {
        CdashDomainFieldLinksObject[["parentDomain"]] <-
          self$`parentDomain`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        CdashDomainFieldLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CdashDomainFieldLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`sdtmDatasetMappingTargets`)) {
        CdashDomainFieldLinksObject[["sdtmDatasetMappingTargets"]] <-
          lapply(self$`sdtmDatasetMappingTargets`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`sdtmigDatasetMappingTargets`)) {
        CdashDomainFieldLinksObject[["sdtmigDatasetMappingTargets"]] <-
          lapply(self$`sdtmigDatasetMappingTargets`, function(x) x$toSimpleType())
      }
      return(CdashDomainFieldLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomainFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomainFieldLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CdashDomainFieldRef$new()
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
      if (!is.null(this_object$`parentDomain`)) {
        `parentdomain_object` <- CdashDomainRef$new()
        `parentdomain_object`$fromJSON(jsonlite::toJSON(this_object$`parentDomain`, auto_unbox = TRUE, digits = NA))
        self$`parentDomain` <- `parentdomain_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootCdashDomainFieldRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CdashDomainFieldRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`sdtmDatasetMappingTargets`)) {
        self$`sdtmDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmDatasetMappingTargets`, "array[SdtmDatasetVariableRefTarget]", loadNamespace("openapi"))
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
    #' @return CdashDomainFieldLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashDomainFieldLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashDomainFieldLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CdashDomainFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      self$`parentProduct` <- CdashProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- CdashClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`parentDomain` <- CdashDomainRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentDomain`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootCdashDomainFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CdashDomainFieldRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`sdtmDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmDatasetMappingTargets`, "array[SdtmDatasetVariableRefTarget]", loadNamespace("openapi"))
      self$`sdtmigDatasetMappingTargets` <- ApiClient$new()$deserializeObj(this_object$`sdtmigDatasetMappingTargets`, "array[SdtmigDatasetVariableRefTarget]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashDomainFieldLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashDomainFieldLinks
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
# CdashDomainFieldLinks$unlock()
#
## Below is an example to define the print function
# CdashDomainFieldLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashDomainFieldLinks$lock()

