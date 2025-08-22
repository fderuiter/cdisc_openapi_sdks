
package org.openapitools.client.model


case class XmlCtCodelist (
    _self: Option[CtCodelist]
)
object XmlCtCodelist {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
