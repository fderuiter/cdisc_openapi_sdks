package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import LastupdatedRef._

case class LastupdatedRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object LastupdatedRef {
  import DateTimeCodecs._

  implicit val LastupdatedRefCodecJson: CodecJson[LastupdatedRef] = CodecJson.derive[LastupdatedRef]
  implicit val LastupdatedRefDecoder: EntityDecoder[LastupdatedRef] = jsonOf[LastupdatedRef]
  implicit val LastupdatedRefEncoder: EntityEncoder[LastupdatedRef] = jsonEncoderOf[LastupdatedRef]
}
