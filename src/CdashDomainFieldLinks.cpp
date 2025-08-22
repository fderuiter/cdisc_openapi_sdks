#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashDomainFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashDomainFieldLinks::CdashDomainFieldLinks()
{
	//__init();
}

CdashDomainFieldLinks::~CdashDomainFieldLinks()
{
	//__cleanup();
}

void
CdashDomainFieldLinks::__init()
{
	//self = new CdashDomainFieldRef();
	//new std::list()std::list> codelist;
	//parentProduct = new CdashProductRef();
	//parentClass = new CdashClassRef();
	//parentDomain = new CdashDomainRef();
	//rootItem = new RootCdashDomainFieldRef();
	//priorVersion = new CdashDomainFieldRef();
	//new std::list()std::list> sdtmDatasetMappingTargets;
	//new std::list()std::list> sdtmigDatasetMappingTargets;
}

void
CdashDomainFieldLinks::__cleanup()
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
	//if(parentClass != NULL) {
	//
	//delete parentClass;
	//parentClass = NULL;
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
	//if(sdtmDatasetMappingTargets != NULL) {
	//sdtmDatasetMappingTargets.RemoveAll(true);
	//delete sdtmDatasetMappingTargets;
	//sdtmDatasetMappingTargets = NULL;
	//}
	//if(sdtmigDatasetMappingTargets != NULL) {
	//sdtmigDatasetMappingTargets.RemoveAll(true);
	//delete sdtmigDatasetMappingTargets;
	//sdtmigDatasetMappingTargets = NULL;
	//}
	//
}

void
CdashDomainFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFieldRef")) {
			jsonToValue(&self, node, "CdashDomainFieldRef", "CdashDomainFieldRef");
		} else {
			
			CdashDomainFieldRef* obj = static_cast<CdashDomainFieldRef*> (&self);
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
	

		if (isprimitive("CdashProductRef")) {
			jsonToValue(&parentProduct, node, "CdashProductRef", "CdashProductRef");
		} else {
			
			CdashProductRef* obj = static_cast<CdashProductRef*> (&parentProduct);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentClassKey = "parentClass";
	node = json_object_get_member(pJsonObject, parentClassKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassRef")) {
			jsonToValue(&parentClass, node, "CdashClassRef", "CdashClassRef");
		} else {
			
			CdashClassRef* obj = static_cast<CdashClassRef*> (&parentClass);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentDomainKey = "parentDomain";
	node = json_object_get_member(pJsonObject, parentDomainKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainRef")) {
			jsonToValue(&parentDomain, node, "CdashDomainRef", "CdashDomainRef");
		} else {
			
			CdashDomainRef* obj = static_cast<CdashDomainRef*> (&parentDomain);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashDomainFieldRef")) {
			jsonToValue(&rootItem, node, "RootCdashDomainFieldRef", "RootCdashDomainFieldRef");
		} else {
			
			RootCdashDomainFieldRef* obj = static_cast<RootCdashDomainFieldRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashDomainFieldRef")) {
			jsonToValue(&priorVersion, node, "CdashDomainFieldRef", "CdashDomainFieldRef");
		} else {
			
			CdashDomainFieldRef* obj = static_cast<CdashDomainFieldRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *sdtmDatasetMappingTargetsKey = "sdtmDatasetMappingTargets";
	node = json_object_get_member(pJsonObject, sdtmDatasetMappingTargetsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<SdtmDatasetVariableRefTarget> new_list;
			SdtmDatasetVariableRefTarget inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("SdtmDatasetVariableRefTarget")) {
					jsonToValue(&inst, temp_json, "SdtmDatasetVariableRefTarget", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			sdtmDatasetMappingTargets = new_list;
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

CdashDomainFieldLinks::CdashDomainFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashDomainFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashDomainFieldRef")) {
		CdashDomainFieldRef obj = getSelf();
		node = converttoJson(&obj, "CdashDomainFieldRef", "");
	}
	else {
		
		CdashDomainFieldRef obj = static_cast<CdashDomainFieldRef> (getSelf());
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
	if (isprimitive("CdashProductRef")) {
		CdashProductRef obj = getParentProduct();
		node = converttoJson(&obj, "CdashProductRef", "");
	}
	else {
		
		CdashProductRef obj = static_cast<CdashProductRef> (getParentProduct());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentProductKey = "parentProduct";
	json_object_set_member(pJsonObject, parentProductKey, node);
	if (isprimitive("CdashClassRef")) {
		CdashClassRef obj = getParentClass();
		node = converttoJson(&obj, "CdashClassRef", "");
	}
	else {
		
		CdashClassRef obj = static_cast<CdashClassRef> (getParentClass());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentClassKey = "parentClass";
	json_object_set_member(pJsonObject, parentClassKey, node);
	if (isprimitive("CdashDomainRef")) {
		CdashDomainRef obj = getParentDomain();
		node = converttoJson(&obj, "CdashDomainRef", "");
	}
	else {
		
		CdashDomainRef obj = static_cast<CdashDomainRef> (getParentDomain());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentDomainKey = "parentDomain";
	json_object_set_member(pJsonObject, parentDomainKey, node);
	if (isprimitive("RootCdashDomainFieldRef")) {
		RootCdashDomainFieldRef obj = getRootItem();
		node = converttoJson(&obj, "RootCdashDomainFieldRef", "");
	}
	else {
		
		RootCdashDomainFieldRef obj = static_cast<RootCdashDomainFieldRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CdashDomainFieldRef")) {
		CdashDomainFieldRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashDomainFieldRef", "");
	}
	else {
		
		CdashDomainFieldRef obj = static_cast<CdashDomainFieldRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("SdtmDatasetVariableRefTarget")) {
		list<SdtmDatasetVariableRefTarget> new_list = static_cast<list <SdtmDatasetVariableRefTarget> > (getSdtmDatasetMappingTargets());
		node = converttoJson(&new_list, "SdtmDatasetVariableRefTarget", "array");
	} else {
		node = json_node_alloc();
		list<SdtmDatasetVariableRefTarget> new_list = static_cast<list <SdtmDatasetVariableRefTarget> > (getSdtmDatasetMappingTargets());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<SdtmDatasetVariableRefTarget>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			SdtmDatasetVariableRefTarget obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *sdtmDatasetMappingTargetsKey = "sdtmDatasetMappingTargets";
	json_object_set_member(pJsonObject, sdtmDatasetMappingTargetsKey, node);
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

CdashDomainFieldRef
CdashDomainFieldLinks::getSelf()
{
	return self;
}

void
CdashDomainFieldLinks::setSelf(CdashDomainFieldRef  self)
{
	this->self = self;
}

std::list<RootCtCodelistRefElement>
CdashDomainFieldLinks::getCodelist()
{
	return codelist;
}

void
CdashDomainFieldLinks::setCodelist(std::list <RootCtCodelistRefElement> codelist)
{
	this->codelist = codelist;
}

CdashProductRef
CdashDomainFieldLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashDomainFieldLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashClassRef
CdashDomainFieldLinks::getParentClass()
{
	return parentClass;
}

void
CdashDomainFieldLinks::setParentClass(CdashClassRef  parentClass)
{
	this->parentClass = parentClass;
}

CdashDomainRef
CdashDomainFieldLinks::getParentDomain()
{
	return parentDomain;
}

void
CdashDomainFieldLinks::setParentDomain(CdashDomainRef  parentDomain)
{
	this->parentDomain = parentDomain;
}

RootCdashDomainFieldRef
CdashDomainFieldLinks::getRootItem()
{
	return rootItem;
}

void
CdashDomainFieldLinks::setRootItem(RootCdashDomainFieldRef  rootItem)
{
	this->rootItem = rootItem;
}

CdashDomainFieldRef
CdashDomainFieldLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashDomainFieldLinks::setPriorVersion(CdashDomainFieldRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmDatasetVariableRefTarget>
CdashDomainFieldLinks::getSdtmDatasetMappingTargets()
{
	return sdtmDatasetMappingTargets;
}

void
CdashDomainFieldLinks::setSdtmDatasetMappingTargets(std::list <SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets)
{
	this->sdtmDatasetMappingTargets = sdtmDatasetMappingTargets;
}

std::list<SdtmigDatasetVariableRefTarget>
CdashDomainFieldLinks::getSdtmigDatasetMappingTargets()
{
	return sdtmigDatasetMappingTargets;
}

void
CdashDomainFieldLinks::setSdtmigDatasetMappingTargets(std::list <SdtmigDatasetVariableRefTarget> sdtmigDatasetMappingTargets)
{
	this->sdtmigDatasetMappingTargets = sdtmigDatasetMappingTargets;
}


