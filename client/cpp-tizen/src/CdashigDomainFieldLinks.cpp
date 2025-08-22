#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashigDomainFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashigDomainFieldLinks::CdashigDomainFieldLinks()
{
	//__init();
}

CdashigDomainFieldLinks::~CdashigDomainFieldLinks()
{
	//__cleanup();
}

void
CdashigDomainFieldLinks::__init()
{
	//self = new CdashigDomainFieldRef();
	//new std::list()std::list> codelist;
	//parentProduct = new CdashigProductRef();
	//parentDomain = new CdashigDomainRef();
	//rootItem = new RootCdashigDomainFieldRef();
	//priorVersion = new CdashigDomainFieldRef();
	//new std::list()std::list> sdtmClassMappingTargets;
	//new std::list()std::list> sdtmigDatasetMappingTargets;
}

void
CdashigDomainFieldLinks::__cleanup()
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
	//if(sdtmClassMappingTargets != NULL) {
	//sdtmClassMappingTargets.RemoveAll(true);
	//delete sdtmClassMappingTargets;
	//sdtmClassMappingTargets = NULL;
	//}
	//if(sdtmigDatasetMappingTargets != NULL) {
	//sdtmigDatasetMappingTargets.RemoveAll(true);
	//delete sdtmigDatasetMappingTargets;
	//sdtmigDatasetMappingTargets = NULL;
	//}
	//
}

void
CdashigDomainFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainFieldRef")) {
			jsonToValue(&self, node, "CdashigDomainFieldRef", "CdashigDomainFieldRef");
		} else {
			
			CdashigDomainFieldRef* obj = static_cast<CdashigDomainFieldRef*> (&self);
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
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigDomainFieldRef")) {
			jsonToValue(&rootItem, node, "RootCdashigDomainFieldRef", "RootCdashigDomainFieldRef");
		} else {
			
			RootCdashigDomainFieldRef* obj = static_cast<RootCdashigDomainFieldRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashigDomainFieldRef")) {
			jsonToValue(&priorVersion, node, "CdashigDomainFieldRef", "CdashigDomainFieldRef");
		} else {
			
			CdashigDomainFieldRef* obj = static_cast<CdashigDomainFieldRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sdtmClassMappingTargetsKey = "sdtmClassMappingTargets";
	node = json_object_get_member(pJsonObject, sdtmClassMappingTargetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmClassVariableRefTarget> new_list;
			SdtmClassVariableRefTarget inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmClassVariableRefTarget")) {
					jsonToValue(&inst, temp_json, "SdtmClassVariableRefTarget", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sdtmClassMappingTargets = new_list;
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

CdashigDomainFieldLinks::CdashigDomainFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashigDomainFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashigDomainFieldRef")) {
		CdashigDomainFieldRef obj = getSelf();
		node = converttoJson(&obj, "CdashigDomainFieldRef", "");
	}
	else {
		
		CdashigDomainFieldRef obj = static_cast<CdashigDomainFieldRef> (getSelf());
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
	if (isprimitive("RootCdashigDomainFieldRef")) {
		RootCdashigDomainFieldRef obj = getRootItem();
		node = converttoJson(&obj, "RootCdashigDomainFieldRef", "");
	}
	else {
		
		RootCdashigDomainFieldRef obj = static_cast<RootCdashigDomainFieldRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CdashigDomainFieldRef")) {
		CdashigDomainFieldRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashigDomainFieldRef", "");
	}
	else {
		
		CdashigDomainFieldRef obj = static_cast<CdashigDomainFieldRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmClassVariableRefTarget")) {
		list<SdtmClassVariableRefTarget> new_list = static_cast<list <SdtmClassVariableRefTarget> > (getSdtmClassMappingTargets());
		node = converttoJson(&new_list, "SdtmClassVariableRefTarget", "array");
	} else {
		node = json_node_alloc();
		list<SdtmClassVariableRefTarget> new_list = static_cast<list <SdtmClassVariableRefTarget> > (getSdtmClassMappingTargets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmClassVariableRefTarget>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmClassVariableRefTarget obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sdtmClassMappingTargetsKey = "sdtmClassMappingTargets";
	json_object_set_member(pJsonObject, sdtmClassMappingTargetsKey, node);
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

CdashigDomainFieldRef
CdashigDomainFieldLinks::getSelf()
{
	return self;
}

void
CdashigDomainFieldLinks::setSelf(CdashigDomainFieldRef  self)
{
	this->self = self;
}

std::list<RootCtCodelistRefElement>
CdashigDomainFieldLinks::getCodelist()
{
	return codelist;
}

void
CdashigDomainFieldLinks::setCodelist(std::list <RootCtCodelistRefElement> codelist)
{
	this->codelist = codelist;
}

CdashigProductRef
CdashigDomainFieldLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashigDomainFieldLinks::setParentProduct(CdashigProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashigDomainRef
CdashigDomainFieldLinks::getParentDomain()
{
	return parentDomain;
}

void
CdashigDomainFieldLinks::setParentDomain(CdashigDomainRef  parentDomain)
{
	this->parentDomain = parentDomain;
}

RootCdashigDomainFieldRef
CdashigDomainFieldLinks::getRootItem()
{
	return rootItem;
}

void
CdashigDomainFieldLinks::setRootItem(RootCdashigDomainFieldRef  rootItem)
{
	this->rootItem = rootItem;
}

CdashigDomainFieldRef
CdashigDomainFieldLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashigDomainFieldLinks::setPriorVersion(CdashigDomainFieldRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmClassVariableRefTarget>
CdashigDomainFieldLinks::getSdtmClassMappingTargets()
{
	return sdtmClassMappingTargets;
}

void
CdashigDomainFieldLinks::setSdtmClassMappingTargets(std::list <SdtmClassVariableRefTarget> sdtmClassMappingTargets)
{
	this->sdtmClassMappingTargets = sdtmClassMappingTargets;
}

std::list<SdtmigDatasetVariableRefTarget>
CdashigDomainFieldLinks::getSdtmigDatasetMappingTargets()
{
	return sdtmigDatasetMappingTargets;
}

void
CdashigDomainFieldLinks::setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets)
{
	this->sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
}


