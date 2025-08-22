(ns cdisc-library-api.specs.sdtm-class-datasets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-class-datasets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-class-datasets-ref-spec
  (ds/spec
    {:name ::sdtm-class-datasets-ref
     :spec sdtm-class-datasets-ref-data}))
