package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import SendigDatasetVariableRefVersion._

case class SendigDatasetVariableRefVersion (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object SendigDatasetVariableRefVersion {
  import DateTimeCodecs._

  implicit val SendigDatasetVariableRefVersionCodecJson: CodecJson[SendigDatasetVariableRefVersion] = CodecJson.derive[SendigDatasetVariableRefVersion]
  implicit val SendigDatasetVariableRefVersionDecoder: EntityDecoder[SendigDatasetVariableRefVersion] = jsonOf[SendigDatasetVariableRefVersion]
  implicit val SendigDatasetVariableRefVersionEncoder: EntityEncoder[SendigDatasetVariableRefVersion] = jsonEncoderOf[SendigDatasetVariableRefVersion]
}
