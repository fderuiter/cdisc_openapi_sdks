/*
 * CdashigScenarioField.h
 *
 * 
 */

#ifndef _CdashigScenarioField_H_
#define _CdashigScenarioField_H_


#include <string>
#include "CdashigScenarioFieldLinks.h"
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class CdashigScenarioField : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigScenarioField();
	CdashigScenarioField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigScenarioField();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::string getOrdinal();

	/*! \brief Set 
	 */
	void setOrdinal(std::string  ordinal);
	/*! \brief Get 
	 */
	std::string getName();

	/*! \brief Set 
	 */
	void setName(std::string  name);
	/*! \brief Get 
	 */
	std::string getLabel();

	/*! \brief Set 
	 */
	void setLabel(std::string  label);
	/*! \brief Get 
	 */
	std::string getDefinition();

	/*! \brief Set 
	 */
	void setDefinition(std::string  definition);
	/*! \brief Get 
	 */
	std::string getQuestionText();

	/*! \brief Set 
	 */
	void setQuestionText(std::string  questionText);
	/*! \brief Get 
	 */
	std::string getPrompt();

	/*! \brief Set 
	 */
	void setPrompt(std::string  prompt);
	/*! \brief Get 
	 */
	std::string getCompletionInstructions();

	/*! \brief Set 
	 */
	void setCompletionInstructions(std::string  completionInstructions);
	/*! \brief Get 
	 */
	std::string getImplementationNotes();

	/*! \brief Set 
	 */
	void setImplementationNotes(std::string  implementationNotes);
	/*! \brief Get 
	 */
	std::string getSimpleDatatype();

	/*! \brief Set 
	 */
	void setSimpleDatatype(std::string  simpleDatatype);
	/*! \brief Get 
	 */
	std::string getMappingInstructions();

	/*! \brief Set 
	 */
	void setMappingInstructions(std::string  mappingInstructions);
	/*! \brief Get 
	 */
	std::string getCore();

	/*! \brief Set 
	 */
	void setCore(std::string  core);
	/*! \brief Get 
	 */
	CdashigScenarioFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigScenarioFieldLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string definition;
	std::string questionText;
	std::string prompt;
	std::string completionInstructions;
	std::string implementationNotes;
	std::string simpleDatatype;
	std::string mappingInstructions;
	std::string core;
	CdashigScenarioFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigScenarioField_H_ */
