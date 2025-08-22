/*
 * XmlSdtmigDatasets.h
 *
 * 
 */

#ifndef _XmlSdtmigDatasets_H_
#define _XmlSdtmigDatasets_H_


#include <string>
#include "SdtmigDatasets.h"
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

class XmlSdtmigDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigDatasets();
	XmlSdtmigDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDatasets  self);

private:
	SdtmigDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigDatasets_H_ */
