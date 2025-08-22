package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigClassDomains._

case class CdashigClassDomains (
  ordinal: Option[String],
name: Option[String],
label: Option[String],
description: Option[String],
links: Option[CdashigClassDomainsLinks])

object CdashigClassDomains {
  import DateTimeCodecs._

  implicit val CdashigClassDomainsCodecJson: CodecJson[CdashigClassDomains] = CodecJson.derive[CdashigClassDomains]
  implicit val CdashigClassDomainsDecoder: EntityDecoder[CdashigClassDomains] = jsonOf[CdashigClassDomains]
  implicit val CdashigClassDomainsEncoder: EntityEncoder[CdashigClassDomains] = jsonEncoderOf[CdashigClassDomains]
}
