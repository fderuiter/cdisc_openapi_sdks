#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportAdamDatastructuresRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportAdamDatastructuresRow::ExportAdamDatastructuresRow()
{
	//__init();
}

ExportAdamDatastructuresRow::~ExportAdamDatastructuresRow()
{
	//__cleanup();
}

void
ExportAdamDatastructuresRow::__init()
{
	//version = std::string();
	//dataStructureName = std::string();
	//datasetName = std::string();
	//datasetLabel = std::string();
	//datasetDescription = std::string();
	//r_class = std::string();
}

void
ExportAdamDatastructuresRow::__cleanup()
{
	//if(version != NULL) {
	//
	//delete version;
	//version = NULL;
	//}
	//if(dataStructureName != NULL) {
	//
	//delete dataStructureName;
	//dataStructureName = NULL;
	//}
	//if(datasetName != NULL) {
	//
	//delete datasetName;
	//datasetName = NULL;
	//}
	//if(datasetLabel != NULL) {
	//
	//delete datasetLabel;
	//datasetLabel = NULL;
	//}
	//if(datasetDescription != NULL) {
	//
	//delete datasetDescription;
	//datasetDescription = NULL;
	//}
	//if(r_class != NULL) {
	//
	//delete r_class;
	//r_class = NULL;
	//}
	//
}

void
ExportAdamDatastructuresRow::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *versionKey = "Version";
	node = json_object_get_member(pJsonObject, versionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&version, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *dataStructureNameKey = "Data Structure Name";
	node = json_object_get_member(pJsonObject, dataStructureNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&dataStructureName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetNameKey = "Dataset Name";
	node = json_object_get_member(pJsonObject, datasetNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetLabelKey = "Dataset Label";
	node = json_object_get_member(pJsonObject, datasetLabelKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetLabel, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *datasetDescriptionKey = "Dataset Description";
	node = json_object_get_member(pJsonObject, datasetDescriptionKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&datasetDescription, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *r_classKey = "Class";
	node = json_object_get_member(pJsonObject, r_classKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&r_class, node, "std::string", "");
		} else {
			
		}
	}
}

ExportAdamDatastructuresRow::ExportAdamDatastructuresRow(char* json)
{
	this->fromJson(json);
}

char*
ExportAdamDatastructuresRow::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getVersion();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *versionKey = "Version";
	json_object_set_member(pJsonObject, versionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDataStructureName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *dataStructureNameKey = "Data Structure Name";
	json_object_set_member(pJsonObject, dataStructureNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetNameKey = "Dataset Name";
	json_object_set_member(pJsonObject, datasetNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetLabel();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetLabelKey = "Dataset Label";
	json_object_set_member(pJsonObject, datasetLabelKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getDatasetDescription();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *datasetDescriptionKey = "Dataset Description";
	json_object_set_member(pJsonObject, datasetDescriptionKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getRClass();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *r_classKey = "Class";
	json_object_set_member(pJsonObject, r_classKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportAdamDatastructuresRow::getVersion()
{
	return version;
}

void
ExportAdamDatastructuresRow::setVersion(std::string  version)
{
	this->version = version;
}

std::string
ExportAdamDatastructuresRow::getDataStructureName()
{
	return dataStructureName;
}

void
ExportAdamDatastructuresRow::setDataStructureName(std::string  dataStructureName)
{
	this->dataStructureName = dataStructureName;
}

std::string
ExportAdamDatastructuresRow::getDatasetName()
{
	return datasetName;
}

void
ExportAdamDatastructuresRow::setDatasetName(std::string  datasetName)
{
	this->datasetName = datasetName;
}

std::string
ExportAdamDatastructuresRow::getDatasetLabel()
{
	return datasetLabel;
}

void
ExportAdamDatastructuresRow::setDatasetLabel(std::string  datasetLabel)
{
	this->datasetLabel = datasetLabel;
}

std::string
ExportAdamDatastructuresRow::getDatasetDescription()
{
	return datasetDescription;
}

void
ExportAdamDatastructuresRow::setDatasetDescription(std::string  datasetDescription)
{
	this->datasetDescription = datasetDescription;
}

std::string
ExportAdamDatastructuresRow::getRClass()
{
	return r_class;
}

void
ExportAdamDatastructuresRow::setRClass(std::string  r_class)
{
	this->r_class = r_class;
}


