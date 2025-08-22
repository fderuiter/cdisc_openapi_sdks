#' Create a new CdashigProductScenariosLinks
#'
#' @description
#' CdashigProductScenariosLinks Class
#'
#' @docType class
#' @title CdashigProductScenariosLinks
#' @description CdashigProductScenariosLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CdashigProductScenariosRef} [optional]
#' @field parentProduct  \link{CdashigProductRef} [optional]
#' @field scenarios  list(\link{CdashigScenarioRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CdashigProductScenariosLinks <- R6::R6Class(
  "CdashigProductScenariosLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `scenarios` = NULL,

    #' @description
    #' Initialize a new CdashigProductScenariosLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param scenarios scenarios
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `scenarios` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`scenarios`)) {
        stopifnot(is.vector(`scenarios`), length(`scenarios`) != 0)
        sapply(`scenarios`, function(x) stopifnot(R6::is.R6(x)))
        self$`scenarios` <- `scenarios`
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
    #' @return CdashigProductScenariosLinks as a base R list.
    #' @examples
    #' # convert array of CdashigProductScenariosLinks (x) to a data frame
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
    #' Convert CdashigProductScenariosLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CdashigProductScenariosLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CdashigProductScenariosLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        CdashigProductScenariosLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`scenarios`)) {
        CdashigProductScenariosLinksObject[["scenarios"]] <-
          lapply(self$`scenarios`, function(x) x$toSimpleType())
      }
      return(CdashigProductScenariosLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigProductScenariosLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigProductScenariosLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CdashigProductScenariosRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- CdashigProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`scenarios`)) {
        self$`scenarios` <- ApiClient$new()$deserializeObj(this_object$`scenarios`, "array[CdashigScenarioRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CdashigProductScenariosLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CdashigProductScenariosLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CdashigProductScenariosLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CdashigProductScenariosRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- CdashigProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`scenarios` <- ApiClient$new()$deserializeObj(this_object$`scenarios`, "array[CdashigScenarioRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CdashigProductScenariosLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CdashigProductScenariosLinks
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
# CdashigProductScenariosLinks$unlock()
#
## Below is an example to define the print function
# CdashigProductScenariosLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CdashigProductScenariosLinks$lock()

