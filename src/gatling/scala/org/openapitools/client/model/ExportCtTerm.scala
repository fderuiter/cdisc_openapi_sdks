
package org.openapitools.client.model


case class ExportCtTerm (
    _bundle1: Option[String],
    _cDISCSynonymS: Option[List[String]],
    _bundle2: Option[String]
)
object ExportCtTerm {
    def toStringBody(var_bundle1: Object, var_cDISCSynonymS: Object, var_bundle2: Object) =
        s"""
        | {
        | "bundle1":$var_bundle1,"cDISCSynonymS":$var_cDISCSynonymS,"bundle2":$var_bundle2
        | }
        """.stripMargin
}
