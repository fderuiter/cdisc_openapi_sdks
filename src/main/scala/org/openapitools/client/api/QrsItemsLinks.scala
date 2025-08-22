package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import QrsItemsLinks._

case class QrsItemsLinks (
  self: Option[QrsItemsRef],
parentProduct: Option[QrsProductRef],
items: Option[List[QrsItemRefElement]])

object QrsItemsLinks {
  import DateTimeCodecs._

  implicit val QrsItemsLinksCodecJson: CodecJson[QrsItemsLinks] = CodecJson.derive[QrsItemsLinks]
  implicit val QrsItemsLinksDecoder: EntityDecoder[QrsItemsLinks] = jsonOf[QrsItemsLinks]
  implicit val QrsItemsLinksEncoder: EntityEncoder[QrsItemsLinks] = jsonEncoderOf[QrsItemsLinks]
}
