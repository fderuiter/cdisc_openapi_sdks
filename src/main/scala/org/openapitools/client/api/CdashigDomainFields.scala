package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFields._

case class CdashigDomainFields (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
links: Option[CdashigDomainFieldsLinks])

object CdashigDomainFields {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldsCodecJson: CodecJson[CdashigDomainFields] = CodecJson.derive[CdashigDomainFields]
  implicit val CdashigDomainFieldsDecoder: EntityDecoder[CdashigDomainFields] = jsonOf[CdashigDomainFields]
  implicit val CdashigDomainFieldsEncoder: EntityEncoder[CdashigDomainFields] = jsonEncoderOf[CdashigDomainFields]
}
