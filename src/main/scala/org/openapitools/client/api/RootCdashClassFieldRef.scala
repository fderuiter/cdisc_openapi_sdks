package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCdashClassFieldRef._

case class RootCdashClassFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object RootCdashClassFieldRef {
  import DateTimeCodecs._

  implicit val RootCdashClassFieldRefCodecJson: CodecJson[RootCdashClassFieldRef] = CodecJson.derive[RootCdashClassFieldRef]
  implicit val RootCdashClassFieldRefDecoder: EntityDecoder[RootCdashClassFieldRef] = jsonOf[RootCdashClassFieldRef]
  implicit val RootCdashClassFieldRefEncoder: EntityEncoder[RootCdashClassFieldRef] = jsonEncoderOf[RootCdashClassFieldRef]
}
