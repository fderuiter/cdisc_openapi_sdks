/*
 * CdashigDomainFields.h
 *
 * 
 */

#ifndef _CdashigDomainFields_H_
#define _CdashigDomainFields_H_


#include <string>
#include "CdashigDomainFieldsLinks.h"
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

class CdashigDomainFields : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigDomainFields();
	CdashigDomainFields(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigDomainFields();

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
	CdashigDomainFieldsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(CdashigDomainFieldsLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	CdashigDomainFieldsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigDomainFields_H_ */
