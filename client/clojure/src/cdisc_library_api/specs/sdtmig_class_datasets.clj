(ns cdisc-library-api.specs.sdtmig-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-class-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-class-datasets-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sdtmig-class-datasets-links-spec
   })

(def sdtmig-class-datasets-spec
  (ds/spec
    {:name ::sdtmig-class-datasets
     :spec sdtmig-class-datasets-data}))
