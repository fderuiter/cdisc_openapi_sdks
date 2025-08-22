package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashDomainFieldRef._

case class RootCdashDomainFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCdashDomainFieldRef {
  import DateTimeCodecs._

  implicit val RootCdashDomainFieldRefCodecJson: CodecJson[RootCdashDomainFieldRef] = CodecJson.derive[RootCdashDomainFieldRef]
  implicit val RootCdashDomainFieldRefDecoder: EntityDecoder[RootCdashDomainFieldRef] = jsonOf[RootCdashDomainFieldRef]
  implicit val RootCdashDomainFieldRefEncoder: EntityEncoder[RootCdashDomainFieldRef] = jsonEncoderOf[RootCdashDomainFieldRef]
}
