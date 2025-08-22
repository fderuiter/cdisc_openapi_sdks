(ns cdisc-library-api.specs.root-ct-codelist
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-codelist-links :refer :all]
            )
  (:import (java.io File)))


(def root-ct-codelist-data
  {
   (ds/opt :_links) root-ct-codelist-links-spec
   })

(def root-ct-codelist-spec
  (ds/spec
    {:name ::root-ct-codelist
     :spec root-ct-codelist-data}))
