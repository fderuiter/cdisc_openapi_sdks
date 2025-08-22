package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import XmlAdamVariable._

case class XmlAdamVariable (
  self: Option[AdamVariable])

object XmlAdamVariable {
  import DateTimeCodecs._

  implicit val XmlAdamVariableCodecJson: CodecJson[XmlAdamVariable] = CodecJson.derive[XmlAdamVariable]
  implicit val XmlAdamVariableDecoder: EntityDecoder[XmlAdamVariable] = jsonOf[XmlAdamVariable]
  implicit val XmlAdamVariableEncoder: EntityEncoder[XmlAdamVariable] = jsonEncoderOf[XmlAdamVariable]
}
