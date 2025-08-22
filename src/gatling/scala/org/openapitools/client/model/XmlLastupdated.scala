
package org.openapitools.client.model


case class XmlLastupdated (
    _self: Option[Lastupdated]
)
object XmlLastupdated {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
