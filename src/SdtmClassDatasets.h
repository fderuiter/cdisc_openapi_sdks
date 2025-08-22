/*
 * SdtmClassDatasets.h
 *
 * 
 */

#ifndef _SdtmClassDatasets_H_
#define _SdtmClassDatasets_H_


#include <string>
#include "SdtmClassDatasetsLinks.h"
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

class SdtmClassDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	SdtmClassDatasets();
	SdtmClassDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SdtmClassDatasets();

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
	SdtmClassDatasetsLinks getLinks();

	/*! \brief Set 
	 */
	void setLinks(SdtmClassDatasetsLinks  _links);

private:
	std::string ordinal;
	std::string name;
	std::string label;
	std::string description;
	SdtmClassDatasetsLinks _links;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SdtmClassDatasets_H_ */
