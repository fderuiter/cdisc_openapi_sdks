(ns cdisc-library-api.specs.sdtm-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-datasets-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtm-datasets-links-spec
   })

(def sdtm-datasets-spec
  (ds/spec
    {:name ::sdtm-datasets
     :spec sdtm-datasets-data}))
