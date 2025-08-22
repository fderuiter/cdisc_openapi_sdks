
package org.openapitools.client.model


case class XmlAdamProduct (
    _self: Option[AdamProduct]
)
object XmlAdamProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
