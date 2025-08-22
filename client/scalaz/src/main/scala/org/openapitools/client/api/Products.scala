package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Products._

case class Products (
  links: Option[ProductsLinks])

object Products {
  import DateTimeCodecs._

  implicit val ProductsCodecJson: CodecJson[Products] = CodecJson.derive[Products]
  implicit val ProductsDecoder: EntityDecoder[Products] = jsonOf[Products]
  implicit val ProductsEncoder: EntityEncoder[Products] = jsonEncoderOf[Products]
}
