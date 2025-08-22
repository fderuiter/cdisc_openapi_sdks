(ns cdisc-library-api.specs.sdtm-class-variables-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-variables-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-variables-ref-spec
  (ds/spec
    {:name ::sdtm-class-variables-ref
     :spec sdtm-class-variables-ref-data}))
