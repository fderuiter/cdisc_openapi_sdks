package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlCtPackageCodelists._

case class XmlCtPackageCodelists (
  self: Option[CtPackageCodelists])

object XmlCtPackageCodelists {
  import DateTimeCodecs._

  implicit val XmlCtPackageCodelistsCodecJson: CodecJson[XmlCtPackageCodelists] = CodecJson.derive[XmlCtPackageCodelists]
  implicit val XmlCtPackageCodelistsDecoder: EntityDecoder[XmlCtPackageCodelists] = jsonOf[XmlCtPackageCodelists]
  implicit val XmlCtPackageCodelistsEncoder: EntityEncoder[XmlCtPackageCodelists] = jsonEncoderOf[XmlCtPackageCodelists]
}
