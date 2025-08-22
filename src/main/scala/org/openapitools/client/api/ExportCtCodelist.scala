package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCtCodelist._

case class ExportCtCodelist (
  code: Option[String],
codelistCode: Option[String],
codelistExtensibleYesNo: Option[String],
codelistName: Option[String],
cDISCSubmissionValue: Option[String],
cDISCSynonymS: Option[List[String]],
cDISCDefinition: Option[String],
nCIPreferredTerm: Option[String],
standardAndDate: Option[String],
: Option[List[ExportCtTerm]])

object ExportCtCodelist {
  import DateTimeCodecs._

  implicit val ExportCtCodelistCodecJson: CodecJson[ExportCtCodelist] = CodecJson.derive[ExportCtCodelist]
  implicit val ExportCtCodelistDecoder: EntityDecoder[ExportCtCodelist] = jsonOf[ExportCtCodelist]
  implicit val ExportCtCodelistEncoder: EntityEncoder[ExportCtCodelist] = jsonEncoderOf[ExportCtCodelist]
}
