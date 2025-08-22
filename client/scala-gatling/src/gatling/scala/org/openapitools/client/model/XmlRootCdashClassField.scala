
package org.openapitools.client.model


case class XmlRootCdashClassField (
    _self: Option[RootCdashClassField]
)
object XmlRootCdashClassField {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
