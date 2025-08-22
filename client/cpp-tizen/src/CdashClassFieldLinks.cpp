#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CdashClassFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CdashClassFieldLinks::CdashClassFieldLinks()
{
	//__init();
}

CdashClassFieldLinks::~CdashClassFieldLinks()
{
	//__cleanup();
}

void
CdashClassFieldLinks::__init()
{
	//self = new CdashClassFieldRef();
	//new std::list()std::list> codelist;
	//parentProduct = new CdashProductRef();
	//parentClass = new CdashClassRef();
	//rootItem = new RootCdashClassFieldRef();
	//priorVersion = new CdashClassFieldRef();
	//new std::list()std::list> sdtmClassMappingTargets;
	//new std::list()std::list> sdtmDatasetMappingTargets;
}

void
CdashClassFieldLinks::__cleanup()
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
	//if(sdtmDatasetMappingTargets != NULL) {
	//sdtmDatasetMappingTargets.RemoveAll(true);
	//delete sdtmDatasetMappingTargets;
	//sdtmDatasetMappingTargets = NULL;
	//}
	//
}

void
CdashClassFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassFieldRef")) {
			jsonToValue(&self, node, "CdashClassFieldRef", "CdashClassFieldRef");
		} else {
			
			CdashClassFieldRef* obj = static_cast<CdashClassFieldRef*> (&self);
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
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashClassFieldRef")) {
			jsonToValue(&rootItem, node, "RootCdashClassFieldRef", "RootCdashClassFieldRef");
		} else {
			
			RootCdashClassFieldRef* obj = static_cast<RootCdashClassFieldRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CdashClassFieldRef")) {
			jsonToValue(&priorVersion, node, "CdashClassFieldRef", "CdashClassFieldRef");
		} else {
			
			CdashClassFieldRef* obj = static_cast<CdashClassFieldRef*> (&priorVersion);
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
}

CdashClassFieldLinks::CdashClassFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
CdashClassFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CdashClassFieldRef")) {
		CdashClassFieldRef obj = getSelf();
		node = converttoJson(&obj, "CdashClassFieldRef", "");
	}
	else {
		
		CdashClassFieldRef obj = static_cast<CdashClassFieldRef> (getSelf());
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
	if (isprimitive("RootCdashClassFieldRef")) {
		RootCdashClassFieldRef obj = getRootItem();
		node = converttoJson(&obj, "RootCdashClassFieldRef", "");
	}
	else {
		
		RootCdashClassFieldRef obj = static_cast<RootCdashClassFieldRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CdashClassFieldRef")) {
		CdashClassFieldRef obj = getPriorVersion();
		node = converttoJson(&obj, "CdashClassFieldRef", "");
	}
	else {
		
		CdashClassFieldRef obj = static_cast<CdashClassFieldRef> (getPriorVersion());
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
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CdashClassFieldRef
CdashClassFieldLinks::getSelf()
{
	return self;
}

void
CdashClassFieldLinks::setSelf(CdashClassFieldRef  self)
{
	this->self = self;
}

std::list<RootCtCodelistRefElement>
CdashClassFieldLinks::getCodelist()
{
	return codelist;
}

void
CdashClassFieldLinks::setCodelist(std::list <RootCtCodelistRefElement> codelist)
{
	this->codelist = codelist;
}

CdashProductRef
CdashClassFieldLinks::getParentProduct()
{
	return parentProduct;
}

void
CdashClassFieldLinks::setParentProduct(CdashProductRef  parentProduct)
{
	this->parentProduct = parentProduct;
}

CdashClassRef
CdashClassFieldLinks::getParentClass()
{
	return parentClass;
}

void
CdashClassFieldLinks::setParentClass(CdashClassRef  parentClass)
{
	this->parentClass = parentClass;
}

RootCdashClassFieldRef
CdashClassFieldLinks::getRootItem()
{
	return rootItem;
}

void
CdashClassFieldLinks::setRootItem(RootCdashClassFieldRef  rootItem)
{
	this->rootItem = rootItem;
}

CdashClassFieldRef
CdashClassFieldLinks::getPriorVersion()
{
	return priorVersion;
}

void
CdashClassFieldLinks::setPriorVersion(CdashClassFieldRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<SdtmClassVariableRefTarget>
CdashClassFieldLinks::getSdtmClassMappingTargets()
{
	return sdtmClassMappingTargets;
}

void
CdashClassFieldLinks::setSdtmClassMappingTargets(std::list <SdtmClassVariableRefTarget> sdtmClassMappingTargets)
{
	this->sdtmClassMappingTargets = sdtmClassMappingTargets;
}

std::list<SdtmDatasetVariableRefTarget>
CdashClassFieldLinks::getSdtmDatasetMappingTargets()
{
	return sdtmDatasetMappingTargets;
}

void
CdashClassFieldLinks::setSdtmDatasetMappingTargets(std::list <SdtmDatasetVariableRefTarget> sdtmDatasetMappingTargets)
{
	this->sdtmDatasetMappingTargets = sdtmDatasetMappingTargets;
}


