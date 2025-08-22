(ns cdisc-library-api.specs.about-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def about-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def about-ref-spec
  (ds/spec
    {:name ::about-ref
     :spec about-ref-data}))
