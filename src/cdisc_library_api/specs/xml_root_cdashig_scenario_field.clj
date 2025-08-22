(ns cdisc-library-api.specs.xml-root-cdashig-scenario-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-scenario-field :refer :all]
            )
  (:import (java.io File)))


(def xml-root-cdashig-scenario-field-data
  {
   (ds/opt :self) root-cdashig-scenario-field-spec
   })

(def xml-root-cdashig-scenario-field-spec
  (ds/spec
    {:name ::xml-root-cdashig-scenario-field
     :spec xml-root-cdashig-scenario-field-data}))
