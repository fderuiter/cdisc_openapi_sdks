package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashDomainFieldRef._

case class CdashDomainFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashDomainFieldRef {
  import DateTimeCodecs._

  implicit val CdashDomainFieldRefCodecJson: CodecJson[CdashDomainFieldRef] = CodecJson.derive[CdashDomainFieldRef]
  implicit val CdashDomainFieldRefDecoder: EntityDecoder[CdashDomainFieldRef] = jsonOf[CdashDomainFieldRef]
  implicit val CdashDomainFieldRefEncoder: EntityEncoder[CdashDomainFieldRef] = jsonEncoderOf[CdashDomainFieldRef]
}
