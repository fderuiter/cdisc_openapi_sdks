
package org.openapitools.client.model


case class AboutLinks (
    _self: Option[AboutRef],
    _lastupdated: Option[LastupdatedRef]
)
object AboutLinks {
    def toStringBody(var_self: Object, var_lastupdated: Object) =
        s"""
        | {
        | "self":$var_self,"lastupdated":$var_lastupdated
        | }
        """.stripMargin
}
