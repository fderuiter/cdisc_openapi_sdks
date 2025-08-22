package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductDomains._

case class CdashProductDomains (
  name: Option[String],
label: Option[String],
description: Option[String],
source: Option[String],
effectiveDate: Option[String],
registrationStatus: Option[String],
version: Option[String],
links: Option[CdashProductDomainsLinks])

object CdashProductDomains {
  import DateTimeCodecs._

  implicit val CdashProductDomainsCodecJson: CodecJson[CdashProductDomains] = CodecJson.derive[CdashProductDomains]
  implicit val CdashProductDomainsDecoder: EntityDecoder[CdashProductDomains] = jsonOf[CdashProductDomains]
  implicit val CdashProductDomainsEncoder: EntityEncoder[CdashProductDomains] = jsonEncoderOf[CdashProductDomains]
}
