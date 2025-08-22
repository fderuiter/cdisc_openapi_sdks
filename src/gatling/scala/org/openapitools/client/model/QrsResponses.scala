
package org.openapitools.client.model


case class QrsResponses (
    _ordinal: Option[String],
    _links: Option[QrsResponseLinks]
)
object QrsResponses {
    def toStringBody(var_ordinal: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"links":$var_links
        | }
        """.stripMargin
}
