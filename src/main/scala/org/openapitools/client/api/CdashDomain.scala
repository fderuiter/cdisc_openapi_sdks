package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomain._

case class CdashDomain (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
links: Option[CdashDomainLinks],
fields: Option[List[CdashDomainField]])

object CdashDomain {
  import DateTimeCodecs._

  implicit val CdashDomainCodecJson: CodecJson[CdashDomain] = CodecJson.derive[CdashDomain]
  implicit val CdashDomainDecoder: EntityDecoder[CdashDomain] = jsonOf[CdashDomain]
  implicit val CdashDomainEncoder: EntityEncoder[CdashDomain] = jsonEncoderOf[CdashDomain]
}
