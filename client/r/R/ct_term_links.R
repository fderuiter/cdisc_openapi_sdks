#' Create a new CtTermLinks
#'
#' @description
#' CtTermLinks Class
#'
#' @docType class
#' @title CtTermLinks
#' @description CtTermLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CtTermRef} [optional]
#' @field parentPackage  \link{CtPackageRef} [optional]
#' @field parentCodelist  \link{CtCodelistRef} [optional]
#' @field rootItem  \link{RootCtTermRef} [optional]
#' @field priorVersion  \link{CtTermRef} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CtTermLinks <- R6::R6Class(
  "CtTermLinks",
  public = list(
    `item_self` = NULL,
    `parentPackage` = NULL,
    `parentCodelist` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,

    #' @description
    #' Initialize a new CtTermLinks class.
    #'
    #' @param item_self item_self
    #' @param parentPackage parentPackage
    #' @param parentCodelist parentCodelist
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentPackage` = NULL, `parentCodelist` = NULL, `rootItem` = NULL, `priorVersion` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentPackage`)) {
        stopifnot(R6::is.R6(`parentPackage`))
        self$`parentPackage` <- `parentPackage`
      }
      if (!is.null(`parentCodelist`)) {
        stopifnot(R6::is.R6(`parentCodelist`))
        self$`parentCodelist` <- `parentCodelist`
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
    #' @return CtTermLinks as a base R list.
    #' @examples
    #' # convert array of CtTermLinks (x) to a data frame
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
    #' Convert CtTermLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CtTermLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CtTermLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentPackage`)) {
        CtTermLinksObject[["parentPackage"]] <-
          self$`parentPackage`$toSimpleType()
      }
      if (!is.null(self$`parentCodelist`)) {
        CtTermLinksObject[["parentCodelist"]] <-
          self$`parentCodelist`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        CtTermLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CtTermLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      return(CtTermLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CtTermLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtTermLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CtTermRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentPackage`)) {
        `parentpackage_object` <- CtPackageRef$new()
        `parentpackage_object`$fromJSON(jsonlite::toJSON(this_object$`parentPackage`, auto_unbox = TRUE, digits = NA))
        self$`parentPackage` <- `parentpackage_object`
      }
      if (!is.null(this_object$`parentCodelist`)) {
        `parentcodelist_object` <- CtCodelistRef$new()
        `parentcodelist_object`$fromJSON(jsonlite::toJSON(this_object$`parentCodelist`, auto_unbox = TRUE, digits = NA))
        self$`parentCodelist` <- `parentcodelist_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootCtTermRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CtTermRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CtTermLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CtTermLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtTermLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentPackage` <- CtPackageRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentPackage`, auto_unbox = TRUE, digits = NA))
      self$`parentCodelist` <- CtCodelistRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentCodelist`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootCtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CtTermRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to CtTermLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CtTermLinks
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
# CtTermLinks$unlock()
#
## Below is an example to define the print function
# CtTermLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CtTermLinks$lock()

