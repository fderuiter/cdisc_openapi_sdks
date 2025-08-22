(ns cdisc-library-api.specs.sdtmig-datasets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-datasets-links :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-datasets-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtmig-datasets-links-spec
   })

(def sdtmig-datasets-spec
  (ds/spec
    {:name ::sdtmig-datasets
     :spec sdtmig-datasets-data}))
