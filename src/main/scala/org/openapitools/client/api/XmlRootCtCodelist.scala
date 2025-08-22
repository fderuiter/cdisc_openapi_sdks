package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlRootCtCodelist._

case class XmlRootCtCodelist (
  self: Option[RootCtCodelist])

object XmlRootCtCodelist {
  import DateTimeCodecs._

  implicit val XmlRootCtCodelistCodecJson: CodecJson[XmlRootCtCodelist] = CodecJson.derive[XmlRootCtCodelist]
  implicit val XmlRootCtCodelistDecoder: EntityDecoder[XmlRootCtCodelist] = jsonOf[XmlRootCtCodelist]
  implicit val XmlRootCtCodelistEncoder: EntityEncoder[XmlRootCtCodelist] = jsonEncoderOf[XmlRootCtCodelist]
}
