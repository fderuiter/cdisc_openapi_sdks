package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DefaultErrorResponse._

case class DefaultErrorResponse (
  /* HTTP Status Code */
  statusCode: Option[String],
/* HTTP Reason Phrase */
  reasonPhrase: Option[String],
/* User Error Message */
  userMessage: Option[String],
/* Admin Error Message */
  adminMessage: Option[String])

object DefaultErrorResponse {
  import DateTimeCodecs._

  implicit val DefaultErrorResponseCodecJson: CodecJson[DefaultErrorResponse] = CodecJson.derive[DefaultErrorResponse]
  implicit val DefaultErrorResponseDecoder: EntityDecoder[DefaultErrorResponse] = jsonOf[DefaultErrorResponse]
  implicit val DefaultErrorResponseEncoder: EntityEncoder[DefaultErrorResponse] = jsonEncoderOf[DefaultErrorResponse]
}
