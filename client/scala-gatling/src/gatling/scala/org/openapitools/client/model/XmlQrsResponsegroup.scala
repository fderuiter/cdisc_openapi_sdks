
package org.openapitools.client.model


case class XmlQrsResponsegroup (
    _self: Option[QrsResponsegroup]
)
object XmlQrsResponsegroup {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
