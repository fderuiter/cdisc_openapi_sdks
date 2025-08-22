package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigProductDomains._

case class CdashigProductDomains (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashigProductDomainsLinks])

object CdashigProductDomains {
  import DateTimeCodecs._

  implicit val CdashigProductDomainsCodecJson: CodecJson[CdashigProductDomains] = CodecJson.derive[CdashigProductDomains]
  implicit val CdashigProductDomainsDecoder: EntityDecoder[CdashigProductDomains] = jsonOf[CdashigProductDomains]
  implicit val CdashigProductDomainsEncoder: EntityEncoder[CdashigProductDomains] = jsonEncoderOf[CdashigProductDomains]
}
