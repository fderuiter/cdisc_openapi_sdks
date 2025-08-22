(ns cdisc-library-api.specs.sdtm-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-classes-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-classes-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtm-classes-links-spec
   })

(def sdtm-classes-spec
  (ds/spec
    {:name ::sdtm-classes
     :spec sdtm-classes-data}))
