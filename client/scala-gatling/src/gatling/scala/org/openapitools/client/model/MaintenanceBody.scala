
package org.openapitools.client.model


case class MaintenanceBody (
    _maintenanceMode: Option[Boolean],
    _maintenanceMessage: Option[String]
)
object MaintenanceBody {
    def toStringBody(var_maintenanceMode: Object, var_maintenanceMessage: Object) =
        s"""
        | {
        | "maintenanceMode":$var_maintenanceMode,"maintenanceMessage":$var_maintenanceMessage
        | }
        """.stripMargin
}
