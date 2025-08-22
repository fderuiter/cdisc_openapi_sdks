(ns cdisc-library-api.specs.cdashig-scenario-fields-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-scenario-fields-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-scenario-fields-ref-spec
  (ds/spec
    {:name ::cdashig-scenario-fields-ref
     :spec cdashig-scenario-fields-ref-data}))
