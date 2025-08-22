(ns cdisc-library-api.specs.sdtmig-class-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-class-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-class-ref-element-spec
  (ds/spec
    {:name ::sdtmig-class-ref-element
     :spec sdtmig-class-ref-element-data}))
