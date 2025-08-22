
package org.openapitools.client.model


case class LastupdatedLinks (
    _self: Option[LastupdatedRef]
)
object LastupdatedLinks {
    def toStringBody(var_self: Object) =
        s"""
        | {
        | "self":$var_self
        | }
        """.stripMargin
}
