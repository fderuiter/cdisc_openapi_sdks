package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductsRef._

case class ProductsRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object ProductsRef {
  import DateTimeCodecs._

  implicit val ProductsRefCodecJson: CodecJson[ProductsRef] = CodecJson.derive[ProductsRef]
  implicit val ProductsRefDecoder: EntityDecoder[ProductsRef] = jsonOf[ProductsRef]
  implicit val ProductsRefEncoder: EntityEncoder[ProductsRef] = jsonEncoderOf[ProductsRef]
}
