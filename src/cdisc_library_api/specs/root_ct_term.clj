(ns cdisc-library-api.specs.root-ct-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-term-links :refer :all]
            )
  (:import (java.io File)))


(def root-ct-term-data
  {
   (ds/opt :_links) root-ct-term-links-spec
   })

(def root-ct-term-spec
  (ds/spec
    {:name ::root-ct-term
     :spec root-ct-term-data}))
