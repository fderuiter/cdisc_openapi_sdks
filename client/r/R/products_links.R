#' Create a new ProductsLinks
#'
#' @description
#' ProductsLinks Class
#'
#' @docType class
#' @title ProductsLinks
#' @description ProductsLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{ProductsRef} [optional]
#' @field data-collection  \link{ProductgroupDataCollection} [optional]
#' @field data-tabulation  \link{ProductgroupDataTabulation} [optional]
#' @field data-analysis  \link{ProductgroupDataAnalysis} [optional]
#' @field terminology  \link{ProductgroupTerminology} [optional]
#' @field measure  \link{ProductgroupQrs} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ProductsLinks <- R6::R6Class(
  "ProductsLinks",
  public = list(
    `item_self` = NULL,
    `data-collection` = NULL,
    `data-tabulation` = NULL,
    `data-analysis` = NULL,
    `terminology` = NULL,
    `measure` = NULL,

    #' @description
    #' Initialize a new ProductsLinks class.
    #'
    #' @param item_self item_self
    #' @param data-collection data-collection
    #' @param data-tabulation data-tabulation
    #' @param data-analysis data-analysis
    #' @param terminology terminology
    #' @param measure measure
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `data-collection` = NULL, `data-tabulation` = NULL, `data-analysis` = NULL, `terminology` = NULL, `measure` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`data-collection`)) {
        stopifnot(R6::is.R6(`data-collection`))
        self$`data-collection` <- `data-collection`
      }
      if (!is.null(`data-tabulation`)) {
        stopifnot(R6::is.R6(`data-tabulation`))
        self$`data-tabulation` <- `data-tabulation`
      }
      if (!is.null(`data-analysis`)) {
        stopifnot(R6::is.R6(`data-analysis`))
        self$`data-analysis` <- `data-analysis`
      }
      if (!is.null(`terminology`)) {
        stopifnot(R6::is.R6(`terminology`))
        self$`terminology` <- `terminology`
      }
      if (!is.null(`measure`)) {
        stopifnot(R6::is.R6(`measure`))
        self$`measure` <- `measure`
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
    #' @return ProductsLinks as a base R list.
    #' @examples
    #' # convert array of ProductsLinks (x) to a data frame
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
    #' Convert ProductsLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      ProductsLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        ProductsLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`data-collection`)) {
        ProductsLinksObject[["data-collection"]] <-
          self$`data-collection`$toSimpleType()
      }
      if (!is.null(self$`data-tabulation`)) {
        ProductsLinksObject[["data-tabulation"]] <-
          self$`data-tabulation`$toSimpleType()
      }
      if (!is.null(self$`data-analysis`)) {
        ProductsLinksObject[["data-analysis"]] <-
          self$`data-analysis`$toSimpleType()
      }
      if (!is.null(self$`terminology`)) {
        ProductsLinksObject[["terminology"]] <-
          self$`terminology`$toSimpleType()
      }
      if (!is.null(self$`measure`)) {
        ProductsLinksObject[["measure"]] <-
          self$`measure`$toSimpleType()
      }
      return(ProductsLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductsLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- ProductsRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`data-collection`)) {
        `data-collection_object` <- ProductgroupDataCollection$new()
        `data-collection_object`$fromJSON(jsonlite::toJSON(this_object$`data-collection`, auto_unbox = TRUE, digits = NA))
        self$`data-collection` <- `data-collection_object`
      }
      if (!is.null(this_object$`data-tabulation`)) {
        `data-tabulation_object` <- ProductgroupDataTabulation$new()
        `data-tabulation_object`$fromJSON(jsonlite::toJSON(this_object$`data-tabulation`, auto_unbox = TRUE, digits = NA))
        self$`data-tabulation` <- `data-tabulation_object`
      }
      if (!is.null(this_object$`data-analysis`)) {
        `data-analysis_object` <- ProductgroupDataAnalysis$new()
        `data-analysis_object`$fromJSON(jsonlite::toJSON(this_object$`data-analysis`, auto_unbox = TRUE, digits = NA))
        self$`data-analysis` <- `data-analysis_object`
      }
      if (!is.null(this_object$`terminology`)) {
        `terminology_object` <- ProductgroupTerminology$new()
        `terminology_object`$fromJSON(jsonlite::toJSON(this_object$`terminology`, auto_unbox = TRUE, digits = NA))
        self$`terminology` <- `terminology_object`
      }
      if (!is.null(this_object$`measure`)) {
        `measure_object` <- ProductgroupQrs$new()
        `measure_object`$fromJSON(jsonlite::toJSON(this_object$`measure`, auto_unbox = TRUE, digits = NA))
        self$`measure` <- `measure_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return ProductsLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of ProductsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of ProductsLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- ProductsRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`data-collection` <- ProductgroupDataCollection$new()$fromJSON(jsonlite::toJSON(this_object$`data-collection`, auto_unbox = TRUE, digits = NA))
      self$`data-tabulation` <- ProductgroupDataTabulation$new()$fromJSON(jsonlite::toJSON(this_object$`data-tabulation`, auto_unbox = TRUE, digits = NA))
      self$`data-analysis` <- ProductgroupDataAnalysis$new()$fromJSON(jsonlite::toJSON(this_object$`data-analysis`, auto_unbox = TRUE, digits = NA))
      self$`terminology` <- ProductgroupTerminology$new()$fromJSON(jsonlite::toJSON(this_object$`terminology`, auto_unbox = TRUE, digits = NA))
      self$`measure` <- ProductgroupQrs$new()$fromJSON(jsonlite::toJSON(this_object$`measure`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to ProductsLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ProductsLinks
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
# ProductsLinks$unlock()
#
## Below is an example to define the print function
# ProductsLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ProductsLinks$lock()

