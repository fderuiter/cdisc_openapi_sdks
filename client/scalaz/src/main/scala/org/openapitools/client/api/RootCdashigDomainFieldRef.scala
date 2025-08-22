package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashigDomainFieldRef._

case class RootCdashigDomainFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCdashigDomainFieldRef {
  import DateTimeCodecs._

  implicit val RootCdashigDomainFieldRefCodecJson: CodecJson[RootCdashigDomainFieldRef] = CodecJson.derive[RootCdashigDomainFieldRef]
  implicit val RootCdashigDomainFieldRefDecoder: EntityDecoder[RootCdashigDomainFieldRef] = jsonOf[RootCdashigDomainFieldRef]
  implicit val RootCdashigDomainFieldRefEncoder: EntityEncoder[RootCdashigDomainFieldRef] = jsonEncoderOf[RootCdashigDomainFieldRef]
}
