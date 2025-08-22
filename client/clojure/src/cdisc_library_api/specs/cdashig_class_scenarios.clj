(ns cdisc-library-api.specs.cdashig-class-scenarios
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-scenarios-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-scenarios-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) cdashig-class-scenarios-links-spec
   })

(def cdashig-class-scenarios-spec
  (ds/spec
    {:name ::cdashig-class-scenarios
     :spec cdashig-class-scenarios-data}))
