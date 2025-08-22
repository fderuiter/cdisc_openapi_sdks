#' Create a new SdtmigDatasetVariableLinks
#'
#' @description
#' SdtmigDatasetVariableLinks Class
#'
#' @docType class
#' @title SdtmigDatasetVariableLinks
#' @description SdtmigDatasetVariableLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SdtmigDatasetVariableRef} [optional]
#' @field codelist  list(\link{RootCtCodelistRefElement}) [optional]
#' @field modelClassVariable  \link{SdtmClassVariableRef} [optional]
#' @field modelDatasetVariable  \link{SdtmDatasetVariableRef} [optional]
#' @field parentProduct  \link{SdtmigProductRef} [optional]
#' @field parentDataset  \link{SdtmigDatasetRef} [optional]
#' @field rootItem  \link{RootSdtmigDatasetVariableRef} [optional]
#' @field priorVersion  \link{SdtmigDatasetVariableRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmigDatasetVariableLinks <- R6::R6Class(
  "SdtmigDatasetVariableLinks",
  public = list(
    `item_self` = NULL,
    `codelist` = NULL,
    `modelClassVariable` = NULL,
    `modelDatasetVariable` = NULL,
    `parentProduct` = NULL,
    `parentDataset` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new SdtmigDatasetVariableLinks class.
    #'
    #' @param item_self item_self
    #' @param codelist codelist
    #' @param modelClassVariable modelClassVariable
    #' @param modelDatasetVariable modelDatasetVariable
    #' @param parentProduct parentProduct
    #' @param parentDataset parentDataset
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `codelist` = NULL, `modelClassVariable` = NULL, `modelDatasetVariable` = NULL, `parentProduct` = NULL, `parentDataset` = NULL, `rootItem` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`codelist`)) {
        stopifnot(is.vector(`codelist`), length(`codelist`) != 0)
        sapply(`codelist`, function(x) stopifnot(R6::is.R6(x)))
        self$`codelist` <- `codelist`
      }
      if (!is.null(`modelClassVariable`)) {
        stopifnot(R6::is.R6(`modelClassVariable`))
        self$`modelClassVariable` <- `modelClassVariable`
      }
      if (!is.null(`modelDatasetVariable`)) {
        stopifnot(R6::is.R6(`modelDatasetVariable`))
        self$`modelDatasetVariable` <- `modelDatasetVariable`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentDataset`)) {
        stopifnot(R6::is.R6(`parentDataset`))
        self$`parentDataset` <- `parentDataset`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
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
    #' @return SdtmigDatasetVariableLinks as a base R list.
    #' @examples
    #' # convert array of SdtmigDatasetVariableLinks (x) to a data frame
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
    #' Convert SdtmigDatasetVariableLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmigDatasetVariableLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SdtmigDatasetVariableLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`codelist`)) {
        SdtmigDatasetVariableLinksObject[["codelist"]] <-
          lapply(self$`codelist`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`modelClassVariable`)) {
        SdtmigDatasetVariableLinksObject[["modelClassVariable"]] <-
          self$`modelClassVariable`$toSimpleType()
      }
      if (!is.null(self$`modelDatasetVariable`)) {
        SdtmigDatasetVariableLinksObject[["modelDatasetVariable"]] <-
          self$`modelDatasetVariable`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SdtmigDatasetVariableLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentDataset`)) {
        SdtmigDatasetVariableLinksObject[["parentDataset"]] <-
          self$`parentDataset`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        SdtmigDatasetVariableLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        SdtmigDatasetVariableLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(SdtmigDatasetVariableLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmigDatasetVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmigDatasetVariableLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SdtmigDatasetVariableRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`codelist`)) {
        self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`modelClassVariable`)) {
        `modelclassvariable_object` <- SdtmClassVariableRef$new()
        `modelclassvariable_object`$fromJSON(jsonlite::toJSON(this_object$`modelClassVariable`, auto_unbox = TRUE, digits = NA))
        self$`modelClassVariable` <- `modelclassvariable_object`
      }
      if (!is.null(this_object$`modelDatasetVariable`)) {
        `modeldatasetvariable_object` <- SdtmDatasetVariableRef$new()
        `modeldatasetvariable_object`$fromJSON(jsonlite::toJSON(this_object$`modelDatasetVariable`, auto_unbox = TRUE, digits = NA))
        self$`modelDatasetVariable` <- `modeldatasetvariable_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SdtmigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentDataset`)) {
        `parentdataset_object` <- SdtmigDatasetRef$new()
        `parentdataset_object`$fromJSON(jsonlite::toJSON(this_object$`parentDataset`, auto_unbox = TRUE, digits = NA))
        self$`parentDataset` <- `parentdataset_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootSdtmigDatasetVariableRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SdtmigDatasetVariableRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmigDatasetVariableLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmigDatasetVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmigDatasetVariableLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SdtmigDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`codelist` <- ApiClient$new()$deserializeObj(this_object$`codelist`, "array[RootCtCodelistRefElement]", loadNamespace("openapi"))
      self$`modelClassVariable` <- SdtmClassVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`modelClassVariable`, auto_unbox = TRUE, digits = NA))
      self$`modelDatasetVariable` <- SdtmDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`modelDatasetVariable`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SdtmigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentDataset` <- SdtmigDatasetRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentDataset`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootSdtmigDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- SdtmigDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmigDatasetVariableLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmigDatasetVariableLinks
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
# SdtmigDatasetVariableLinks$unlock()
#
## Below is an example to define the print function
# SdtmigDatasetVariableLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmigDatasetVariableLinks$lock()

