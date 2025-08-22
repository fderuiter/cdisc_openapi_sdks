(ns cdisc-library-api.specs.cdashig-class
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-links :refer :all]
            [cdisc-library-api.specs.cdashig-domain :refer :all]
            [cdisc-library-api.specs.cdashig-scenario :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) cdashig-class-links-spec
   (ds/opt :domains) (s/coll-of cdashig-domain-spec)
   (ds/opt :scenarios) (s/coll-of cdashig-scenario-spec)
   })

(def cdashig-class-spec
  (ds/spec
    {:name ::cdashig-class
     :spec cdashig-class-data}))
