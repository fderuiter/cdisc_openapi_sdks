package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainField._

case class CdashigDomainField (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
definition: Option[String],
questionText: Option[String],
prompt: Option[String],
completionInstructions: Option[String],
implementationNotes: Option[String],
simpleDatatype: Option[String],
mappingInstructions: Option[String],
core: Option[String],
links: Option[CdashigDomainFieldLinks])

object CdashigDomainField {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldCodecJson: CodecJson[CdashigDomainField] = CodecJson.derive[CdashigDomainField]
  implicit val CdashigDomainFieldDecoder: EntityDecoder[CdashigDomainField] = jsonOf[CdashigDomainField]
  implicit val CdashigDomainFieldEncoder: EntityEncoder[CdashigDomainField] = jsonEncoderOf[CdashigDomainField]
}
