#' Create a new QrsItems
#'
#' @description
#' QrsItems Class
#'
#' @docType class
#' @title QrsItems
#' @description QrsItems Class
#' @format An \code{R6Class} generator object
#' @field name  character [optional]
#' @field label  character [optional]
#' @field description  character [optional]
#' @field effectiveDate  character [optional]
#' @field untilDate  character [optional]
#' @field registrationStatus  character [optional]
#' @field version  character [optional]
#' @field qrsType  character [optional]
#' @field _links  \link{QrsItemsLinks} [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
QrsItems <- R6::R6Class(
  "QrsItems",
  public = list(
    `name` = NULL,
    `label` = NULL,
    `description` = NULL,
    `effectiveDate` = NULL,
    `untilDate` = NULL,
    `registrationStatus` = NULL,
    `version` = NULL,
    `qrsType` = NULL,
    `_links` = NULL,

    #' @description
    #' Initialize a new QrsItems class.
    #'
    #' @param name name
    #' @param label label
    #' @param description description
    #' @param effectiveDate effectiveDate
    #' @param untilDate untilDate
    #' @param registrationStatus registrationStatus
    #' @param version version
    #' @param qrsType qrsType
    #' @param _links _links
    #' @param ... Other optional arguments.
    initialize = function(`name` = NULL, `label` = NULL, `description` = NULL, `effectiveDate` = NULL, `untilDate` = NULL, `registrationStatus` = NULL, `version` = NULL, `qrsType` = NULL, `_links` = NULL, ...) {
      if (!is.null(`name`)) {
        if (!(is.character(`name`) && length(`name`) == 1)) {
          stop(paste("Error! Invalid data for `name`. Must be a string:", `name`))
        }
        self$`name` <- `name`
      }
      if (!is.null(`label`)) {
        if (!(is.character(`label`) && length(`label`) == 1)) {
          stop(paste("Error! Invalid data for `label`. Must be a string:", `label`))
        }
        self$`label` <- `label`
      }
      if (!is.null(`description`)) {
        if (!(is.character(`description`) && length(`description`) == 1)) {
          stop(paste("Error! Invalid data for `description`. Must be a string:", `description`))
        }
        self$`description` <- `description`
      }
      if (!is.null(`effectiveDate`)) {
        if (!(is.character(`effectiveDate`) && length(`effectiveDate`) == 1)) {
          stop(paste("Error! Invalid data for `effectiveDate`. Must be a string:", `effectiveDate`))
        }
        self$`effectiveDate` <- `effectiveDate`
      }
      if (!is.null(`untilDate`)) {
        if (!(is.character(`untilDate`) && length(`untilDate`) == 1)) {
          stop(paste("Error! Invalid data for `untilDate`. Must be a string:", `untilDate`))
        }
        self$`untilDate` <- `untilDate`
      }
      if (!is.null(`registrationStatus`)) {
        if (!(is.character(`registrationStatus`) && length(`registrationStatus`) == 1)) {
          stop(paste("Error! Invalid data for `registrationStatus`. Must be a string:", `registrationStatus`))
        }
        self$`registrationStatus` <- `registrationStatus`
      }
      if (!is.null(`version`)) {
        if (!(is.character(`version`) && length(`version`) == 1)) {
          stop(paste("Error! Invalid data for `version`. Must be a string:", `version`))
        }
        self$`version` <- `version`
      }
      if (!is.null(`qrsType`)) {
        if (!(is.character(`qrsType`) && length(`qrsType`) == 1)) {
          stop(paste("Error! Invalid data for `qrsType`. Must be a string:", `qrsType`))
        }
        self$`qrsType` <- `qrsType`
      }
      if (!is.null(`_links`)) {
        stopifnot(R6::is.R6(`_links`))
        self$`_links` <- `_links`
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
    #' @return QrsItems as a base R list.
    #' @examples
    #' # convert array of QrsItems (x) to a data frame
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
    #' Convert QrsItems to a base R type
    #'
    #' @return A base R type, e.g. a list or numeric/character array.
    toSimpleType = function() {
      QrsItemsObject <- list()
      if (!is.null(self$`name`)) {
        QrsItemsObject[["name"]] <-
          self$`name`
      }
      if (!is.null(self$`label`)) {
        QrsItemsObject[["label"]] <-
          self$`label`
      }
      if (!is.null(self$`description`)) {
        QrsItemsObject[["description"]] <-
          self$`description`
      }
      if (!is.null(self$`effectiveDate`)) {
        QrsItemsObject[["effectiveDate"]] <-
          self$`effectiveDate`
      }
      if (!is.null(self$`untilDate`)) {
        QrsItemsObject[["untilDate"]] <-
          self$`untilDate`
      }
      if (!is.null(self$`registrationStatus`)) {
        QrsItemsObject[["registrationStatus"]] <-
          self$`registrationStatus`
      }
      if (!is.null(self$`version`)) {
        QrsItemsObject[["version"]] <-
          self$`version`
      }
      if (!is.null(self$`qrsType`)) {
        QrsItemsObject[["qrsType"]] <-
          self$`qrsType`
      }
      if (!is.null(self$`_links`)) {
        QrsItemsObject[["_links"]] <-
          self$`_links`$toSimpleType()
      }
      return(QrsItemsObject)
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItems
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItems
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`name`)) {
        self$`name` <- this_object$`name`
      }
      if (!is.null(this_object$`label`)) {
        self$`label` <- this_object$`label`
      }
      if (!is.null(this_object$`description`)) {
        self$`description` <- this_object$`description`
      }
      if (!is.null(this_object$`effectiveDate`)) {
        self$`effectiveDate` <- this_object$`effectiveDate`
      }
      if (!is.null(this_object$`untilDate`)) {
        self$`untilDate` <- this_object$`untilDate`
      }
      if (!is.null(this_object$`registrationStatus`)) {
        self$`registrationStatus` <- this_object$`registrationStatus`
      }
      if (!is.null(this_object$`version`)) {
        self$`version` <- this_object$`version`
      }
      if (!is.null(this_object$`qrsType`)) {
        self$`qrsType` <- this_object$`qrsType`
      }
      if (!is.null(this_object$`_links`)) {
        `_links_object` <- QrsItemsLinks$new()
        `_links_object`$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
        self$`_links` <- `_links_object`
      }
      self
    },

    #' @description
    #' To JSON String
    #' 
    #' @param ... Parameters passed to `jsonlite::toJSON`
    #' @return QrsItems in JSON format
    toJSONString = function(...) {
      simple <- self$toSimpleType()
      json <- jsonlite::toJSON(simple, auto_unbox = TRUE, digits = NA, ...)
      return(as.character(jsonlite::minify(json)))
    },

    #' @description
    #' Deserialize JSON string into an instance of QrsItems
    #'
    #' @param input_json the JSON input
    #' @return the instance of QrsItems
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`name` <- this_object$`name`
      self$`label` <- this_object$`label`
      self$`description` <- this_object$`description`
      self$`effectiveDate` <- this_object$`effectiveDate`
      self$`untilDate` <- this_object$`untilDate`
      self$`registrationStatus` <- this_object$`registrationStatus`
      self$`version` <- this_object$`version`
      self$`qrsType` <- this_object$`qrsType`
      self$`_links` <- QrsItemsLinks$new()$fromJSON(jsonlite::toJSON(this_object$`_links`, auto_unbox = TRUE, digits = NA))
      self
    },

    #' @description
    #' Validate JSON input with respect to QrsItems and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of QrsItems
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
# QrsItems$unlock()
#
## Below is an example to define the print function
# QrsItems$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# QrsItems$lock()

