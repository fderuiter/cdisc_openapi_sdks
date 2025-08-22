#' Create a new QrsItemsLinks
#'
#' @description
#' QrsItemsLinks Class
#'
#' @docType class
#' @title QrsItemsLinks
#' @description QrsItemsLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{QrsItemsRef} [optional]
#' @field parentProduct  \link{QrsProductRef} [optional]
#' @field items  list(\link{QrsItemRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsItemsLinks <- R6::R6Class(
  "QrsItemsLinks",
  public = list(
    `item_self` = NULL,
    `parentProduct` = NULL,
    `items` = NULL,

    #' @description
    #' Initialize a new QrsItemsLinks class.
    #'
    #' @param item_self item_self
    #' @param parentProduct parentProduct
    #' @param items items
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentProduct` = NULL, `items` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentProduct`)) {
        stopifnot(R6::is.R6(`parentProduct`))
        self$`parentProduct` <- `parentProduct`
      }
      if (!is.null(`items`)) {
        stopifnot(is.vector(`items`), length(`items`) != 0)
        sapply(`items`, function(x) stopifnot(R6::is.R6(x)))
        self$`items` <- `items`
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
    #' @return QrsItemsLinks as a base R list.
    #' @examples
    #' # convert array of QrsItemsLinks (x) to a data frame
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
    #' Convert QrsItemsLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsItemsLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        QrsItemsLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentProduct`)) {
        QrsItemsLinksObject[["parentProduct"]] <-
          self$`parentProduct`$toSimpleType()
      }
      if (!is.null(self$`items`)) {
        QrsItemsLinksObject[["items"]] <-
          lapply(self$`items`, function(x) x$toSimpleType())
      }
      return(QrsItemsLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItemsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItemsLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- QrsItemsRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentProduct`)) {
        `parentproduct_object` <- QrsProductRef$new()
        `parentproduct_object`$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
        self$`parentProduct` <- `parentproduct_object`
      }
      if (!is.null(this_object$`items`)) {
        self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QrsItemRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsItemsLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItemsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItemsLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- QrsItemsRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentProduct` <- QrsProductRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentProduct`, auto_unbox = TRUE, digits = NA))
      self$`items` <- ApiClient$new()$deserializeObj(this_object$`items`, "array[QrsItemRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsItemsLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsItemsLinks
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
# QrsItemsLinks$unlock()
#
## Below is an example to define the print function
# QrsItemsLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsItemsLinks$lock()

