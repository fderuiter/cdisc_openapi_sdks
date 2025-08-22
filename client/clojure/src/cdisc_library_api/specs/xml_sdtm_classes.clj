(ns cdisc-library-api.specs.xml-sdtm-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-classes :refer :all]
            )
  (:import (java.io File)))


(def xml-sdtm-classes-data
  {
   (ds/opt :self) sdtm-classes-spec
   })

(def xml-sdtm-classes-spec
  (ds/spec
    {:name ::xml-sdtm-classes
     :spec xml-sdtm-classes-data}))
