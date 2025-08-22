package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainFieldRef._

case class CdashigDomainFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigDomainFieldRef {
  import DateTimeCodecs._

  implicit val CdashigDomainFieldRefCodecJson: CodecJson[CdashigDomainFieldRef] = CodecJson.derive[CdashigDomainFieldRef]
  implicit val CdashigDomainFieldRefDecoder: EntityDecoder[CdashigDomainFieldRef] = jsonOf[CdashigDomainFieldRef]
  implicit val CdashigDomainFieldRefEncoder: EntityEncoder[CdashigDomainFieldRef] = jsonEncoderOf[CdashigDomainFieldRef]
}
