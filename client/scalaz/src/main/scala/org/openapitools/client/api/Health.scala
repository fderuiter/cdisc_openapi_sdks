package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Health._

case class Health (
  healthy: Option[Boolean],
ldapAuthenticationHealthy: Option[Boolean],
ldapAuthorizationHealthy: Option[Boolean],
databaseHealthy: Option[Boolean],
esHealthy: Option[Boolean])

object Health {
  import DateTimeCodecs._

  implicit val HealthCodecJson: CodecJson[Health] = CodecJson.derive[Health]
  implicit val HealthDecoder: EntityDecoder[Health] = jsonOf[Health]
  implicit val HealthEncoder: EntityEncoder[Health] = jsonEncoderOf[Health]
}
