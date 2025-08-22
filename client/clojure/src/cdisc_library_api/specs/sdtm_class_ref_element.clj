(ns cdisc-library-api.specs.sdtm-class-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-ref-element-spec
  (ds/spec
    {:name ::sdtm-class-ref-element
     :spec sdtm-class-ref-element-data}))
