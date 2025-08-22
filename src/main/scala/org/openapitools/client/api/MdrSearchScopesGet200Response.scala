package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import MdrSearchScopesGet200Response._

case class MdrSearchScopesGet200Response (
  scopes: Option[List[DefaultSearchScopes]])

object MdrSearchScopesGet200Response {
  import DateTimeCodecs._

  implicit val MdrSearchScopesGet200ResponseCodecJson: CodecJson[MdrSearchScopesGet200Response] = CodecJson.derive[MdrSearchScopesGet200Response]
  implicit val MdrSearchScopesGet200ResponseDecoder: EntityDecoder[MdrSearchScopesGet200Response] = jsonOf[MdrSearchScopesGet200Response]
  implicit val MdrSearchScopesGet200ResponseEncoder: EntityEncoder[MdrSearchScopesGet200Response] = jsonEncoderOf[MdrSearchScopesGet200Response]
}
