
package org.openapitools.client.model


case class DefaultErrorResponse (
    /* HTTP Status Code */
    _statusCode: Option[String],
    /* HTTP Reason Phrase */
    _reasonPhrase: Option[String],
    /* User Error Message */
    _userMessage: Option[String],
    /* Admin Error Message */
    _adminMessage: Option[String]
)
object DefaultErrorResponse {
    def toStringBody(var_statusCode: Object, var_reasonPhrase: Object, var_userMessage: Object, var_adminMessage: Object) =
        s"""
        | {
        | "statusCode":$var_statusCode,"reasonPhrase":$var_reasonPhrase,"userMessage":$var_userMessage,"adminMessage":$var_adminMessage
        | }
        """.stripMargin
}
