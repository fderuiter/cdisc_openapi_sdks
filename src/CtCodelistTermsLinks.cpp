#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtCodelistTermsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtCodelistTermsLinks::CtCodelistTermsLinks()
{
	//__init();
}

CtCodelistTermsLinks::~CtCodelistTermsLinks()
{
	//__cleanup();
}

void
CtCodelistTermsLinks::__init()
{
	//self = new CtCodelistTermsRef();
	//parentPackage = new CtPackageRef();
	//rootItem = new RootCtCodelistRef();
	//priorVersion = new CtCodelistTermsRef();
	//new std::list()std::list> terms;
}

void
CtCodelistTermsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(parentPackage != NULL) {
	//
	//delete parentPackage;
	//parentPackage = NULL;
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
	//if(terms != NULL) {
	//terms.RemoveAll(true);
	//delete terms;
	//terms = NULL;
	//}
	//
}

void
CtCodelistTermsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistTermsRef")) {
			jsonToValue(&self, node, "CtCodelistTermsRef", "CtCodelistTermsRef");
		} else {
			
			CtCodelistTermsRef* obj = static_cast<CtCodelistTermsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *parentPackageKey = "parentPackage";
	node = json_object_get_member(pJsonObject, parentPackageKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageRef")) {
			jsonToValue(&parentPackage, node, "CtPackageRef", "CtPackageRef");
		} else {
			
			CtPackageRef* obj = static_cast<CtPackageRef*> (&parentPackage);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *rootItemKey = "rootItem";
	node = json_object_get_member(pJsonObject, rootItemKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCtCodelistRef")) {
			jsonToValue(&rootItem, node, "RootCtCodelistRef", "RootCtCodelistRef");
		} else {
			
			RootCtCodelistRef* obj = static_cast<RootCtCodelistRef*> (&rootItem);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CtCodelistTermsRef")) {
			jsonToValue(&priorVersion, node, "CtCodelistTermsRef", "CtCodelistTermsRef");
		} else {
			
			CtCodelistTermsRef* obj = static_cast<CtCodelistTermsRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *termsKey = "terms";
	node = json_object_get_member(pJsonObject, termsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtTermRefElement> new_list;
			CtTermRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtTermRefElement")) {
					jsonToValue(&inst, temp_json, "CtTermRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			terms = new_list;
		}
		
	}
}

CtCodelistTermsLinks::CtCodelistTermsLinks(char* json)
{
	this->fromJson(json);
}

char*
CtCodelistTermsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtCodelistTermsRef")) {
		CtCodelistTermsRef obj = getSelf();
		node = converttoJson(&obj, "CtCodelistTermsRef", "");
	}
	else {
		
		CtCodelistTermsRef obj = static_cast<CtCodelistTermsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtPackageRef")) {
		CtPackageRef obj = getParentPackage();
		node = converttoJson(&obj, "CtPackageRef", "");
	}
	else {
		
		CtPackageRef obj = static_cast<CtPackageRef> (getParentPackage());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *parentPackageKey = "parentPackage";
	json_object_set_member(pJsonObject, parentPackageKey, node);
	if (isprimitive("RootCtCodelistRef")) {
		RootCtCodelistRef obj = getRootItem();
		node = converttoJson(&obj, "RootCtCodelistRef", "");
	}
	else {
		
		RootCtCodelistRef obj = static_cast<RootCtCodelistRef> (getRootItem());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *rootItemKey = "rootItem";
	json_object_set_member(pJsonObject, rootItemKey, node);
	if (isprimitive("CtCodelistTermsRef")) {
		CtCodelistTermsRef obj = getPriorVersion();
		node = converttoJson(&obj, "CtCodelistTermsRef", "");
	}
	else {
		
		CtCodelistTermsRef obj = static_cast<CtCodelistTermsRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("CtTermRefElement")) {
		list<CtTermRefElement> new_list = static_cast<list <CtTermRefElement> > (getTerms());
		node = converttoJson(&new_list, "CtTermRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CtTermRefElement> new_list = static_cast<list <CtTermRefElement> > (getTerms());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtTermRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtTermRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *termsKey = "terms";
	json_object_set_member(pJsonObject, termsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CtCodelistTermsRef
CtCodelistTermsLinks::getSelf()
{
	return self;
}

void
CtCodelistTermsLinks::setSelf(CtCodelistTermsRef  self)
{
	this->self = self;
}

CtPackageRef
CtCodelistTermsLinks::getParentPackage()
{
	return parentPackage;
}

void
CtCodelistTermsLinks::setParentPackage(CtPackageRef  parentPackage)
{
	this->parentPackage = parentPackage;
}

RootCtCodelistRef
CtCodelistTermsLinks::getRootItem()
{
	return rootItem;
}

void
CtCodelistTermsLinks::setRootItem(RootCtCodelistRef  rootItem)
{
	this->rootItem = rootItem;
}

CtCodelistTermsRef
CtCodelistTermsLinks::getPriorVersion()
{
	return priorVersion;
}

void
CtCodelistTermsLinks::setPriorVersion(CtCodelistTermsRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<CtTermRefElement>
CtCodelistTermsLinks::getTerms()
{
	return terms;
}

void
CtCodelistTermsLinks::setTerms(std::list <CtTermRefElement> terms)
{
	this->terms = terms;
}


