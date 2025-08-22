
package org.openapitools.client.model


case class XmlSendigClasses (
    _self: Option[SendigClasses]
)
object XmlSendigClasses {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
