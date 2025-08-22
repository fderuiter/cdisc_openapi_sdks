(ns cdisc-library-api.specs.sdtm-class-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variables-links :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-variables-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) sdtm-class-variables-links-spec
   })

(def sdtm-class-variables-spec
  (ds/spec
    {:name ::sdtm-class-variables
     :spec sdtm-class-variables-data}))
