(ns cdisc-library-api.specs.xml-root-sdtm-class-variable
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-class-variable :refer :all]
            )
  (:import (java.io File)))


(def xml-root-sdtm-class-variable-data
  {
   (ds/opt :self) root-sdtm-class-variable-spec
   })

(def xml-root-sdtm-class-variable-spec
  (ds/spec
    {:name ::xml-root-sdtm-class-variable
     :spec xml-root-sdtm-class-variable-data}))
