(ns cdisc-library-api.specs.products
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.products-links :refer :all]
            )
  (:import (java.io File)))


(def products-data
  {
   (ds/opt :_links) products-links-spec
   })

(def products-spec
  (ds/spec
    {:name ::products
     :spec products-data}))
