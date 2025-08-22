
package org.openapitools.client.model


case class XmlRootCtTerm (
    _self: Option[RootCtTerm]
)
object XmlRootCtTerm {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
