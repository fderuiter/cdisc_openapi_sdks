#' Create a new ProductgroupDataTabulationLinks
#'
#' @description
#' ProductgroupDataTabulationLinks Class
#'
#' @docType class
#' @title ProductgroupDataTabulationLinks
#' @description ProductgroupDataTabulationLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{ProductgroupRef} [optional]
#' @field sdtm  list(\link{SdtmProductRefElement}) [optional]
#' @field sdtmig  list(\link{SdtmigProductRefElement}) [optional]
#' @field sendig  list(\link{SendigProductRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductgroupDataTabulationLinks <- R6::R6Class(
  "ProductgroupDataTabulationLinks",
  public = list(
    `item_self` = NULL,
    `sdtm` = NULL,
    `sdtmig` = NULL,
    `sendig` = NULL,

    #' @description
    #' Initialize a new ProductgroupDataTabulationLinks class.
    #'
    #' @param item_self item_self
    #' @param sdtm sdtm
    #' @param sdtmig sdtmig
    #' @param sendig sendig
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `sdtm` = NULL, `sdtmig` = NULL, `sendig` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`sdtm`)) {
        stopifnot(is.vector(`sdtm`), length(`sdtm`) != 0)
        sapply(`sdtm`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtm` <- `sdtm`
      }
      if (!is.null(`sdtmig`)) {
        stopifnot(is.vector(`sdtmig`), length(`sdtmig`) != 0)
        sapply(`sdtmig`, function(x) stopifnot(R6::is.R6(x)))
        self$`sdtmig` <- `sdtmig`
      }
      if (!is.null(`sendig`)) {
        stopifnot(is.vector(`sendig`), length(`sendig`) != 0)
        sapply(`sendig`, function(x) stopifnot(R6::is.R6(x)))
        self$`sendig` <- `sendig`
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
    #' @return ProductgroupDataTabulationLinks as a base R list.
    #' @examples
    #' # convert array of ProductgroupDataTabulationLinks (x) to a data frame
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
    #' Convert ProductgroupDataTabulationLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductgroupDataTabulationLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        ProductgroupDataTabulationLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`sdtm`)) {
        ProductgroupDataTabulationLinksObject[["sdtm"]] <-
          lapply(self$`sdtm`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`sdtmig`)) {
        ProductgroupDataTabulationLinksObject[["sdtmig"]] <-
          lapply(self$`sdtmig`, function(x) x$toSimpleType())
      }
      if (!is.null(self$`sendig`)) {
        ProductgroupDataTabulationLinksObject[["sendig"]] <-
          lapply(self$`sendig`, function(x) x$toSimpleType())
      }
      return(ProductgroupDataTabulationLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductgroupDataTabulationLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductgroupDataTabulationLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- ProductgroupRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`sdtm`)) {
        self$`sdtm` <- ApiClient$new()$deserializeObj(this_object$`sdtm`, "array[SdtmProductRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sdtmig`)) {
        self$`sdtmig` <- ApiClient$new()$deserializeObj(this_object$`sdtmig`, "array[SdtmigProductRefElement]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`sendig`)) {
        self$`sendig` <- ApiClient$new()$deserializeObj(this_object$`sendig`, "array[SendigProductRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductgroupDataTabulationLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductgroupDataTabulationLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductgroupDataTabulationLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- ProductgroupRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`sdtm` <- ApiClient$new()$deserializeObj(this_object$`sdtm`, "array[SdtmProductRefElement]", loadNamespace("openapi"))
      self$`sdtmig` <- ApiClient$new()$deserializeObj(this_object$`sdtmig`, "array[SdtmigProductRefElement]", loadNamespace("openapi"))
      self$`sendig` <- ApiClient$new()$deserializeObj(this_object$`sendig`, "array[SendigProductRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductgroupDataTabulationLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductgroupDataTabulationLinks
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
# ProductgroupDataTabulationLinks$unlock()
#
## Below is an example to define the print function
# ProductgroupDataTabulationLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductgroupDataTabulationLinks$lock()

