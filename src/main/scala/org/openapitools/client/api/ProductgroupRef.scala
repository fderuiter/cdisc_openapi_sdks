package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ProductgroupRef._

case class ProductgroupRef (
  href: Option[String],
title: Option[String],
`type`: Option[String])

object ProductgroupRef {
  import DateTimeCodecs._

  implicit val ProductgroupRefCodecJson: CodecJson[ProductgroupRef] = CodecJson.derive[ProductgroupRef]
  implicit val ProductgroupRefDecoder: EntityDecoder[ProductgroupRef] = jsonOf[ProductgroupRef]
  implicit val ProductgroupRefEncoder: EntityEncoder[ProductgroupRef] = jsonEncoderOf[ProductgroupRef]
}
