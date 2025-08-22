(ns cdisc-library-api.specs.products-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.products-ref :refer :all]
            [cdisc-library-api.specs.productgroup-data-collection :refer :all]
            [cdisc-library-api.specs.productgroup-data-tabulation :refer :all]
            [cdisc-library-api.specs.productgroup-data-analysis :refer :all]
            [cdisc-library-api.specs.productgroup-terminology :refer :all]
            [cdisc-library-api.specs.productgroup-qrs :refer :all]
            )
  (:import (java.io File)))


(def products-links-data
  {
   (ds/opt :self) products-ref-spec
   (ds/opt :data-collection) productgroup-data-collection-spec
   (ds/opt :data-tabulation) productgroup-data-tabulation-spec
   (ds/opt :data-analysis) productgroup-data-analysis-spec
   (ds/opt :terminology) productgroup-terminology-spec
   (ds/opt :measure) productgroup-qrs-spec
   })

(def products-links-spec
  (ds/spec
    {:name ::products-links
     :spec products-links-data}))
