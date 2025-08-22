package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetRef._

case class SendigDatasetRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetRef {
  import DateTimeCodecs._

  implicit val SendigDatasetRefCodecJson: CodecJson[SendigDatasetRef] = CodecJson.derive[SendigDatasetRef]
  implicit val SendigDatasetRefDecoder: EntityDecoder[SendigDatasetRef] = jsonOf[SendigDatasetRef]
  implicit val SendigDatasetRefEncoder: EntityEncoder[SendigDatasetRef] = jsonEncoderOf[SendigDatasetRef]
}
