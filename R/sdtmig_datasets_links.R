#' Create a new SdtmigDatasetsLinks
#'
#' @description
#' SdtmigDatasetsLinks Class
#'
#' @docType class
#' @title SdtmigDatasetsLinks
#' @description SdtmigDatasetsLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{SdtmigDatasetsRef} [optional]
#' @field parentProduct  \link{SdtmigProductRef} [optional]
#' @field priorVersion  \link{SdtmigDatasetsRef} [optional]
#' @field datasets  list(\link{SdtmigDatasetRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SdtmigDatasetsLinks <- R6::R6Class(
  "SdtmigDatasetsLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `priorVersion` = NULL,
    `datasets` = NULL,

    #' @description
    #' Initialize a new SdtmigDatasetsLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param priorVersion priorVersion
    #' @param datasets datasets
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `priorVersion` = NULL, `datasets` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`datasets`)) {
        stopifnot(is.vector(`datasets`), length(`datasets`) != 0)
        sapply(`datasets`, function(x) stopifnot(R6::is.R6(x)))
        self$`datasets` <- `datasets`
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
    #' @return SdtmigDatasetsLinks as a base R list.
    #' @examples
    #' # convert array of SdtmigDatasetsLinks (x) to a data frame
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
    #' Convert SdtmigDatasetsLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      SdtmigDatasetsLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        SdtmigDatasetsLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        SdtmigDatasetsLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        SdtmigDatasetsLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`datasets`)) {
        SdtmigDatasetsLinksObject[["datasets"]] <-
          lapply(self$`datasets`, function(x) x$toSimpleType())
      }
      return(SdtmigDatasetsLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmigDatasetsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmigDatasetsLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- SdtmigDatasetsRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- SdtmigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- SdtmigDatasetsRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`datasets`)) {
        self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[SdtmigDatasetRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return SdtmigDatasetsLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of SdtmigDatasetsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of SdtmigDatasetsLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- SdtmigDatasetsRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- SdtmigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- SdtmigDatasetsRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`datasets` <- ApiClient$new()$deserializeObj(this_object$`datasets`, "array[SdtmigDatasetRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to SdtmigDatasetsLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of SdtmigDatasetsLinks
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
# SdtmigDatasetsLinks$unlock()
#
## Below is an example to define the print function
# SdtmigDatasetsLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# SdtmigDatasetsLinks$lock()

