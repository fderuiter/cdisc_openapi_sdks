package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomain._

case class CdashigDomain (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
links: Option[CdashigDomainLinks],
fields: Option[List[CdashigDomainField]])

object CdashigDomain {
  import DateTimeCodecs._

  implicit val CdashigDomainCodecJson: CodecJson[CdashigDomain] = CodecJson.derive[CdashigDomain]
  implicit val CdashigDomainDecoder: EntityDecoder[CdashigDomain] = jsonOf[CdashigDomain]
  implicit val CdashigDomainEncoder: EntityEncoder[CdashigDomain] = jsonEncoderOf[CdashigDomain]
}
