package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassField._

case class CdashClassField (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
definition: Option[String],
questionText: Option[String],
prompt: Option[String],
simpleDatatype: Option[String],
implementationNotes: Option[String],
mappingInstructions: Option[String],
links: Option[CdashClassFieldLinks])

object CdashClassField {
  import DateTimeCodecs._

  implicit val CdashClassFieldCodecJson: CodecJson[CdashClassField] = CodecJson.derive[CdashClassField]
  implicit val CdashClassFieldDecoder: EntityDecoder[CdashClassField] = jsonOf[CdashClassField]
  implicit val CdashClassFieldEncoder: EntityEncoder[CdashClassField] = jsonEncoderOf[CdashClassField]
}
