#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "RootCdashigDomainFieldLinks.h"

using namespace std;
using namespace Tizen::ArtikCloud;

RootCdashigDomainFieldLinks::RootCdashigDomainFieldLinks()
{
	//__init();
}

RootCdashigDomainFieldLinks::~RootCdashigDomainFieldLinks()
{
	//__cleanup();
}

void
RootCdashigDomainFieldLinks::__init()
{
	//self = new RootCdashigDomainFieldRef();
	//new std::list()std::list> versions;
}

void
RootCdashigDomainFieldLinks::__cleanup()
{
	//if(self != NULL) {
	//
	//delete self;
	//self = NULL;
	//}
	//if(versions != NULL) {
	//versions.RemoveAll(true);
	//delete versions;
	//versions = NULL;
	//}
	//
}

void
RootCdashigDomainFieldLinks::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *selfKey = "self";
	node = json_object_get_member(pJsonObject, selfKey);
	if (node !=NULL) {
	

		if (isprimitive("RootCdashigDomainFieldRef")) {
			jsonToValue(&self, node, "RootCdashigDomainFieldRef", "RootCdashigDomainFieldRef");
		} else {
			
			RootCdashigDomainFieldRef* obj = static_cast<RootCdashigDomainFieldRef*> (&self);
			obj->fromJson(json_to_string(node, false));
			
		}
	}
	const gchar *versionsKey = "versions";
	node = json_object_get_member(pJsonObject, versionsKey);
	if (node !=NULL) {
	
		{
			JsonArray* arr = json_node_get_array(node);
			JsonNode*  temp_json;
			list<CdashigDomainFieldRefVersion> new_list;
			CdashigDomainFieldRefVersion inst;
			for (guint i=0;i<json_array_get_length(arr);i++) {
				temp_json = json_array_get_element(arr,i);
				if (isprimitive("CdashigDomainFieldRefVersion")) {
					jsonToValue(&inst, temp_json, "CdashigDomainFieldRefVersion", "");
				} else {
					
					inst.fromJson(json_to_string(temp_json, false));
					
				}
				new_list.push_back(inst);
			}
			versions = new_list;
		}
		
	}
}

RootCdashigDomainFieldLinks::RootCdashigDomainFieldLinks(char* json)
{
	this->fromJson(json);
}

char*
RootCdashigDomainFieldLinks::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("RootCdashigDomainFieldRef")) {
		RootCdashigDomainFieldRef obj = getSelf();
		node = converttoJson(&obj, "RootCdashigDomainFieldRef", "");
	}
	else {
		
		RootCdashigDomainFieldRef obj = static_cast<RootCdashigDomainFieldRef> (getSelf());
		GError *mygerror;
		mygerror = NULL;
		node = json_from_string(obj.toJson(), &mygerror);
		
	}
	const gchar *selfKey = "self";
	json_object_set_member(pJsonObject, selfKey, node);
	if (isprimitive("CdashigDomainFieldRefVersion")) {
		list<CdashigDomainFieldRefVersion> new_list = static_cast<list <CdashigDomainFieldRefVersion> > (getVersions());
		node = converttoJson(&new_list, "CdashigDomainFieldRefVersion", "array");
	} else {
		node = json_node_alloc();
		list<CdashigDomainFieldRefVersion> new_list = static_cast<list <CdashigDomainFieldRefVersion> > (getVersions());
		JsonArray* json_array = json_array_new();
		GError *mygerror;
		
		for (list<CdashigDomainFieldRefVersion>::iterator it = new_list.begin(); it != new_list.end(); it++) {
			mygerror = NULL;
			CdashigDomainFieldRefVersion obj = *it;
			JsonNode *node_temp = json_from_string(obj.toJson(), &mygerror);
			json_array_add_element(json_array, node_temp);
			g_clear_error(&mygerror);
		}
		json_node_init_array(node, json_array);
		json_array_unref(json_array);
		
	}


	
	const gchar *versionsKey = "versions";
	json_object_set_member(pJsonObject, versionsKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

RootCdashigDomainFieldRef
RootCdashigDomainFieldLinks::getSelf()
{
	return self;
}

void
RootCdashigDomainFieldLinks::setSelf(RootCdashigDomainFieldRef  self)
{
	this->self = self;
}

std::list<CdashigDomainFieldRefVersion>
RootCdashigDomainFieldLinks::getVersions()
{
	return versions;
}

void
RootCdashigDomainFieldLinks::setVersions(std::list <CdashigDomainFieldRefVersion> versions)
{
	this->versions = versions;
}


