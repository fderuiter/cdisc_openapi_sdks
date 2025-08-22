(ns cdisc-library-api.specs.root-ct-term-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.ct-term-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-ct-term-links-data
  {
   (ds/opt :self) root-ct-term-ref-spec
   (ds/opt :versions) (s/coll-of ct-term-ref-version-spec)
   })

(def root-ct-term-links-spec
  (ds/spec
    {:name ::root-ct-term-links
     :spec root-ct-term-links-data}))
