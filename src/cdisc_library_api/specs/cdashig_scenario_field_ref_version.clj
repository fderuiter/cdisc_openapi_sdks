(ns cdisc-library-api.specs.cdashig-scenario-field-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-scenario-field-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-scenario-field-ref-version-spec
  (ds/spec
    {:name ::cdashig-scenario-field-ref-version
     :spec cdashig-scenario-field-ref-version-data}))
