#' Create a new SdtmDatasetVariableLinks
#'
#' @description
#' SdtmDatasetVariableLinks Class
#'
#' @docType class
#' @title SdtmDatasetVariableLinks
#' @description SdtmDatasetVariableLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SdtmDatasetVariableRef} [optional]
#' @field parentProduct  \link{SdtmProductRef} [optional]
#' @field parentDataset  \link{SdtmDatasetRef} [optional]
#' @field rootItem  \link{RootSdtmDatasetVariableRef} [optional]
#' @field priorVersion  \link{SdtmDatasetVariableRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmDatasetVariableLinks <- R6::R6Class(
  "SdtmDatasetVariableLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `parentDataset` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new SdtmDatasetVariableLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param parentDataset parentDataset
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `parentDataset` = NULL, `rootItem` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
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
    #' @return SdtmDatasetVariableLinks as a base R list.
    #' @examples
    #' # convert array of SdtmDatasetVariableLinks (x) to a data frame
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
    #' Convert SdtmDatasetVariableLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmDatasetVariableLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SdtmDatasetVariableLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SdtmDatasetVariableLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentDataset`)) {
        SdtmDatasetVariableLinksObject[["parentDataset"]] <-
          self$`parentDataset`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        SdtmDatasetVariableLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        SdtmDatasetVariableLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(SdtmDatasetVariableLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmDatasetVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmDatasetVariableLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SdtmDatasetVariableRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SdtmProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentDataset`)) {
        `parentdataset_object` <- SdtmDatasetRef$new()
        `parentdataset_object`$fromJSON(jsonlite::toJSON(this_object$`parentDataset`, auto_unbox = TRUE, digits = NA))
        self$`parentDataset` <- `parentdataset_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootSdtmDatasetVariableRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SdtmDatasetVariableRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmDatasetVariableLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmDatasetVariableLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmDatasetVariableLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SdtmDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SdtmProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentDataset` <- SdtmDatasetRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentDataset`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootSdtmDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- SdtmDatasetVariableRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmDatasetVariableLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmDatasetVariableLinks
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
# SdtmDatasetVariableLinks$unlock()
#
## Below is an example to define the print function
# SdtmDatasetVariableLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmDatasetVariableLinks$lock()

