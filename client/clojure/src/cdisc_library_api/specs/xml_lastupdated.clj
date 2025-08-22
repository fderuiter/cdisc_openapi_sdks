(ns cdisc-library-api.specs.xml-lastupdated
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.lastupdated :refer :all]
            )
  (:import (java.io File)))


(def xml-lastupdated-data
  {
   (ds/opt :self) lastupdated-spec
   })

(def xml-lastupdated-spec
  (ds/spec
    {:name ::xml-lastupdated
     :spec xml-lastupdated-data}))
