(ns cdisc-library-api.api.clinical-data-acquisition-standards-harmonization-cdash-
  (:require [cdisc-library-api.core :refer [call-api check-required-params with-collection-format *api-context*]]
            [clojure.spec.alpha :as s]
            [spec-tools.core :as st]
            [orchestra.core :refer [defn-spec]]
            [cdisc-library-api.specs.adam-variable-links :refer :all]
            [cdisc-library-api.specs.adam-product-datastructures :refer :all]
            [cdisc-library-api.specs.cdashig-class-links :refer :all]
            [cdisc-library-api.specs.qrs-item-ref-element :refer :all]
            [cdisc-library-api.specs.xml-adam-variable :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field :refer :all]
            [cdisc-library-api.specs.root-cdashig-scenario-field-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.export-sdtmig-workbook :refer :all]
            [cdisc-library-api.specs.adam-product :refer :all]
            [cdisc-library-api.specs.cdash-product-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-links :refer :all]
            [cdisc-library-api.specs.sendig-datasets-links :refer :all]
            [cdisc-library-api.specs.qrs-product :refer :all]
            [cdisc-library-api.specs.export-cdash-domain-variables-row :refer :all]
            [cdisc-library-api.specs.cdashig-product-links :refer :all]
            [cdisc-library-api.specs.cdashig-product-scenarios-links :refer :all]
            [cdisc-library-api.specs.xml-cdash-domain-fields :refer :all]
            [cdisc-library-api.specs.xml-root-sdtm-dataset-variable :refer :all]
            [cdisc-library-api.specs.xml-cdashig-class-scenarios :refer :all]
            [cdisc-library-api.specs.xml-sdtm-dataset-variable :refer :all]
            [cdisc-library-api.specs.xml-adam-datastructure :refer :all]
            [cdisc-library-api.specs.adam-product-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-product-domains-links :refer :all]
            [cdisc-library-api.specs.sendig-class :refer :all]
            [cdisc-library-api.specs.cdash-product :refer :all]
            [cdisc-library-api.specs.xml-about :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.xml-root-sdtm-class-variable :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.export-adam-workbook :refer :all]
            [cdisc-library-api.specs.sdtmig-class-datasets-links :refer :all]
            [cdisc-library-api.specs.adam-datastructure-variables-links :refer :all]
            [cdisc-library-api.specs.sdtmig-datasets-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-element :refer :all]
            [cdisc-library-api.specs.sdtmig-classes-ref :refer :all]
            [cdisc-library-api.specs.export-qrs-general :refer :all]
            [cdisc-library-api.specs.ct-packages :refer :all]
            [cdisc-library-api.specs.sdtmig-datasets :refer :all]
            [cdisc-library-api.specs.xml-cdashig-domain :refer :all]
            [cdisc-library-api.specs.sendig-classes-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref-version :refer :all]
            [cdisc-library-api.specs.xml-root-sendig-dataset-variable :refer :all]
            [cdisc-library-api.specs.sdtmig-classes :refer :all]
            [cdisc-library-api.specs.sdtm-class :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variables :refer :all]
            [cdisc-library-api.specs.sdtmig-datasets-links :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup-links :refer :all]
            [cdisc-library-api.specs.xml-cdashig-product :refer :all]
            [cdisc-library-api.specs.xml-ct-packages :refer :all]
            [cdisc-library-api.specs.xml-productgroup-data-tabulation :refer :all]
            [cdisc-library-api.specs.adam-varset :refer :all]
            [cdisc-library-api.specs.sdtmig-class :refer :all]
            [cdisc-library-api.specs.productgroup-data-tabulation-links :refer :all]
            [cdisc-library-api.specs.xml-cdashig-product-domains :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref-element :refer :all]
            [cdisc-library-api.specs.xml-adam-varset :refer :all]
            [cdisc-library-api.specs.productgroup-data-analysis :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.scope-values :refer :all]
            [cdisc-library-api.specs.cdash-domain-fields-links :refer :all]
            [cdisc-library-api.specs.xml-adam-product :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref-element :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-product :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-dataset :refer :all]
            [cdisc-library-api.specs.default-search-response-hits-inner :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref-element :refer :all]
            [cdisc-library-api.specs.xml-root-ct-term :refer :all]
            [cdisc-library-api.specs.xml-sendig-classes :refer :all]
            [cdisc-library-api.specs.ct-codelist-terms-ref :refer :all]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.export-ct-table :refer :all]
            [cdisc-library-api.specs.xml-sendig-class :refer :all]
            [cdisc-library-api.specs.root-cdashig-domain-field-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-element :refer :all]
            [cdisc-library-api.specs.xml-ct-package :refer :all]
            [cdisc-library-api.specs.export-qrs-items-table :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.root-cdash-class-field-links :refer :all]
            [cdisc-library-api.specs.xml-sdtm-classes :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.root-sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-links :refer :all]
            [cdisc-library-api.specs.lastupdated-ref :refer :all]
            [cdisc-library-api.specs.xml-root-cdashig-scenario-field :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.xml-root-ct-codelist :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-links :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-links :refer :all]
            [cdisc-library-api.specs.export-sdtm-workbook :refer :all]
            [cdisc-library-api.specs.xml-sendig-dataset :refer :all]
            [cdisc-library-api.specs.ct-package-codelists-links :refer :all]
            [cdisc-library-api.specs.cdashig-class-scenarios :refer :all]
            [cdisc-library-api.specs.sdtmig-product-links :refer :all]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            [cdisc-library-api.specs.about-links :refer :all]
            [cdisc-library-api.specs.sendig-classes :refer :all]
            [cdisc-library-api.specs.xml-ct-codelist :refer :all]
            [cdisc-library-api.specs.xml-cdash-class-domains :refer :all]
            [cdisc-library-api.specs.adam-variable-ref :refer :all]
            [cdisc-library-api.specs.xml-cdashig-domain-field :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-class :refer :all]
            [cdisc-library-api.specs.root-sdtm-dataset-variable :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-dataset-variable :refer :all]
            [cdisc-library-api.specs.sendig-product :refer :all]
            [cdisc-library-api.specs.root-ct-term :refer :all]
            [cdisc-library-api.specs.xml-sdtm-class-variables :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-links :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-links :refer :all]
            [cdisc-library-api.specs.cdash-class :refer :all]
            [cdisc-library-api.specs.adam-varset-ref :refer :all]
            [cdisc-library-api.specs.export-sendig-variables-table :refer :all]
            [cdisc-library-api.specs.xml-cdash-domain-field :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable :refer :all]
            [cdisc-library-api.specs.export-sdtm-class-variables-row :refer :all]
            [cdisc-library-api.specs.export-sdtm-variables-table :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variables :refer :all]
            [cdisc-library-api.specs.qrs-product-links :refer :all]
            [cdisc-library-api.specs.xml-root-cdash-domain-field :refer :all]
            [cdisc-library-api.specs.cdashig-domain-fields-links :refer :all]
            [cdisc-library-api.specs.xml-root-cdashig-domain-field :refer :all]
            [cdisc-library-api.specs.ct-term-links :refer :all]
            [cdisc-library-api.specs.products-links :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref-version :refer :all]
            [cdisc-library-api.specs.ct-package-codelists-ref :refer :all]
            [cdisc-library-api.specs.export-sendig-datasets-table :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-dataset-variables :refer :all]
            [cdisc-library-api.specs.productgroup-qrs :refer :all]
            [cdisc-library-api.specs.products :refer :all]
            [cdisc-library-api.specs.ct-codelist-terms :refer :all]
            [cdisc-library-api.specs.cdash-domain-field :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref-version :refer :all]
            [cdisc-library-api.specs.root-cdash-domain-field-links :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.qrs-responsegroups-ref :refer :all]
            [cdisc-library-api.specs.ct-term-ref-element :refer :all]
            [cdisc-library-api.specs.sendig-datasets-ref :refer :all]
            [cdisc-library-api.specs.health :refer :all]
            [cdisc-library-api.specs.ct-packages-links :refer :all]
            [cdisc-library-api.specs.root-ct-term-links :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref-element :refer :all]
            [cdisc-library-api.specs.xml-cdashig-class :refer :all]
            [cdisc-library-api.specs.xml-qrs-responsegroups :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field :refer :all]
            [cdisc-library-api.specs.qrs-responses :refer :all]
            [cdisc-library-api.specs.root-cdashig-scenario-field :refer :all]
            [cdisc-library-api.specs.xml-ct-codelist-terms :refer :all]
            [cdisc-library-api.specs.cdashig-product-scenarios :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-links :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-fields-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref-element :refer :all]
            [cdisc-library-api.specs.sendig-product-links :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref :refer :all]
            [cdisc-library-api.specs.export-qrs-workbook-items-row :refer :all]
            [cdisc-library-api.specs.xml-products :refer :all]
            [cdisc-library-api.specs.xml-cdash-product-classes :refer :all]
            [cdisc-library-api.specs.qrs-items-links :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref-version :refer :all]
            [cdisc-library-api.specs.adam-datastructure-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-class-domains-links :refer :all]
            [cdisc-library-api.specs.cdash-domain :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-scenario :refer :all]
            [cdisc-library-api.specs.sendig-class-datasets-links :refer :all]
            [cdisc-library-api.specs.cdashig-domain-fields :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-ref-element :refer :all]
            [cdisc-library-api.specs.root-sendig-dataset-variable :refer :all]
            [cdisc-library-api.specs.xml-productgroup-data-analysis :refer :all]
            [cdisc-library-api.specs.export-sdtmig-datasets-row :refer :all]
            [cdisc-library-api.specs.xml-productgroup-terminology :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-links :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.xml-sendig-class-datasets :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.xml-cdashig-product-classes :refer :all]
            [cdisc-library-api.specs.xml-cdashig-scenario-field :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref-element :refer :all]
            [cdisc-library-api.specs.sdtm-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.export-sdtmig-variables-table :refer :all]
            [cdisc-library-api.specs.export-adam-variables-table :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.root-sdtm-class-variable :refer :all]
            [cdisc-library-api.specs.products-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-scenarios-links :refer :all]
            [cdisc-library-api.specs.sdtm-classes-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.ct-term :refer :all]
            [cdisc-library-api.specs.xml-cdashig-scenario :refer :all]
            [cdisc-library-api.specs.cdashig-product-classes-links :refer :all]
            [cdisc-library-api.specs.xml-sdtm-class-variable :refer :all]
            [cdisc-library-api.specs.export-ct-term :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.productgroup-data-analysis-links :refer :all]
            [cdisc-library-api.specs.export-sdtm-datasets-row :refer :all]
            [cdisc-library-api.specs.sendig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.productgroup-data-tabulation :refer :all]
            [cdisc-library-api.specs.sdtm-class-variables :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.ct-packages-ref :refer :all]
            [cdisc-library-api.specs.export-sdtm-dataset-variables-row :refer :all]
            [cdisc-library-api.specs.export-sendig-datasets-row :refer :all]
            [cdisc-library-api.specs.xml-qrs-item :refer :all]
            [cdisc-library-api.specs.adam-datastructure-varsets :refer :all]
            [cdisc-library-api.specs.root-sdtm-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.qrs-responsegroups :refer :all]
            [cdisc-library-api.specs.cdash-product-domains-ref :refer :all]
            [cdisc-library-api.specs.about :refer :all]
            [cdisc-library-api.specs.sdtm-class-variables-links :refer :all]
            [cdisc-library-api.specs.qrs-items :refer :all]
            [cdisc-library-api.specs.sdtmig-class-datasets :refer :all]
            [cdisc-library-api.specs.sdtmig-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.root-sendig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.export-qrs-responses :refer :all]
            [cdisc-library-api.specs.sendig-dataset :refer :all]
            [cdisc-library-api.specs.export-cdashig-table :refer :all]
            [cdisc-library-api.specs.xml-ct-package-codelists :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-fields :refer :all]
            [cdisc-library-api.specs.sdtm-product :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.default-search-scopes :refer :all]
            [cdisc-library-api.specs.sdtmig-product :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-links :refer :all]
            [cdisc-library-api.specs.export-adam-datastructures-row :refer :all]
            [cdisc-library-api.specs.cdash-class-field-ref-version :refer :all]
            [cdisc-library-api.specs.cdashig-class-domains-links :refer :all]
            [cdisc-library-api.specs.root-sdtm-class-variable-links :refer :all]
            [cdisc-library-api.specs.export-cdash-table :refer :all]
            [cdisc-library-api.specs.about-ref :refer :all]
            [cdisc-library-api.specs.xml-adam-product-datastructures :refer :all]
            [cdisc-library-api.specs.xml-lastupdated :refer :all]
            [cdisc-library-api.specs.adam-datastructure-variables :refer :all]
            [cdisc-library-api.specs.cdashig-class-domains :refer :all]
            [cdisc-library-api.specs.xml-qrs-items :refer :all]
            [cdisc-library-api.specs.root-cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.xml-cdashig-scenario-fields :refer :all]
            [cdisc-library-api.specs.qrs-item :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variables-links :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-classes :refer :all]
            [cdisc-library-api.specs.adam-varset-ref-element :refer :all]
            [cdisc-library-api.specs.xml-qrs-responsegroup :refer :all]
            [cdisc-library-api.specs.lastupdated :refer :all]
            [cdisc-library-api.specs.adam-variable :refer :all]
            [cdisc-library-api.specs.xml-sendig-dataset-variable :refer :all]
            [cdisc-library-api.specs.cdash-class-domains :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variables-ref :refer :all]
            [cdisc-library-api.specs.productgroup-terminology-links :refer :all]
            [cdisc-library-api.specs.cdash-product-classes :refer :all]
            [cdisc-library-api.specs.xml-cdash-product :refer :all]
            [cdisc-library-api.specs.xml-sdtm-datasets :refer :all]
            [cdisc-library-api.specs.cdashig-class :refer :all]
            [cdisc-library-api.specs.xml-sendig-datasets :refer :all]
            [cdisc-library-api.specs.cdashig-domain :refer :all]
            [cdisc-library-api.specs.ct-package-ref-element :refer :all]
            [cdisc-library-api.specs.adam-datastructure :refer :all]
            [cdisc-library-api.specs.root-ct-codelist :refer :all]
            [cdisc-library-api.specs.adam-product-datastructures-links :refer :all]
            [cdisc-library-api.specs.qrs-item-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-ref :refer :all]
            [cdisc-library-api.specs.maintenance-body :refer :all]
            [cdisc-library-api.specs.xml-sdtm-dataset-variables :refer :all]
            [cdisc-library-api.specs.qrs-items-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-links :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable :refer :all]
            [cdisc-library-api.specs.sendig-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.-mdr-search-scopes-get-200-response :refer :all]
            [cdisc-library-api.specs.xml-sdtm-dataset :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-version :refer :all]
            [cdisc-library-api.specs.xml-sendig-product :refer :all]
            [cdisc-library-api.specs.cdashig-product-domains-ref :refer :all]
            [cdisc-library-api.specs.export-sdtmig-variables-row :refer :all]
            [cdisc-library-api.specs.adam-product-links :refer :all]
            [cdisc-library-api.specs.ct-term-ref :refer :all]
            [cdisc-library-api.specs.root-cdash-class-field :refer :all]
            [cdisc-library-api.specs.productgroup-data-collection-links :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref-element :refer :all]
            [cdisc-library-api.specs.xml-cdashig-domain-fields :refer :all]
            [cdisc-library-api.specs.cdashig-product-classes :refer :all]
            [cdisc-library-api.specs.xml-sdtm-product :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-version :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-ref-element :refer :all]
            [cdisc-library-api.specs.qrs-responsegroups-links :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-links :refer :all]
            [cdisc-library-api.specs.export-ct-codelist :refer :all]
            [cdisc-library-api.specs.cdashig-product-domains-links :refer :all]
            [cdisc-library-api.specs.export-adam-datastructures-table :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.xml-root-sdtmig-dataset-variable :refer :all]
            [cdisc-library-api.specs.sendig-class-datasets :refer :all]
            [cdisc-library-api.specs.export-sdtm-datasets-table :refer :all]
            [cdisc-library-api.specs.adam-variable-ref-element :refer :all]
            [cdisc-library-api.specs.productgroup-data-collection :refer :all]
            [cdisc-library-api.specs.cdashig-product :refer :all]
            [cdisc-library-api.specs.root-cdash-domain-field :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-fields-links :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-datasets :refer :all]
            [cdisc-library-api.specs.sendig-product-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref-element :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.sdtm-datasets-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-links :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable :refer :all]
            [cdisc-library-api.specs.xml-cdash-domain :refer :all]
            [cdisc-library-api.specs.root-sendig-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.xml-sdtm-class :refer :all]
            [cdisc-library-api.specs.cdash-product-classes-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-links :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref-element :refer :all]
            [cdisc-library-api.specs.root-cdashig-domain-field :refer :all]
            [cdisc-library-api.specs.sdtm-datasets :refer :all]
            [cdisc-library-api.specs.cdashig-class-domains-ref :refer :all]
            [cdisc-library-api.specs.qrs-responsegroup-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref-element :refer :all]
            [cdisc-library-api.specs.xml-sdtmig-class-datasets :refer :all]
            [cdisc-library-api.specs.ct-package :refer :all]
            [cdisc-library-api.specs.xml-ct-term :refer :all]
            [cdisc-library-api.specs.root-cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.xml-productgroup-data-collection :refer :all]
            [cdisc-library-api.specs.export-cdash-class-variables-row :refer :all]
            [cdisc-library-api.specs.cdash-domain-fields :refer :all]
            [cdisc-library-api.specs.xml-cdash-product-domains :refer :all]
            [cdisc-library-api.specs.sdtm-dataset :refer :all]
            [cdisc-library-api.specs.xml-adam-datastructure-varsets :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref-element :refer :all]
            [cdisc-library-api.specs.export-qrs-workbook :refer :all]
            [cdisc-library-api.specs.lastupdated-links :refer :all]
            [cdisc-library-api.specs.adam-datastructure-varsets-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable :refer :all]
            [cdisc-library-api.specs.sdtm-class-datasets-links :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variables-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-variables-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref-element :refer :all]
            [cdisc-library-api.specs.ct-codelist-terms-links :refer :all]
            [cdisc-library-api.specs.default-error-response :refer :all]
            [cdisc-library-api.specs.adam-datastructure-varsets-links :refer :all]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-variable-ref-version :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-target :refer :all]
            [cdisc-library-api.specs.ct-codelist-links :refer :all]
            [cdisc-library-api.specs.sendig-classes-links :refer :all]
            [cdisc-library-api.specs.xml-cdash-class-field :refer :all]
            [cdisc-library-api.specs.export-sendig-workbook :refer :all]
            [cdisc-library-api.specs.adam-product-datastructures-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-links :refer :all]
            [cdisc-library-api.specs.productgroup-terminology :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-links :refer :all]
            [cdisc-library-api.specs.cdash-class-field :refer :all]
            [cdisc-library-api.specs.qrs-product-ref :refer :all]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.root-sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.export-qrs-csv-items-row :refer :all]
            [cdisc-library-api.specs.cdashig-class-scenarios-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-fields-ref :refer :all]
            [cdisc-library-api.specs.ct-term-ref-version :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref :refer :all]
            [cdisc-library-api.specs.qrs-response-links :refer :all]
            [cdisc-library-api.specs.xml-root-cdash-class-field :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-target :refer :all]
            [cdisc-library-api.specs.default-search-response :refer :all]
            [cdisc-library-api.specs.root-cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref :refer :all]
            [cdisc-library-api.specs.xml-qrs-product :refer :all]
            [cdisc-library-api.specs.xml-sendig-dataset-variables :refer :all]
            [cdisc-library-api.specs.sdtmig-classes-links :refer :all]
            [cdisc-library-api.specs.sendig-datasets :refer :all]
            [cdisc-library-api.specs.cdash-product-ref-element :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variables-links :refer :all]
            [cdisc-library-api.specs.xml-cdash-class :refer :all]
            [cdisc-library-api.specs.xml-cdashig-product-scenarios :refer :all]
            [cdisc-library-api.specs.export-adam-variables-row :refer :all]
            [cdisc-library-api.specs.cdashig-domain-fields-ref :refer :all]
            [cdisc-library-api.specs.root-cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-classes-ref :refer :all]
            [cdisc-library-api.specs.qrs-ref-element :refer :all]
            [cdisc-library-api.specs.productgroup-qrs-links :refer :all]
            [cdisc-library-api.specs.sdtm-class-datasets :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.ct-package-term :refer :all]
            [cdisc-library-api.specs.xml-adam-datastructure-variables :refer :all]
            [cdisc-library-api.specs.xml-sdtm-class-datasets :refer :all]
            [cdisc-library-api.specs.adam-varset-links :refer :all]
            [cdisc-library-api.specs.xml-cdashig-class-domains :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref-element :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-version :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.export-cdashig-scenario-variables-row :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-target :refer :all]
            [cdisc-library-api.specs.sendig-class-links :refer :all]
            [cdisc-library-api.specs.cdashig-product-domains :refer :all]
            [cdisc-library-api.specs.export-cdashig-domain-variables-row :refer :all]
            [cdisc-library-api.specs.sdtm-classes-links :refer :all]
            [cdisc-library-api.specs.sdtm-classes :refer :all]
            [cdisc-library-api.specs.cdash-product-domains :refer :all]
            [cdisc-library-api.specs.cdash-class-field-links :refer :all]
            [cdisc-library-api.specs.cdashig-product-scenarios-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-qualifies :refer :all]
            [cdisc-library-api.specs.export-sendig-variables-row :refer :all]
            [cdisc-library-api.specs.sdtm-datasets-links :refer :all]
            [cdisc-library-api.specs.root-sdtmig-dataset-variable-links :refer :all]
            [cdisc-library-api.specs.ct-package-links :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variables :refer :all]
            [cdisc-library-api.specs.export-sdtmig-datasets-table :refer :all]
            [cdisc-library-api.specs.cdash-class-domains-ref :refer :all]
            [cdisc-library-api.specs.ct-package-codelists :refer :all]
            )
  (:import (java.io File)))


(defn-spec mdr-cdash-version-classes-class-domains-get-with-http-info any?
  "
  Get CDASH Class Domain List"
  [version string?, class string?]
  (check-required-params version class)
  (call-api "/mdr/cdash/{version}/classes/{class}/domains" :get
            {:path-params   {"version" version "class" class }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-classes-class-domains-get cdash-class-domains-spec
  "
  Get CDASH Class Domain List"
  [version string?, class string?]
  (let [res (:data (mdr-cdash-version-classes-class-domains-get-with-http-info version class))]
    (if (:decode-models *api-context*)
       (st/decode cdash-class-domains-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-classes-class-fields-field-get-with-http-info any?
  "
  Get CDASH Class Field"
  [version string?, class string?, field string?]
  (check-required-params version class field)
  (call-api "/mdr/cdash/{version}/classes/{class}/fields/{field}" :get
            {:path-params   {"version" version "class" class "field" field }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-classes-class-fields-field-get cdash-class-field-spec
  "
  Get CDASH Class Field"
  [version string?, class string?, field string?]
  (let [res (:data (mdr-cdash-version-classes-class-fields-field-get-with-http-info version class field))]
    (if (:decode-models *api-context*)
       (st/decode cdash-class-field-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-classes-class-get-with-http-info any?
  "
  Get CDASH Class"
  [version string?, class string?]
  (check-required-params version class)
  (call-api "/mdr/cdash/{version}/classes/{class}" :get
            {:path-params   {"version" version "class" class }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-classes-class-get cdash-class-spec
  "
  Get CDASH Class"
  [version string?, class string?]
  (let [res (:data (mdr-cdash-version-classes-class-get-with-http-info version class))]
    (if (:decode-models *api-context*)
       (st/decode cdash-class-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-classes-get-with-http-info any?
  "
  Get CDASH Class List"
  [version string?]
  (check-required-params version)
  (call-api "/mdr/cdash/{version}/classes" :get
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-classes-get cdash-product-classes-spec
  "
  Get CDASH Class List"
  [version string?]
  (let [res (:data (mdr-cdash-version-classes-get-with-http-info version))]
    (if (:decode-models *api-context*)
       (st/decode cdash-product-classes-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-domains-domain-fields-field-get-with-http-info any?
  "
  Get CDASH Domain Field"
  [version string?, domain string?, field string?]
  (check-required-params version domain field)
  (call-api "/mdr/cdash/{version}/domains/{domain}/fields/{field}" :get
            {:path-params   {"version" version "domain" domain "field" field }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-domains-domain-fields-field-get cdash-domain-field-spec
  "
  Get CDASH Domain Field"
  [version string?, domain string?, field string?]
  (let [res (:data (mdr-cdash-version-domains-domain-fields-field-get-with-http-info version domain field))]
    (if (:decode-models *api-context*)
       (st/decode cdash-domain-field-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-domains-domain-fields-get-with-http-info any?
  "
  Get CDASH Domain Field List"
  [version string?, domain string?]
  (check-required-params version domain)
  (call-api "/mdr/cdash/{version}/domains/{domain}/fields" :get
            {:path-params   {"version" version "domain" domain }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-domains-domain-fields-get cdash-domain-fields-spec
  "
  Get CDASH Domain Field List"
  [version string?, domain string?]
  (let [res (:data (mdr-cdash-version-domains-domain-fields-get-with-http-info version domain))]
    (if (:decode-models *api-context*)
       (st/decode cdash-domain-fields-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-domains-domain-get-with-http-info any?
  "
  Get CDASH Domain"
  [version string?, domain string?]
  (check-required-params version domain)
  (call-api "/mdr/cdash/{version}/domains/{domain}" :get
            {:path-params   {"version" version "domain" domain }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-domains-domain-get cdash-domain-spec
  "
  Get CDASH Domain"
  [version string?, domain string?]
  (let [res (:data (mdr-cdash-version-domains-domain-get-with-http-info version domain))]
    (if (:decode-models *api-context*)
       (st/decode cdash-domain-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-domains-get-with-http-info any?
  "
  Get CDASH Domain List"
  [version string?]
  (check-required-params version)
  (call-api "/mdr/cdash/{version}/domains" :get
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-domains-get cdash-product-domains-spec
  "
  Get CDASH Domain List"
  [version string?]
  (let [res (:data (mdr-cdash-version-domains-get-with-http-info version))]
    (if (:decode-models *api-context*)
       (st/decode cdash-product-domains-spec res st/string-transformer)
       res)))


(defn-spec mdr-cdash-version-get-with-http-info any?
  "
  Get CDASH Product"
  [version string?]
  (check-required-params version)
  (call-api "/mdr/cdash/{version}" :get
            {:path-params   {"version" version }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml" "text/csv" "application/vnd.ms-excel" "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-cdash-version-get cdash-product-spec
  "
  Get CDASH Product"
  [version string?]
  (let [res (:data (mdr-cdash-version-get-with-http-info version))]
    (if (:decode-models *api-context*)
       (st/decode cdash-product-spec res st/string-transformer)
       res)))


(defn-spec mdr-root-cdash-classes-class-fields-field-get-with-http-info any?
  "
  Get Root CDASH Class Field"
  [class string?, field string?]
  (check-required-params class field)
  (call-api "/mdr/root/cdash/classes/{class}/fields/{field}" :get
            {:path-params   {"class" class "field" field }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-root-cdash-classes-class-fields-field-get root-cdash-class-field-spec
  "
  Get Root CDASH Class Field"
  [class string?, field string?]
  (let [res (:data (mdr-root-cdash-classes-class-fields-field-get-with-http-info class field))]
    (if (:decode-models *api-context*)
       (st/decode root-cdash-class-field-spec res st/string-transformer)
       res)))


(defn-spec mdr-root-cdash-domains-domain-fields-field-get-with-http-info any?
  "
  Get Root CDASH Domain Field"
  [domain string?, field string?]
  (check-required-params domain field)
  (call-api "/mdr/root/cdash/domains/{domain}/fields/{field}" :get
            {:path-params   {"domain" domain "field" field }
             :header-params {}
             :query-params  {}
             :form-params   {}
             :content-types []
             :accepts       ["application/json" "application/xml"]
             :auth-names    ["basicAuth"]}))

(defn-spec mdr-root-cdash-domains-domain-fields-field-get root-cdash-domain-field-spec
  "
  Get Root CDASH Domain Field"
  [domain string?, field string?]
  (let [res (:data (mdr-root-cdash-domains-domain-fields-field-get-with-http-info domain field))]
    (if (:decode-models *api-context*)
       (st/decode root-cdash-domain-field-spec res st/string-transformer)
       res)))


