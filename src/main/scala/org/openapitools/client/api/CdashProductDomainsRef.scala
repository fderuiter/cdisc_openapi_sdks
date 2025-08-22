package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashProductDomainsRef._

case class CdashProductDomainsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashProductDomainsRef {
  import DateTimeCodecs._

  implicit val CdashProductDomainsRefCodecJson: CodecJson[CdashProductDomainsRef] = CodecJson.derive[CdashProductDomainsRef]
  implicit val CdashProductDomainsRefDecoder: EntityDecoder[CdashProductDomainsRef] = jsonOf[CdashProductDomainsRef]
  implicit val CdashProductDomainsRefEncoder: EntityEncoder[CdashProductDomainsRef] = jsonEncoderOf[CdashProductDomainsRef]
}
