(ns cdisc-library-api.specs.cdashig-class-scenarios-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-class-scenarios-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-class-scenarios-ref-spec
  (ds/spec
    {:name ::cdashig-class-scenarios-ref
     :spec cdashig-class-scenarios-ref-data}))
