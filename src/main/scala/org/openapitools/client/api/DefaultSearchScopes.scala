package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DefaultSearchScopes._

case class DefaultSearchScopes (
  
object DefaultSearchScopes {
  import DateTimeCodecs._

  implicit val DefaultSearchScopesCodecJson: CodecJson[DefaultSearchScopes] = CodecJson.derive[DefaultSearchScopes]
  implicit val DefaultSearchScopesDecoder: EntityDecoder[DefaultSearchScopes] = jsonOf[DefaultSearchScopes]
  implicit val DefaultSearchScopesEncoder: EntityEncoder[DefaultSearchScopes] = jsonEncoderOf[DefaultSearchScopes]
}
