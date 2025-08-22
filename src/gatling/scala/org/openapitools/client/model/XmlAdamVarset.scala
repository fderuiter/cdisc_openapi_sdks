
package org.openapitools.client.model


case class XmlAdamVarset (
    _self: Option[AdamVarset]
)
object XmlAdamVarset {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
