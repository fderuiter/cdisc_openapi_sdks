
package org.openapitools.client.model


case class QrsProductLinks (
    _self: Option[QrsProductRef],
    _priorVersion: Option[QrsProductRef],
    _qrsTermCAT: Option[RootCtTermRef],
    _qrsItems: Option[QrsItemsRef]
)
object QrsProductLinks {
    def toStringBody(var_self: Object, var_priorVersion: Object, var_qrsTermCAT: Object, var_qrsItems: Object) =
        s"""
        | {
        | "self":$var_self,"priorVersion":$var_priorVersion,"qrsTermCAT":$var_qrsTermCAT,"qrsItems":$var_qrsItems
        | }
        """.stripMargin
}
