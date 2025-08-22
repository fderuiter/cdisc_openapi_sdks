
package org.openapitools.client.model


case class XmlAdamVariable (
    _self: Option[AdamVariable]
)
object XmlAdamVariable {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
