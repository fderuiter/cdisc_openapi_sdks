package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainRef._

case class CdashDomainRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainRef {
  import DateTimeCodecs._

  implicit val CdashDomainRefCodecJson: CodecJson[CdashDomainRef] = CodecJson.derive[CdashDomainRef]
  implicit val CdashDomainRefDecoder: EntityDecoder[CdashDomainRef] = jsonOf[CdashDomainRef]
  implicit val CdashDomainRefEncoder: EntityEncoder[CdashDomainRef] = jsonEncoderOf[CdashDomainRef]
}
