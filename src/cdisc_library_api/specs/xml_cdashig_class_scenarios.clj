(ns cdisc-library-api.specs.xml-cdashig-class-scenarios
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-scenarios :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-class-scenarios-data
  {
   (ds/opt :self) cdashig-class-scenarios-spec
   })

(def xml-cdashig-class-scenarios-spec
  (ds/spec
    {:name ::xml-cdashig-class-scenarios
     :spec xml-cdashig-class-scenarios-data}))
