/*
 * CdashDomainField.h
 *
 * 
 */

#ifndef _CdashDomainField_H_
#define _CdashDomainField_H_


#include <string>
#include "CdashDomainFieldLinks.h"
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

class CdashDomainField : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashDomainField();
	CdashDomainField(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashDomainField();

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
	std::string getDomainSpecific();

	/*! \brief Set 
	 */
	void setDomainSpecific(std::string  domainSpecific);
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
	std::string getSimpleDatatype();

	/*! \brief Set 
	 */
	void setSimpleDatatype(std::string  simpleDatatype);
	/*! \brief Get 
	 */
	std::string getImplementationNotes();

	/*! \brief Set 
	 */
	void setImplementationNotes(std::string  implementationNotes);
	/*! \brief Get 
	 */
	std::string getMappingInstructions();

	/*! \brief Set 
	 */
	void setMappingInstructions(std::string  mappingInstructions);
	/*! \brief Get 
	 */
	CdashDomainFieldLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashDomainFieldLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string definition;
	std::string domainSpecific;
	std::string questionText;
	std::string prompt;
	std::string simpleDatatype;
	std::string implementationNotes;
	std::string mappingInstructions;
	CdashDomainFieldLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashDomainField_H_ */
