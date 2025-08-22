
package org.openapitools.client.model


case class QrsItem (
    _ordinal: Option[String],
    _label: Option[String],
    _questionText: Option[String],
    _links: Option[QrsItemLinks]
)
object QrsItem {
    def toStringBody(var_ordinal: Object, var_label: Object, var_questionText: Object, var_links: Object) =
        s"""
        | {
        | "ordinal":$var_ordinal,"label":$var_label,"questionText":$var_questionText,"links":$var_links
        | }
        """.stripMargin
}
