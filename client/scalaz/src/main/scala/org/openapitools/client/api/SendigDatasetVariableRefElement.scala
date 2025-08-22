package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariableRefElement._

case class SendigDatasetVariableRefElement (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetVariableRefElement {
  import DateTimeCodecs._

  implicit val SendigDatasetVariableRefElementCodecJson: CodecJson[SendigDatasetVariableRefElement] = CodecJson.derive[SendigDatasetVariableRefElement]
  implicit val SendigDatasetVariableRefElementDecoder: EntityDecoder[SendigDatasetVariableRefElement] = jsonOf[SendigDatasetVariableRefElement]
  implicit val SendigDatasetVariableRefElementEncoder: EntityEncoder[SendigDatasetVariableRefElement] = jsonEncoderOf[SendigDatasetVariableRefElement]
}
