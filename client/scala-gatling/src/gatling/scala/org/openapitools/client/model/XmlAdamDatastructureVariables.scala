
package org.openapitools.client.model


case class XmlAdamDatastructureVariables (
    _self: Option[AdamDatastructureVariables]
)
object XmlAdamDatastructureVariables {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
