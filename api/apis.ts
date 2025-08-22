export * from './analysisDataModelAndImplementationGuideADaMAndADaMIGApi';
import { AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi } from './analysisDataModelAndImplementationGuideADaMAndADaMIGApi';
export * from './cDASHImplementationGuideCDASHIGApi';
import { CDASHImplementationGuideCDASHIGApi } from './cDASHImplementationGuideCDASHIGApi';
export * from './clinicalDataAcquisitionStandardsHarmonizationCDASHApi';
import { ClinicalDataAcquisitionStandardsHarmonizationCDASHApi } from './clinicalDataAcquisitionStandardsHarmonizationCDASHApi';
export * from './controlledTerminologyCTApi';
import { ControlledTerminologyCTApi } from './controlledTerminologyCTApi';
export * from './defaultApi';
import { DefaultApi } from './defaultApi';
export * from './measuresApi';
import { MeasuresApi } from './measuresApi';
export * from './sDTMImplementationGuideSDTMIGApi';
import { SDTMImplementationGuideSDTMIGApi } from './sDTMImplementationGuideSDTMIGApi';
export * from './sENDImplementationGuideSENDIGApi';
import { SENDImplementationGuideSENDIGApi } from './sENDImplementationGuideSENDIGApi';
export * from './searchesApi';
import { SearchesApi } from './searchesApi';
export * from './statusesApi';
import { StatusesApi } from './statusesApi';
export * from './studyDataTabulationModelSDTMApi';
import { StudyDataTabulationModelSDTMApi } from './studyDataTabulationModelSDTMApi';
import * as http from 'http';

export class HttpError extends Error {
    constructor (public response: http.IncomingMessage, public body: any, public statusCode?: number) {
        super('HTTP request failed');
        this.name = 'HttpError';
    }
}

export { RequestFile } from '../model/models';

export const APIS = [AnalysisDataModelAndImplementationGuideADaMAndADaMIGApi, CDASHImplementationGuideCDASHIGApi, ClinicalDataAcquisitionStandardsHarmonizationCDASHApi, ControlledTerminologyCTApi, DefaultApi, MeasuresApi, SDTMImplementationGuideSDTMIGApi, SENDImplementationGuideSENDIGApi, SearchesApi, StatusesApi, StudyDataTabulationModelSDTMApi];
