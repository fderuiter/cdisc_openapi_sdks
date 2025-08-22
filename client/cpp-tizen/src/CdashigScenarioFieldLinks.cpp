#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigScenarioFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigScenarioFieldLinks::CdashigScenarioFieldLinks()
{
	//__init();
}

CdashigScenarioFieldLinks::~CdashigScenarioFieldLinks()
{
	//__cleanup();
}

void
CdashigScenarioFieldLinks::__init()
{
	//self = new CdashigScenarioFieldRef();
	//new std::list()std::list> codelist;
	//parentProduct = new CdashigProductRef();
	//parentDomain = new CdashigDomainRef();
	//parentScenario = new CdashigScenarioRef();
	//rootItem = new RootCdashigScenarioFieldRef();
	//priorVersion = new CdashigScenarioFieldRef();
	//new std::list()std::list> sdtmigDatasetMappingTargets;
}

void
CdashigScenarioFieldLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(codelist != NULL) {
	//codelist.RemoveAll(true);
	//delete codelist;
	//codelist = NULL;
	//}
	//if(parentProduct != NULL) {
	//
	//delete parentProduct;
	//parentProduct = NULL;
	//}
	//if(parentDomain != NULL) {
	//
	//delete parentDomain;
	//parentDomain = NULL;
	//}
	//if(parentScenario != NULL) {
	//
	//delete parentScenario;
	//parentScenario = NULL;
	//}
	//if(rootItem != NULL) {
	//
	//delete rootItem;
	//rootItem = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(sdtmigDatasetMappingTargets != NULL) {
	//sdtmigDatasetMappingTargets.RemoveAll(true);
	//delete sdtmigDatasetMappingTargets;
	//sdtmigDatasetMappingTargets = NULL;
	//}
	//
}

void
CdashigScenarioFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFieldRef")) {
			jsonToValue(&self, node, "CdashigScenarioFieldRef", "CdashigScenarioFieldRef");
		} else {
			
			CdashigScenarioFieldRef* obj = static_cast<CdashigScenarioFieldRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *codelistKey = "codelist";
	node = json_object_get_member(pJsonObject, codelistKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<RootCtCodelistRefElement> new_list;
			RootCtCodelistRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("RootCtCodelistRefElement")) {
					jsonToValue(&inst, temp_json, "RootCtCodelistRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			codelist = new_list;
		}
		
	}
	const gchar *parentProductKey = "parentProduct";
	node = json_object_get_member(pJsonObject, parentProductKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigProductRef")) {
			jsonToValue(&parentProduct, node, "CdashigProductRef", "CdashigProductRef");
		} else {
			
			CdashigProductRef* obj = static_cast<CdashigProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentDomainKey = "parentDomain";
	node = json_object_get_member(pJsonObject, parentDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainRef")) {
			jsonToValue(&parentDomain, node, "CdashigDomainRef", "CdashigDomainRef");
		} else {
			
			CdashigDomainRef* obj = static_cast<CdashigDomainRef*> (&parentDomain);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentScenarioKey = "parentScenario";
	node = json_object_get_member(pJsonObject, parentScenarioKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioRef")) {
			jsonToValue(&parentScenario, node, "CdashigScenarioRef", "CdashigScenarioRef");
		} else {
			
			CdashigScenarioRef* obj = static_cast<CdashigScenarioRef*> (&parentScenario);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigScenarioFieldRef")) {
			jsonToValue(&rootItem, node, "RootCdashigScenarioFieldRef", "RootCdashigScenarioFieldRef");
		} else {
			
			RootCdashigScenarioFieldRef* obj = static_cast<RootCdashigScenarioFieldRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigScenarioFieldRef")) {
			jsonToValue(&priorVersion, node, "CdashigScenarioFieldRef", "CdashigScenarioFieldRef");
		} else {
			
			CdashigScenarioFieldRef* obj = static_cast<CdashigScenarioFieldRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sdtmigDatasetMappingTargetsKey = "sdtmigDatasetMappingTargets";
	node = json_object_get_member(pJsonObject, sdtmigDatasetMappingTargetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmigDatasetVariableRefTarget> new_list;
			SdtmigDatasetVariableRefTarget inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmigDatasetVariableRefTarget")) {
					jsonToValue(&inst, temp_json, "SdtmigDatasetVariableRefTarget", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sdtmigDatasetMappingTargets = new_list;
		}
		
	}
}

CdashigScenarioFieldLinks::CdashigScenarioFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigScenarioFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigScenarioFieldRef")) {
		CdashigScenarioFieldRef obj = getSelf();
		node = converttoJson(&obj, "CdashigScenarioFieldRef", "");
	}
	else {
		
		CdashigScenarioFieldRef obj = static_cast<CdashigScenarioFieldRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("RootCtCodelistRefElement")) {
		list<RootCtCodelistRefElement> new_list = static_cast<list <RootCtCodelistRefElement> > (getCodelist());
		node = converttoJson(&new_list, "RootCtCodelistRefElement", "array");
	} else {
		node = json_node_alloc();
		list<RootCtCodelistRefElement> new_list = static_cast<list <RootCtCodelistRefElement> > (getCodelist());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<RootCtCodelistRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			RootCtCodelistRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *codelistKey = "codelist";
	json_object_set_member(pJsonObject, codelistKey, node);
	if (isprimitive("CdashigProductRef")) {
		CdashigProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashigProductRef", "");
	}
	else {
		
		CdashigProductRef obj = static_cast<CdashigProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashigDomainRef")) {
		CdashigDomainRef obj = getParentDomain();
		node = converttoJson(&obj, "CdashigDomainRef", "");
	}
	else {
		
		CdashigDomainRef obj = static_cast<CdashigDomainRef> (getParentDomain());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDomainKey = "parentDomain";
	json_object_set_member(pJsonObject, parentDomainKey, node);
	if (isprimitive("CdashigScenarioRef")) {
		CdashigScenarioRef obj = getParentScenario();
		node = converttoJson(&obj, "CdashigScenarioRef", "");
	}
	else {
		
		CdashigScenarioRef obj = static_cast<CdashigScenarioRef> (getParentScenario());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentScenarioKey = "parentScenario";
	json_object_set_member(pJsonObject, parentScenarioKey, node);
	if (isprimitive("RootCdashigScenarioFieldRef")) {
		RootCdashigScenarioFieldRef obj = getRootItem();
		node = converttoJson(&obj, "RootCdashigScenarioFieldRef", "");
	}
	else {
		
		RootCdashigScenarioFieldRef obj = static_cast<RootCdashigScenarioFieldRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CdashigScenarioFieldRef")) {
		CdashigScenarioFieldRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashigScenarioFieldRef", "");
	}
	else {
		
		CdashigScenarioFieldRef obj = static_cast<CdashigScenarioFieldRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmigDatasetVariableRefTarget")) {
		list<SdtmigDatasetVariableRefTarget> new_list = static_cast<list <SdtmigDatasetVariableRefTarget> > (getSdtmigDatasetMappingTargets());
		node = converttoJson(&new_list, "SdtmigDatasetVariableRefTarget", "array");
	} else {
		node = json_node_alloc();
		list<SdtmigDatasetVariableRefTarget> new_list = static_cast<list <SdtmigDatasetVariableRefTarget> > (getSdtmigDatasetMappingTargets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmigDatasetVariableRefTarget>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmigDatasetVariableRefTarget obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sdtmigDatasetMappingTargetsKey = "sdtmigDatasetMappingTargets";
	json_object_set_member(pJsonObject, sdtmigDatasetMappingTargetsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashigScenarioFieldRef
CdashigScenarioFieldLinks::getSelf()
{
	return self;
}

void
CdashigScenarioFieldLinks::setSelf(CdashigScenarioFieldRef  self)
{
	this->self = self;
}

std::list<RootCtCodelistRefElement>
CdashigScenarioFieldLinks::getCodelist()
{
	return codelist;
}

void
CdashigScenarioFieldLinks::setCodelist(std::list <RootCtCodelistRefElement> codelist)
{
	this->codelist = codelist;
}

CdashigProductRef
CdashigScenarioFieldLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigScenarioFieldLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigDomainRef
CdashigScenarioFieldLinks::getParentDomain()
{
	return parentDomain;
}

void
CdashigScenarioFieldLinks::setParentDomain(CdashigDomainRef  parentDomain)
{
	this->parentDomain = parentDomain;
}

CdashigScenarioRef
CdashigScenarioFieldLinks::getParentScenario()
{
	return parentScenario;
}

void
CdashigScenarioFieldLinks::setParentScenario(CdashigScenarioRef  parentScenario)
{
	this->parentScenario = parentScenario;
}

RootCdashigScenarioFieldRef
CdashigScenarioFieldLinks::getRootItem()
{
	return rootItem;
}

void
CdashigScenarioFieldLinks::setRootItem(RootCdashigScenarioFieldRef  rootItem)
{
	this->rootItem = rootItem;
}

CdashigScenarioFieldRef
CdashigScenarioFieldLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashigScenarioFieldLinks::setPriorVersion(CdashigScenarioFieldRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmigDatasetVariableRefTarget>
CdashigScenarioFieldLinks::getSdtmigDatasetMappingTargets()
{
	return sdtmigDatasetMappingTargets;
}

void
CdashigScenarioFieldLinks::setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets)
{
	this->sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
}


