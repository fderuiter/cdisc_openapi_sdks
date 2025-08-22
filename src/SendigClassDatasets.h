/*
 * SendigClassDatasets.h
 *
 * 
 */

#ifndef _SendigClassDatasets_H_
#define _SendigClassDatasets_H_


#include <string>
#include "SendigClassDatasetsLinks.h"
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

class SendigClassDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigClassDatasets();
	SendigClassDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigClassDatasets();

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
	SendigClassDatasetsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SendigClassDatasetsLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	SendigClassDatasetsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigClassDatasets_H_ */
