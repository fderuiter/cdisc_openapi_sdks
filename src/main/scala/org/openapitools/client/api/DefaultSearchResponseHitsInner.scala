package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime

import java.util.HashMap

import DefaultSearchResponseHitsInner._

case class DefaultSearchResponseHitsInner (
  href: String,
`type`: String)

object DefaultSearchResponseHitsInner {
  import DateTimeCodecs._

  implicit val DefaultSearchResponseHitsInnerCodecJson: CodecJson[DefaultSearchResponseHitsInner] = CodecJson.derive[DefaultSearchResponseHitsInner]
  implicit val DefaultSearchResponseHitsInnerDecoder: EntityDecoder[DefaultSearchResponseHitsInner] = jsonOf[DefaultSearchResponseHitsInner]
  implicit val DefaultSearchResponseHitsInnerEncoder: EntityEncoder[DefaultSearchResponseHitsInner] = jsonEncoderOf[DefaultSearchResponseHitsInner]
}
