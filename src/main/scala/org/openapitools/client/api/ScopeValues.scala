package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ScopeValues._

case class ScopeValues (
  total: Option[BigDecimal],
hasMore: Option[Boolean],
values: Option[List[String]])

object ScopeValues {
  import DateTimeCodecs._

  implicit val ScopeValuesCodecJson: CodecJson[ScopeValues] = CodecJson.derive[ScopeValues]
  implicit val ScopeValuesDecoder: EntityDecoder[ScopeValues] = jsonOf[ScopeValues]
  implicit val ScopeValuesEncoder: EntityEncoder[ScopeValues] = jsonEncoderOf[ScopeValues]
}
