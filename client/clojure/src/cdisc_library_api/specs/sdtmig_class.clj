(ns cdisc-library-api.specs.sdtmig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-class-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-class-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sdtmig-class-links-spec
   (ds/opt :datasets) (s/coll-of sdtmig-dataset-spec)
   })

(def sdtmig-class-spec
  (ds/spec
    {:name ::sdtmig-class
     :spec sdtmig-class-data}))
