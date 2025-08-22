
package org.openapitools.client.model


case class XmlQrsProduct (
    _self: Option[QrsProduct]
)
object XmlQrsProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
