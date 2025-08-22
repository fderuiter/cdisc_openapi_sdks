package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashigDomainRef._

case class CdashigDomainRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashigDomainRef {
  import DateTimeCodecs._

  implicit val CdashigDomainRefCodecJson: CodecJson[CdashigDomainRef] = CodecJson.derive[CdashigDomainRef]
  implicit val CdashigDomainRefDecoder: EntityDecoder[CdashigDomainRef] = jsonOf[CdashigDomainRef]
  implicit val CdashigDomainRefEncoder: EntityEncoder[CdashigDomainRef] = jsonEncoderOf[CdashigDomainRef]
}
