package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItemsRef._

case class QrsItemsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object QrsItemsRef {
  import DateTimeCodecs._

  implicit val QrsItemsRefCodecJson: CodecJson[QrsItemsRef] = CodecJson.derive[QrsItemsRef]
  implicit val QrsItemsRefDecoder: EntityDecoder[QrsItemsRef] = jsonOf[QrsItemsRef]
  implicit val QrsItemsRefEncoder: EntityEncoder[QrsItemsRef] = jsonEncoderOf[QrsItemsRef]
}
