(ns cdisc-library-api.specs.maintenance-body
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def maintenance-body-data
  {
   (ds/opt :maintenanceMode) boolean?
   (ds/opt :maintenanceMessage) string?
   })

(def maintenance-body-spec
  (ds/spec
    {:name ::maintenance-body
     :spec maintenance-body-data}))
