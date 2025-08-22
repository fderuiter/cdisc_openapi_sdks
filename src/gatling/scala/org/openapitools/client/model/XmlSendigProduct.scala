
package org.openapitools.client.model


case class XmlSendigProduct (
    _self: Option[SendigProduct]
)
object XmlSendigProduct {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
