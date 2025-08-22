(ns cdisc-library-api.specs.root-ct-codelist-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-ct-codelist-links-data
  {
   (ds/opt :self) root-ct-codelist-ref-spec
   (ds/opt :versions) (s/coll-of ct-codelist-ref-version-spec)
   })

(def root-ct-codelist-links-spec
  (ds/spec
    {:name ::root-ct-codelist-links
     :spec root-ct-codelist-links-data}))
