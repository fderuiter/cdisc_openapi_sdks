(ns cdisc-library-api.specs.xml-cdashig-scenario
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-scenario-data
  {
   (ds/opt :self) cdashig-scenario-spec
   })

(def xml-cdashig-scenario-spec
  (ds/spec
    {:name ::xml-cdashig-scenario
     :spec xml-cdashig-scenario-data}))
