
package org.openapitools.client.model


case class XmlProducts (
    _self: Option[Products]
)
object XmlProducts {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
