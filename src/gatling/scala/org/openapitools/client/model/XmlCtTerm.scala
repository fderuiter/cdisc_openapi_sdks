
package org.openapitools.client.model


case class XmlCtTerm (
    _self: Option[CtTerm]
)
object XmlCtTerm {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
