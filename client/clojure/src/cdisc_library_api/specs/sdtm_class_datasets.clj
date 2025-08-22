(ns cdisc-library-api.specs.sdtm-class-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-datasets-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sdtm-class-datasets-links-spec
   })

(def sdtm-class-datasets-spec
  (ds/spec
    {:name ::sdtm-class-datasets
     :spec sdtm-class-datasets-data}))
