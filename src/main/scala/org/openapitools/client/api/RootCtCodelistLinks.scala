package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import RootCtCodelistLinks._

case class RootCtCodelistLinks (
  self: Option[RootCtCodelistRef],
versions: Option[List[CtCodelistRefVersion]])

object RootCtCodelistLinks {
  import DateTimeCodecs._

  implicit val RootCtCodelistLinksCodecJson: CodecJson[RootCtCodelistLinks] = CodecJson.derive[RootCtCodelistLinks]
  implicit val RootCtCodelistLinksDecoder: EntityDecoder[RootCtCodelistLinks] = jsonOf[RootCtCodelistLinks]
  implicit val RootCtCodelistLinksEncoder: EntityEncoder[RootCtCodelistLinks] = jsonEncoderOf[RootCtCodelistLinks]
}
