(ns cdisc-library-api.specs.sdtm-classes-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-classes-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-classes-ref-spec
  (ds/spec
    {:name ::sdtm-classes-ref
     :spec sdtm-classes-ref-data}))
