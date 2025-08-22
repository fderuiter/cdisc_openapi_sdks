#' Create a new MaintenanceBody
#'
#' @description
#' MaintenanceBody Class
#'
#' @docType class
#' @title MaintenanceBody
#' @description MaintenanceBody Class
#' @format An \code{R6Class} generator object
#' @field maintenanceMode  character [optional]
#' @field maintenanceMessage  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
MaintenanceBody <- R6::R6Class(
  "MaintenanceBody",
  public = list(
    `maintenanceMode` = NULL,
    `maintenanceMessage` = NULL,

    #' @description
    #' Initialize a new MaintenanceBody class.
    #'
    #' @param maintenanceMode maintenanceMode
    #' @param maintenanceMessage maintenanceMessage
    #' @param ... Other optional arguments.
    initialize = function(`maintenanceMode` = NULL, `maintenanceMessage` = NULL, ...) {
      if (!is.null(`maintenanceMode`)) {
        if (!(is.logical(`maintenanceMode`) && length(`maintenanceMode`) == 1)) {
          stop(paste("Error! Invalid data for `maintenanceMode`. Must be a boolean:", `maintenanceMode`))
        }
        self$`maintenanceMode` <- `maintenanceMode`
      }
      if (!is.null(`maintenanceMessage`)) {
        if (!(is.character(`maintenanceMessage`) && length(`maintenanceMessage`) == 1)) {
          stop(paste("Error! Invalid data for `maintenanceMessage`. Must be a string:", `maintenanceMessage`))
        }
        self$`maintenanceMessage` <- `maintenanceMessage`
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
    #' @return MaintenanceBody as a base R list.
    #' @examples
    #' # convert array of MaintenanceBody (x) to a data frame
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
    #' Convert MaintenanceBody to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      MaintenanceBodyObject <- list()
      if (!is.null(self$`maintenanceMode`)) {
        MaintenanceBodyObject[["maintenanceMode"]] <-
          self$`maintenanceMode`
      }
      if (!is.null(self$`maintenanceMessage`)) {
        MaintenanceBodyObject[["maintenanceMessage"]] <-
          self$`maintenanceMessage`
      }
      return(MaintenanceBodyObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of MaintenanceBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of MaintenanceBody
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`maintenanceMode`)) {
        self$`maintenanceMode` <- this_object$`maintenanceMode`
      }
      if (!is.null(this_object$`maintenanceMessage`)) {
        self$`maintenanceMessage` <- this_object$`maintenanceMessage`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return MaintenanceBody in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of MaintenanceBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of MaintenanceBody
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`maintenanceMode` <- this_object$`maintenanceMode`
      self$`maintenanceMessage` <- this_object$`maintenanceMessage`
      self
    },

    #' @description
    #' Validate JSON input with respect to MaintenanceBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of MaintenanceBody
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
# MaintenanceBody$unlock()
#
## Below is an example to define the print function
# MaintenanceBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# MaintenanceBody$lock()

