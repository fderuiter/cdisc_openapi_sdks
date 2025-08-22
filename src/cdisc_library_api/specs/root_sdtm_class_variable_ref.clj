(ns cdisc-library-api.specs.root-sdtm-class-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-sdtm-class-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-sdtm-class-variable-ref-spec
  (ds/spec
    {:name ::root-sdtm-class-variable-ref
     :spec root-sdtm-class-variable-ref-data}))
