package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExportCtTerm._

case class ExportCtTerm (
  bundle1: Option[String],
cDISCSynonymS: Option[List[String]],
bundle2: Option[String])

object ExportCtTerm {
  import DateTimeCodecs._

  implicit val ExportCtTermCodecJson: CodecJson[ExportCtTerm] = CodecJson.derive[ExportCtTerm]
  implicit val ExportCtTermDecoder: EntityDecoder[ExportCtTerm] = jsonOf[ExportCtTerm]
  implicit val ExportCtTermEncoder: EntityEncoder[ExportCtTerm] = jsonEncoderOf[ExportCtTerm]
}
