(ns cdisc-library-api.specs.productgroup-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def productgroup-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def productgroup-ref-spec
  (ds/spec
    {:name ::productgroup-ref
     :spec productgroup-ref-data}))
