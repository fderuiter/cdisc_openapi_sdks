(ns cdisc-library-api.specs.sendig-class-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-class-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-class-ref-element-spec
  (ds/spec
    {:name ::sendig-class-ref-element
     :spec sendig-class-ref-element-data}))
