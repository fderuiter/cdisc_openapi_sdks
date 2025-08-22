/*
 * XmlSdtmDatasets.h
 *
 * 
 */

#ifndef _XmlSdtmDatasets_H_
#define _XmlSdtmDatasets_H_


#include <string>
#include "SdtmDatasets.h"
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

class XmlSdtmDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmDatasets();
	XmlSdtmDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmDatasets  self);

private:
	SdtmDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmDatasets_H_ */
