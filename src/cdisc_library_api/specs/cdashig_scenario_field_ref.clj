(ns cdisc-library-api.specs.cdashig-scenario-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-scenario-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-scenario-field-ref-spec
  (ds/spec
    {:name ::cdashig-scenario-field-ref
     :spec cdashig-scenario-field-ref-data}))
