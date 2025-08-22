(ns cdisc-library-api.specs.sdtmig-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-classes-links :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-classes-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtmig-classes-links-spec
   })

(def sdtmig-classes-spec
  (ds/spec
    {:name ::sdtmig-classes
     :spec sdtmig-classes-data}))
