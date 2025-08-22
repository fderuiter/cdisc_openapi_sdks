/*
 * SendigClass.h
 *
 * 
 */

#ifndef _SendigClass_H_
#define _SendigClass_H_


#include <string>
#include "SendigClassLinks.h"
#include "SendigDataset.h"
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

class SendigClass : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClass();
	SendigClass(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClass();

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
	SendigClassLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SendigClassLinks  _links);
	/*! \brief Get 
	 */
	std::list<SendigDataset> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <SendigDataset> datasets);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	SendigClassLinks _links;
	std::list <SendigDataset>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClass_H_ */
