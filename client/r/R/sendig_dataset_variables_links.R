#' Create a new SendigDatasetVariablesLinks
#'
#' @description
#' SendigDatasetVariablesLinks Class
#'
#' @docType class
#' @title SendigDatasetVariablesLinks
#' @description SendigDatasetVariablesLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SendigDatasetVariablesRef} [optional]
#' @field modelDataset  \link{SdtmDatasetRef} [optional]
#' @field parentProduct  \link{SendigProductRef} [optional]
#' @field parentClass  \link{SendigClassRef} [optional]
#' @field priorVersion  \link{SendigDatasetVariablesRef} [optional]
#' @field datasetVariables  list(\link{SendigDatasetVariableRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SendigDatasetVariablesLinks <- R6::R6Class(
  "SendigDatasetVariablesLinks",
  public = list(
    `item_self` = NULL,
    `modelDataset` = NULL,
    `parentProduct` = NULL,
    `parentClass` = NULL,
    `priorVersion` = NULL,
    `datasetVariables` = NULL,

    #' @description
    #' Initialize a new SendigDatasetVariablesLinks class.
    #'
    #' @param item_self item_self
    #' @param modelDataset modelDataset
    #' @param parentProduct parentProduct
    #' @param parentClass parentClass
    #' @param priorVersion priorVersion
    #' @param datasetVariables datasetVariables
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `modelDataset` = NULL, `parentProduct` = NULL, `parentClass` = NULL, `priorVersion` = NULL, `datasetVariables` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`modelDataset`)) {
        stopifnot(R6::is.R6(`modelDataset`))
        self$`modelDataset` <- `modelDataset`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`parentClass`)) {
        stopifnot(R6::is.R6(`parentClass`))
        self$`parentClass` <- `parentClass`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`datasetVariables`)) {
        stopifnot(is.vector(`datasetVariables`), length(`datasetVariables`) != 0)
        sapply(`datasetVariables`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasetVariables` <- `datasetVariables`
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
    #' @return SendigDatasetVariablesLinks as a base R list.
    #' @examples
    #' # convert array of SendigDatasetVariablesLinks (x) to a data frame
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
    #' Convert SendigDatasetVariablesLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SendigDatasetVariablesLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SendigDatasetVariablesLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`modelDataset`)) {
        SendigDatasetVariablesLinksObject[["modelDataset"]] <-
          self$`modelDataset`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SendigDatasetVariablesLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`parentClass`)) {
        SendigDatasetVariablesLinksObject[["parentClass"]] <-
          self$`parentClass`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        SendigDatasetVariablesLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`datasetVariables`)) {
        SendigDatasetVariablesLinksObject[["datasetVariables"]] <-
          lapply(self$`datasetVariables`, function(x) x$toSimpleType())
      }
      return(SendigDatasetVariablesLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariablesLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariablesLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SendigDatasetVariablesRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`modelDataset`)) {
        `modeldataset_object` <- SdtmDatasetRef$new()
        `modeldataset_object`$fromJSON(jsonlite::toJSON(this_object$`modelDataset`, auto_unbox = TRUE, digits = NA))
        self$`modelDataset` <- `modeldataset_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SendigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`parentClass`)) {
        `parentclass_object` <- SendigClassRef$new()
        `parentclass_object`$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
        self$`parentClass` <- `parentclass_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SendigDatasetVariablesRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`datasetVariables`)) {
        self$`datasetVariables` <- ApiClient$new()$deserializeObj(this_object$`datasetVariables`, "array[SendigDatasetVariableRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SendigDatasetVariablesLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SendigDatasetVariablesLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SendigDatasetVariablesLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SendigDatasetVariablesRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`modelDataset` <- SdtmDatasetRef$new()$fromJSON(jsonlite::toJSON(this_object$`modelDataset`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SendigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`parentClass` <- SendigClassRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentClass`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- SendigDatasetVariablesRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`datasetVariables` <- ApiClient$new()$deserializeObj(this_object$`datasetVariables`, "array[SendigDatasetVariableRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SendigDatasetVariablesLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SendigDatasetVariablesLinks
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
# SendigDatasetVariablesLinks$unlock()
#
## Below is an example to define the print function
# SendigDatasetVariablesLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SendigDatasetVariablesLinks$lock()

