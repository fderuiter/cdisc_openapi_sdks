(ns cdisc-library-api.specs.xml-ct-codelist
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-codelist-data
  {
   (ds/opt :self) ct-codelist-spec
   })

(def xml-ct-codelist-spec
  (ds/spec
    {:name ::xml-ct-codelist
     :spec xml-ct-codelist-data}))
