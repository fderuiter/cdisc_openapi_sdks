
package org.openapitools.client.model


case class XmlAdamProductDatastructures (
    _self: Option[AdamProductDatastructures]
)
object XmlAdamProductDatastructures {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
