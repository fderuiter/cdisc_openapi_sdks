#' Create a new CtCodelistTermsLinks
#'
#' @description
#' CtCodelistTermsLinks Class
#'
#' @docType class
#' @title CtCodelistTermsLinks
#' @description CtCodelistTermsLinks Class
#' @format An \code{R6Class} generator object
#' @field item_self  \link{CtCodelistTermsRef} [optional]
#' @field parentPackage  \link{CtPackageRef} [optional]
#' @field rootItem  \link{RootCtCodelistRef} [optional]
#' @field priorVersion  \link{CtCodelistTermsRef} [optional]
#' @field terms  list(\link{CtTermRefElement}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CtCodelistTermsLinks <- R6::R6Class(
  "CtCodelistTermsLinks",
  public = list(
    `item_self` = NULL,
    `parentPackage` = NULL,
    `rootItem` = NULL,
    `priorVersion` = NULL,
    `terms` = NULL,

    #' @description
    #' Initialize a new CtCodelistTermsLinks class.
    #'
    #' @param item_self item_self
    #' @param parentPackage parentPackage
    #' @param rootItem rootItem
    #' @param priorVersion priorVersion
    #' @param terms terms
    #' @param ... Other optional arguments.
    initialize = function(`item_self` = NULL, `parentPackage` = NULL, `rootItem` = NULL, `priorVersion` = NULL, `terms` = NULL, ...) {
      if (!is.null(`item_self`)) {
        stopifnot(R6::is.R6(`item_self`))
        self$`item_self` <- `item_self`
      }
      if (!is.null(`parentPackage`)) {
        stopifnot(R6::is.R6(`parentPackage`))
        self$`parentPackage` <- `parentPackage`
      }
      if (!is.null(`rootItem`)) {
        stopifnot(R6::is.R6(`rootItem`))
        self$`rootItem` <- `rootItem`
      }
      if (!is.null(`priorVersion`)) {
        stopifnot(R6::is.R6(`priorVersion`))
        self$`priorVersion` <- `priorVersion`
      }
      if (!is.null(`terms`)) {
        stopifnot(is.vector(`terms`), length(`terms`) != 0)
        sapply(`terms`, function(x) stopifnot(R6::is.R6(x)))
        self$`terms` <- `terms`
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
    #' @return CtCodelistTermsLinks as a base R list.
    #' @examples
    #' # convert array of CtCodelistTermsLinks (x) to a data frame
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
    #' Convert CtCodelistTermsLinks to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      CtCodelistTermsLinksObject <- list()
      if (!is.null(self$`item_self`)) {
        CtCodelistTermsLinksObject[["self"]] <-
          self$`item_self`$toSimpleType()
      }
      if (!is.null(self$`parentPackage`)) {
        CtCodelistTermsLinksObject[["parentPackage"]] <-
          self$`parentPackage`$toSimpleType()
      }
      if (!is.null(self$`rootItem`)) {
        CtCodelistTermsLinksObject[["rootItem"]] <-
          self$`rootItem`$toSimpleType()
      }
      if (!is.null(self$`priorVersion`)) {
        CtCodelistTermsLinksObject[["priorVersion"]] <-
          self$`priorVersion`$toSimpleType()
      }
      if (!is.null(self$`terms`)) {
        CtCodelistTermsLinksObject[["terms"]] <-
          lapply(self$`terms`, function(x) x$toSimpleType())
      }
      return(CtCodelistTermsLinksObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of CtCodelistTermsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtCodelistTermsLinks
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`self`)) {
        `item_self_object` <- CtCodelistTermsRef$new()
        `item_self_object`$fromJSON(jsonlite::toJSON(this_object$`self`, auto_unbox = TRUE, digits = NA))
        self$`item_self` <- `item_self_object`
      }
      if (!is.null(this_object$`parentPackage`)) {
        `parentpackage_object` <- CtPackageRef$new()
        `parentpackage_object`$fromJSON(jsonlite::toJSON(this_object$`parentPackage`, auto_unbox = TRUE, digits = NA))
        self$`parentPackage` <- `parentpackage_object`
      }
      if (!is.null(this_object$`rootItem`)) {
        `rootitem_object` <- RootCtCodelistRef$new()
        `rootitem_object`$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
        self$`rootItem` <- `rootitem_object`
      }
      if (!is.null(this_object$`priorVersion`)) {
        `priorversion_object` <- CtCodelistTermsRef$new()
        `priorversion_object`$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
        self$`priorVersion` <- `priorversion_object`
      }
      if (!is.null(this_object$`terms`)) {
        self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[CtTermRefElement]", loadNamespace("openapi"))
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return CtCodelistTermsLinks in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of CtCodelistTermsLinks
    #'
    #' @param input_json the JSON input
    #' @return the instance of CtCodelistTermsLinks
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`item_self` <- CtCodelistTermsRef$new()$fromJSON(jsonlite::toJSON(this_object$`item_self`, auto_unbox = TRUE, digits = NA))
      self$`parentPackage` <- CtPackageRef$new()$fromJSON(jsonlite::toJSON(this_object$`parentPackage`, auto_unbox = TRUE, digits = NA))
      self$`rootItem` <- RootCtCodelistRef$new()$fromJSON(jsonlite::toJSON(this_object$`rootItem`, auto_unbox = TRUE, digits = NA))
      self$`priorVersion` <- CtCodelistTermsRef$new()$fromJSON(jsonlite::toJSON(this_object$`priorVersion`, auto_unbox = TRUE, digits = NA))
      self$`terms` <- ApiClient$new()$deserializeObj(this_object$`terms`, "array[CtTermRefElement]", loadNamespace("openapi"))
      self
    },

    #' @description
    #' Validate JSON input with respect to CtCodelistTermsLinks and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of CtCodelistTermsLinks
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
# CtCodelistTermsLinks$unlock()
#
## Below is an example to define the print function
# CtCodelistTermsLinks$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# CtCodelistTermsLinks$lock()

