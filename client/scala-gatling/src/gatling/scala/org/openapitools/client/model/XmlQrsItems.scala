
package org.openapitools.client.model


case class XmlQrsItems (
    _self: Option[QrsItems]
)
object XmlQrsItems {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
