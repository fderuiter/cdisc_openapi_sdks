(ns cdisc-library-api.specs.root-sendig-dataset-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-sendig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref-version :refer :all]
            )
  (:import (java.io File)))


(def root-sendig-dataset-variable-links-data
  {
   (ds/opt :self) root-sendig-dataset-variable-ref-spec
   (ds/opt :versions) (s/coll-of sendig-dataset-variable-ref-version-spec)
   })

(def root-sendig-dataset-variable-links-spec
  (ds/spec
    {:name ::root-sendig-dataset-variable-links
     :spec root-sendig-dataset-variable-links-data}))
