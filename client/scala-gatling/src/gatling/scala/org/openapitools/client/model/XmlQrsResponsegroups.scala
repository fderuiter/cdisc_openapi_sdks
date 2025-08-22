
package org.openapitools.client.model


case class XmlQrsResponsegroups (
    _self: Option[QrsResponsegroups]
)
object XmlQrsResponsegroups {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
