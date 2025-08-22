(ns cdisc-library-api.specs.sendig-classes-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-classes-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-classes-ref-spec
  (ds/spec
    {:name ::sendig-classes-ref
     :spec sendig-classes-ref-data}))
