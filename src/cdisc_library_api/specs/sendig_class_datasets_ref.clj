(ns cdisc-library-api.specs.sendig-class-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-class-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-class-datasets-ref-spec
  (ds/spec
    {:name ::sendig-class-datasets-ref
     :spec sendig-class-datasets-ref-data}))
