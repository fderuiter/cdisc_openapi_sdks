(ns cdisc-library-api.specs.health
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def health-data
  {
   (ds/opt :healthy) boolean?
   (ds/opt :ldapAuthenticationHealthy) boolean?
   (ds/opt :ldapAuthorizationHealthy) boolean?
   (ds/opt :databaseHealthy) boolean?
   (ds/opt :esHealthy) boolean?
   })

(def health-spec
  (ds/spec
    {:name ::health
     :spec health-data}))
