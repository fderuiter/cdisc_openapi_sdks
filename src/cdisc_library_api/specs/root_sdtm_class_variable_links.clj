(ns cdisc-library-api.specs.root-sdtm-class-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-sdtm-class-variable-links-data
  {
   (ds/opt :self) root-sdtm-class-variable-ref-spec
   (ds/opt :versions) (s/coll-of sdtm-class-variable-ref-version-spec)
   })

(def root-sdtm-class-variable-links-spec
  (ds/spec
    {:name ::root-sdtm-class-variable-links
     :spec root-sdtm-class-variable-links-data}))
