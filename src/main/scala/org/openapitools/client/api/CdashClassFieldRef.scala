package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CdashClassFieldRef._

case class CdashClassFieldRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object CdashClassFieldRef {
  import DateTimeCodecs._

  implicit val CdashClassFieldRefCodecJson: CodecJson[CdashClassFieldRef] = CodecJson.derive[CdashClassFieldRef]
  implicit val CdashClassFieldRefDecoder: EntityDecoder[CdashClassFieldRef] = jsonOf[CdashClassFieldRef]
  implicit val CdashClassFieldRefEncoder: EntityEncoder[CdashClassFieldRef] = jsonEncoderOf[CdashClassFieldRef]
}
