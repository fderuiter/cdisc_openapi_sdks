package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DefaultSearchResponse._

case class DefaultSearchResponse (
  hits: Option[List[DefaultSearchResponseHitsInner]],
totalHits: Option[BigDecimal])

object DefaultSearchResponse {
  import DateTimeCodecs._

  implicit val DefaultSearchResponseCodecJson: CodecJson[DefaultSearchResponse] = CodecJson.derive[DefaultSearchResponse]
  implicit val DefaultSearchResponseDecoder: EntityDecoder[DefaultSearchResponse] = jsonOf[DefaultSearchResponse]
  implicit val DefaultSearchResponseEncoder: EntityEncoder[DefaultSearchResponse] = jsonEncoderOf[DefaultSearchResponse]
}
