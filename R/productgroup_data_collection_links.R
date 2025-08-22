#' Create a new ProductgroupDataCollectionLinks
#'
#' @description
#' ProductgroupDataCollectionLinks Class
#'
#' @docType class
#' @title ProductgroupDataCollectionLinks
#' @description ProductgroupDataCollectionLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{ProductgroupRef} [optional]
#' @field cdash  list(\link{CdashProductRefElement}) [optional]
#' @field cdashig  list(\link{CdashigProductRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductgroupDataCollectionLinks <- R6::R6Class(
  "ProductgroupDataCollectionLinks",
  public = list(
    `item_self` = NULL,
    `cdash` = NULL,
    `cdashig` = NULL,

    #' @description
    #' Initialize a new ProductgroupDataCollectionLinks class.
    #'
    #' @param item_self item_self
    #' @param cdash cdash
    #' @param cdashig cdashig
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `cdash` = NULL, `cdashig` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`cdash`)) {
        stopifnot(is.vector(`cdash`), length(`cdash`) != 0)
        sapply(`cdash`, function(x) stopifnot(R6::is.R6(x)))
        self$`cdash` <- `cdash`
      }
      if (!is.null(`cdashig`)) {
        stopifnot(is.vector(`cdashig`), length(`cdashig`) != 0)
        sapply(`cdashig`, function(x) stopifnot(R6::is.R6(x)))
        self$`cdashig` <- `cdashig`
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
    #' @return ProductgroupDataCollectionLinks as a base R list.
    #' @examples
    #' # convert array of ProductgroupDataCollectionLinks (x) to a data frame
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
    #' Convert ProductgroupDataCollectionLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductgroupDataCollectionLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        ProductgroupDataCollectionLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`cdash`)) {
        ProductgroupDataCollectionLinksObject[["cdash"]] <-
          lapply(self$`cdash`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`cdashig`)) {
        ProductgroupDataCollectionLinksObject[["cdashig"]] <-
          lapply(self$`cdashig`, function(x) x$toSimpleType())
      }
      return(ProductgroupDataCollectionLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductgroupDataCollectionLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductgroupDataCollectionLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- ProductgroupRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`cdash`)) {
        self$`cdash` <- ApiClient$new()$deserializeObj(this_object$`cdash`, "array[CdashProductRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`cdashig`)) {
        self$`cdashig` <- ApiClient$new()$deserializeObj(this_object$`cdashig`, "array[CdashigProductRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductgroupDataCollectionLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductgroupDataCollectionLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductgroupDataCollectionLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- ProductgroupRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`cdash` <- ApiClient$new()$deserializeObj(this_object$`cdash`, "array[CdashProductRefElement]", loadNamespace("openapi"))
      self$`cdashig` <- ApiClient$new()$deserializeObj(this_object$`cdashig`, "array[CdashigProductRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductgroupDataCollectionLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductgroupDataCollectionLinks
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
# ProductgroupDataCollectionLinks$unlock()
#
## Below is an example to define the print function
# ProductgroupDataCollectionLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductgroupDataCollectionLinks$lock()

