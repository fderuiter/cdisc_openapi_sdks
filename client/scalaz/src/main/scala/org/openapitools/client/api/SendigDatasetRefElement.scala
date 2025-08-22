package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetRefElement._

case class SendigDatasetRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetRefElement {
  import DateTimeCodecs._

  implicit val SendigDatasetRefElementCodecJson: CodecJson[SendigDatasetRefElement] = CodecJson.derive[SendigDatasetRefElement]
  implicit val SendigDatasetRefElementDecoder: EntityDecoder[SendigDatasetRefElement] = jsonOf[SendigDatasetRefElement]
  implicit val SendigDatasetRefElementEncoder: EntityEncoder[SendigDatasetRefElement] = jsonEncoderOf[SendigDatasetRefElement]
}
