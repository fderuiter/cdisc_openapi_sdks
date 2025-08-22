package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainField._

case class CdashDomainField (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
definition: Option[String],
domainSpecific: Option[String],
questionText: Option[String],
prompt: Option[String],
simpleDatatype: Option[String],
implementationNotes: Option[String],
mappingInstructions: Option[String],
links: Option[CdashDomainFieldLinks])

object CdashDomainField {
  import DateTimeCodecs._

  implicit val CdashDomainFieldCodecJson: CodecJson[CdashDomainField] = CodecJson.derive[CdashDomainField]
  implicit val CdashDomainFieldDecoder: EntityDecoder[CdashDomainField] = jsonOf[CdashDomainField]
  implicit val CdashDomainFieldEncoder: EntityEncoder[CdashDomainField] = jsonEncoderOf[CdashDomainField]
}
