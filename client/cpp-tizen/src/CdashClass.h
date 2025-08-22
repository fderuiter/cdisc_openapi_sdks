/*
 * CdashClass.h
 *
 * 
 */

#ifndef _CdashClass_H_
#define _CdashClass_H_


#include <string>
#include "CdashClassField.h"
#include "CdashClassLinks.h"
#include <list>
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

class CdashClass : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashClass();
	CdashClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashClass();

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
	std::string getDescription();

	/*! \brief Set 
	 */
	void setDescription(std::string  description);
	/*! \brief Get 
	 */
	CdashClassLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashClassLinks  _links);
	/*! \brief Get 
	 */
	std::list<CdashClassField> getCdashModelFields();

	/*! \brief Set 
	 */
	void setCdashModelFields(std::list <CdashClassField> cdashModelFields);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	CdashClassLinks _links;
	std::list <CdashClassField>cdashModelFields;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashClass_H_ */
