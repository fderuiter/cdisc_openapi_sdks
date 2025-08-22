(ns cdisc-library-api.specs.sendig-class-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-class-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-class-ref-spec
  (ds/spec
    {:name ::sendig-class-ref
     :spec sendig-class-ref-data}))
