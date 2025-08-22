package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFields._

case class CdashDomainFields (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
links: Option[CdashDomainFieldsLinks])

object CdashDomainFields {
  import DateTimeCodecs._

  implicit val CdashDomainFieldsCodecJson: CodecJson[CdashDomainFields] = CodecJson.derive[CdashDomainFields]
  implicit val CdashDomainFieldsDecoder: EntityDecoder[CdashDomainFields] = jsonOf[CdashDomainFields]
  implicit val CdashDomainFieldsEncoder: EntityEncoder[CdashDomainFields] = jsonEncoderOf[CdashDomainFields]
}
