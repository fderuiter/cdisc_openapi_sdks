#include <map>
#include <cstdlib>
#include <glib-object.h>
#include <json-glib/json-glib.h>
#include "Helpers.h"


#include "ExportQrsWorkbookItemsRow.h"

using namespace std;
using namespace Tizen::ArtikCloud;

ExportQrsWorkbookItemsRow::ExportQrsWorkbookItemsRow()
{
	//__init();
}

ExportQrsWorkbookItemsRow::~ExportQrsWorkbookItemsRow()
{
	//__cleanup();
}

void
ExportQrsWorkbookItemsRow::__init()
{
	//itemSequence = std::string();
	//testName = std::string();
	//itemText = std::string();
	//testsCodelistCCode = std::string();
	//testsTermCCode = std::string();
	//testCodesCodelistCCode = std::string();
	//testCodesTermCCode = std::string();
	//subcategorysCodelistCCode = std::string();
	//subcategorysTermCCode = std::string();
	//evaluatorsCodelistCCode = std::string();
	//evaluatorsTermCCode = std::string();
	//freeformResponsesDatatype = std::string();
	//responseGroup = std::string();
}

void
ExportQrsWorkbookItemsRow::__cleanup()
{
	//if(itemSequence != NULL) {
	//
	//delete itemSequence;
	//itemSequence = NULL;
	//}
	//if(testName != NULL) {
	//
	//delete testName;
	//testName = NULL;
	//}
	//if(itemText != NULL) {
	//
	//delete itemText;
	//itemText = NULL;
	//}
	//if(testsCodelistCCode != NULL) {
	//
	//delete testsCodelistCCode;
	//testsCodelistCCode = NULL;
	//}
	//if(testsTermCCode != NULL) {
	//
	//delete testsTermCCode;
	//testsTermCCode = NULL;
	//}
	//if(testCodesCodelistCCode != NULL) {
	//
	//delete testCodesCodelistCCode;
	//testCodesCodelistCCode = NULL;
	//}
	//if(testCodesTermCCode != NULL) {
	//
	//delete testCodesTermCCode;
	//testCodesTermCCode = NULL;
	//}
	//if(subcategorysCodelistCCode != NULL) {
	//
	//delete subcategorysCodelistCCode;
	//subcategorysCodelistCCode = NULL;
	//}
	//if(subcategorysTermCCode != NULL) {
	//
	//delete subcategorysTermCCode;
	//subcategorysTermCCode = NULL;
	//}
	//if(evaluatorsCodelistCCode != NULL) {
	//
	//delete evaluatorsCodelistCCode;
	//evaluatorsCodelistCCode = NULL;
	//}
	//if(evaluatorsTermCCode != NULL) {
	//
	//delete evaluatorsTermCCode;
	//evaluatorsTermCCode = NULL;
	//}
	//if(freeformResponsesDatatype != NULL) {
	//
	//delete freeformResponsesDatatype;
	//freeformResponsesDatatype = NULL;
	//}
	//if(responseGroup != NULL) {
	//
	//delete responseGroup;
	//responseGroup = NULL;
	//}
	//
}

void
ExportQrsWorkbookItemsRow::fromJson(char* jsonStr)
{
	JsonObject *pJsonObject = json_node_get_object(json_from_string(jsonStr,NULL));
	JsonNode *node;
	const gchar *itemSequenceKey = "Item Sequence";
	node = json_object_get_member(pJsonObject, itemSequenceKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&itemSequence, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *testNameKey = "Test Name";
	node = json_object_get_member(pJsonObject, testNameKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&testName, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *itemTextKey = "Item Text";
	node = json_object_get_member(pJsonObject, itemTextKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&itemText, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *testsCodelistCCodeKey = "Test&#39;s Codelist C-Code";
	node = json_object_get_member(pJsonObject, testsCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&testsCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *testsTermCCodeKey = "Test&#39;s Term C-Code";
	node = json_object_get_member(pJsonObject, testsTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&testsTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *testCodesCodelistCCodeKey = "Test Code&#39;s Codelist C-Code";
	node = json_object_get_member(pJsonObject, testCodesCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&testCodesCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *testCodesTermCCodeKey = "Test Code&#39;s Term C-Code";
	node = json_object_get_member(pJsonObject, testCodesTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&testCodesTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *subcategorysCodelistCCodeKey = "Subcategory&#39;s Codelist C-Code";
	node = json_object_get_member(pJsonObject, subcategorysCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subcategorysCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *subcategorysTermCCodeKey = "Subcategory&#39;s Term C-Code";
	node = json_object_get_member(pJsonObject, subcategorysTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&subcategorysTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *evaluatorsCodelistCCodeKey = "Evaluator&#39;s Codelist C-Code";
	node = json_object_get_member(pJsonObject, evaluatorsCodelistCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&evaluatorsCodelistCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *evaluatorsTermCCodeKey = "Evaluator&#39;s Term C-Code";
	node = json_object_get_member(pJsonObject, evaluatorsTermCCodeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&evaluatorsTermCCode, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *freeformResponsesDatatypeKey = "Free-form Response&#39;s Datatype";
	node = json_object_get_member(pJsonObject, freeformResponsesDatatypeKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&freeformResponsesDatatype, node, "std::string", "");
		} else {
			
		}
	}
	const gchar *responseGroupKey = "Response Group";
	node = json_object_get_member(pJsonObject, responseGroupKey);
	if (node !=NULL) {
	

		if (isprimitive("std::string")) {
			jsonToValue(&responseGroup, node, "std::string", "");
		} else {
			
		}
	}
}

ExportQrsWorkbookItemsRow::ExportQrsWorkbookItemsRow(char* json)
{
	this->fromJson(json);
}

char*
ExportQrsWorkbookItemsRow::toJson()
{
	JsonObject *pJsonObject = json_object_new();
	JsonNode *node;
	if (isprimitive("std::string")) {
		std::string obj = getItemSequence();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *itemSequenceKey = "Item Sequence";
	json_object_set_member(pJsonObject, itemSequenceKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTestName();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *testNameKey = "Test Name";
	json_object_set_member(pJsonObject, testNameKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getItemText();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *itemTextKey = "Item Text";
	json_object_set_member(pJsonObject, itemTextKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTestsCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *testsCodelistCCodeKey = "Test&#39;s Codelist C-Code";
	json_object_set_member(pJsonObject, testsCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTestsTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *testsTermCCodeKey = "Test&#39;s Term C-Code";
	json_object_set_member(pJsonObject, testsTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTestCodesCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *testCodesCodelistCCodeKey = "Test Code&#39;s Codelist C-Code";
	json_object_set_member(pJsonObject, testCodesCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getTestCodesTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *testCodesTermCCodeKey = "Test Code&#39;s Term C-Code";
	json_object_set_member(pJsonObject, testCodesTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubcategorysCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subcategorysCodelistCCodeKey = "Subcategory&#39;s Codelist C-Code";
	json_object_set_member(pJsonObject, subcategorysCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getSubcategorysTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *subcategorysTermCCodeKey = "Subcategory&#39;s Term C-Code";
	json_object_set_member(pJsonObject, subcategorysTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEvaluatorsCodelistCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *evaluatorsCodelistCCodeKey = "Evaluator&#39;s Codelist C-Code";
	json_object_set_member(pJsonObject, evaluatorsCodelistCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getEvaluatorsTermCCode();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *evaluatorsTermCCodeKey = "Evaluator&#39;s Term C-Code";
	json_object_set_member(pJsonObject, evaluatorsTermCCodeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getFreeformResponsesDatatype();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *freeformResponsesDatatypeKey = "Free-form Response&#39;s Datatype";
	json_object_set_member(pJsonObject, freeformResponsesDatatypeKey, node);
	if (isprimitive("std::string")) {
		std::string obj = getResponseGroup();
		node = converttoJson(&obj, "std::string", "");
	}
	else {
		
	}
	const gchar *responseGroupKey = "Response Group";
	json_object_set_member(pJsonObject, responseGroupKey, node);
	node = json_node_alloc();
	json_node_init(node, JSON_NODE_OBJECT);
	json_node_take_object(node, pJsonObject);
	char * ret = json_to_string(node, false);
	json_node_free(node);
	return ret;
}

std::string
ExportQrsWorkbookItemsRow::getItemSequence()
{
	return itemSequence;
}

void
ExportQrsWorkbookItemsRow::setItemSequence(std::string  itemSequence)
{
	this->itemSequence = itemSequence;
}

std::string
ExportQrsWorkbookItemsRow::getTestName()
{
	return testName;
}

void
ExportQrsWorkbookItemsRow::setTestName(std::string  testName)
{
	this->testName = testName;
}

std::string
ExportQrsWorkbookItemsRow::getItemText()
{
	return itemText;
}

void
ExportQrsWorkbookItemsRow::setItemText(std::string  itemText)
{
	this->itemText = itemText;
}

std::string
ExportQrsWorkbookItemsRow::getTestsCodelistCCode()
{
	return testsCodelistCCode;
}

void
ExportQrsWorkbookItemsRow::setTestsCodelistCCode(std::string  testsCodelistCCode)
{
	this->testsCodelistCCode = testsCodelistCCode;
}

std::string
ExportQrsWorkbookItemsRow::getTestsTermCCode()
{
	return testsTermCCode;
}

void
ExportQrsWorkbookItemsRow::setTestsTermCCode(std::string  testsTermCCode)
{
	this->testsTermCCode = testsTermCCode;
}

std::string
ExportQrsWorkbookItemsRow::getTestCodesCodelistCCode()
{
	return testCodesCodelistCCode;
}

void
ExportQrsWorkbookItemsRow::setTestCodesCodelistCCode(std::string  testCodesCodelistCCode)
{
	this->testCodesCodelistCCode = testCodesCodelistCCode;
}

std::string
ExportQrsWorkbookItemsRow::getTestCodesTermCCode()
{
	return testCodesTermCCode;
}

void
ExportQrsWorkbookItemsRow::setTestCodesTermCCode(std::string  testCodesTermCCode)
{
	this->testCodesTermCCode = testCodesTermCCode;
}

std::string
ExportQrsWorkbookItemsRow::getSubcategorysCodelistCCode()
{
	return subcategorysCodelistCCode;
}

void
ExportQrsWorkbookItemsRow::setSubcategorysCodelistCCode(std::string  subcategorysCodelistCCode)
{
	this->subcategorysCodelistCCode = subcategorysCodelistCCode;
}

std::string
ExportQrsWorkbookItemsRow::getSubcategorysTermCCode()
{
	return subcategorysTermCCode;
}

void
ExportQrsWorkbookItemsRow::setSubcategorysTermCCode(std::string  subcategorysTermCCode)
{
	this->subcategorysTermCCode = subcategorysTermCCode;
}

std::string
ExportQrsWorkbookItemsRow::getEvaluatorsCodelistCCode()
{
	return evaluatorsCodelistCCode;
}

void
ExportQrsWorkbookItemsRow::setEvaluatorsCodelistCCode(std::string  evaluatorsCodelistCCode)
{
	this->evaluatorsCodelistCCode = evaluatorsCodelistCCode;
}

std::string
ExportQrsWorkbookItemsRow::getEvaluatorsTermCCode()
{
	return evaluatorsTermCCode;
}

void
ExportQrsWorkbookItemsRow::setEvaluatorsTermCCode(std::string  evaluatorsTermCCode)
{
	this->evaluatorsTermCCode = evaluatorsTermCCode;
}

std::string
ExportQrsWorkbookItemsRow::getFreeformResponsesDatatype()
{
	return freeformResponsesDatatype;
}

void
ExportQrsWorkbookItemsRow::setFreeformResponsesDatatype(std::string  freeformResponsesDatatype)
{
	this->freeformResponsesDatatype = freeformResponsesDatatype;
}

std::string
ExportQrsWorkbookItemsRow::getResponseGroup()
{
	return responseGroup;
}

void
ExportQrsWorkbookItemsRow::setResponseGroup(std::string  responseGroup)
{
	this->responseGroup = responseGroup;
}


