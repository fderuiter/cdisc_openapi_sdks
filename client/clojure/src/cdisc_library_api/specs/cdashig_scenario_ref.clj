(ns cdisc-library-api.specs.cdashig-scenario-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-scenario-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-scenario-ref-spec
  (ds/spec
    {:name ::cdashig-scenario-ref
     :spec cdashig-scenario-ref-data}))
