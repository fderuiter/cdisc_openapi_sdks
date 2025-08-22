(ns cdisc-library-api.specs.sendig-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-datasets-ref-spec
  (ds/spec
    {:name ::sendig-datasets-ref
     :spec sendig-datasets-ref-data}))
