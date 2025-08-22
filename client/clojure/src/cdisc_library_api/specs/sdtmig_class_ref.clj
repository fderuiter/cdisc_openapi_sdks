(ns cdisc-library-api.specs.sdtmig-class-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-class-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-class-ref-spec
  (ds/spec
    {:name ::sdtmig-class-ref
     :spec sdtmig-class-ref-data}))
