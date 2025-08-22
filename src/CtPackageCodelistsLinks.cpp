#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "CtPackageCodelistsLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

CtPackageCodelistsLinks::CtPackageCodelistsLinks()
{
	//__init();
}

CtPackageCodelistsLinks::~CtPackageCodelistsLinks()
{
	//__cleanup();
}

void
CtPackageCodelistsLinks::__init()
{
	//self = new CtPackageCodelistsRef();
	//priorVersion = new CtPackageCodelistsRef();
	//new std::list()std::list> codelists;
}

void
CtPackageCodelistsLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(priorVersion != NULL) {
	//
	//delete priorVersion;
	//priorVersion = NULL;
	//}
	//if(codelists != NULL) {
	//codelists.RemoveAll(true);
	//delete codelists;
	//codelists = NULL;
	//}
	//
}

void
CtPackageCodelistsLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageCodelistsRef")) {
			jsonToValue(&self, node, "CtPackageCodelistsRef", "CtPackageCodelistsRef");
		} else {
			
			CtPackageCodelistsRef* obj = static_cast<CtPackageCodelistsRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *priorVersionKey = "priorVersion";
	node = json_object_get_member(pJsonObject, priorVersionKey);
	if (node !=NULL) {
	

		if (isprimitive("CtPackageCodelistsRef")) {
			jsonToValue(&priorVersion, node, "CtPackageCodelistsRef", "CtPackageCodelistsRef");
		} else {
			
			CtPackageCodelistsRef* obj = static_cast<CtPackageCodelistsRef*> (&priorVersion);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *codelistsKey = "codelists";
	node = json_object_get_member(pJsonObject, codelistsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CtCodelistRefElement> new_list;
			CtCodelistRefElement inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CtCodelistRefElement")) {
					jsonToValue(&inst, temp_json, "CtCodelistRefElement", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			codelists = new_list;
		}
		
	}
}

CtPackageCodelistsLinks::CtPackageCodelistsLinks(char* json)
{
	this->fromJson(json);
}

char*
CtPackageCodelistsLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("CtPackageCodelistsRef")) {
		CtPackageCodelistsRef obj = getSelf();
		node = converttoJson(&obj, "CtPackageCodelistsRef", "");
	}
	else {
		
		CtPackageCodelistsRef obj = static_cast<CtPackageCodelistsRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CtPackageCodelistsRef")) {
		CtPackageCodelistsRef obj = getPriorVersion();
		node = converttoJson(&obj, "CtPackageCodelistsRef", "");
	}
	else {
		
		CtPackageCodelistsRef obj = static_cast<CtPackageCodelistsRef> (getPriorVersion());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *priorVersionKey = "priorVersion";
	json_object_set_member(pJsonObject, priorVersionKey, node);
	if (isprimitive("CtCodelistRefElement")) {
		list<CtCodelistRefElement> new_list = static_cast<list <CtCodelistRefElement> > (getCodelists());
		node = converttoJson(&new_list, "CtCodelistRefElement", "array");
	} else {
		node = json_node_alloc();
		list<CtCodelistRefElement> new_list = static_cast<list <CtCodelistRefElement> > (getCodelists());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CtCodelistRefElement>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CtCodelistRefElement obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *codelistsKey = "codelists";
	json_object_set_member(pJsonObject, codelistsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

CtPackageCodelistsRef
CtPackageCodelistsLinks::getSelf()
{
	return self;
}

void
CtPackageCodelistsLinks::setSelf(CtPackageCodelistsRef  self)
{
	this->self = self;
}

CtPackageCodelistsRef
CtPackageCodelistsLinks::getPriorVersion()
{
	return priorVersion;
}

void
CtPackageCodelistsLinks::setPriorVersion(CtPackageCodelistsRef  priorVersion)
{
	this->priorVersion = priorVersion;
}

std::list<CtCodelistRefElement>
CtPackageCodelistsLinks::getCodelists()
{
	return codelists;
}

void
CtPackageCodelistsLinks::setCodelists(std::list <CtCodelistRefElement> codelists)
{
	this->codelists = codelists;
}


