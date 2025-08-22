
package org.openapitools.client.model


case class XmlQrsItem (
    _self: Option[QrsItem]
)
object XmlQrsItem {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
