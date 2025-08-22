(ns cdisc-library-api.specs.sdtmig-classes-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-classes-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-classes-ref-spec
  (ds/spec
    {:name ::sdtmig-classes-ref
     :spec sdtmig-classes-ref-data}))
