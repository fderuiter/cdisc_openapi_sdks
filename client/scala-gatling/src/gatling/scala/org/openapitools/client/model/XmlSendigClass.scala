
package org.openapitools.client.model


case class XmlSendigClass (
    _self: Option[SendigClass]
)
object XmlSendigClass {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
