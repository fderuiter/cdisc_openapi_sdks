/*
 * XmlSdtmigClassDatasets.h
 *
 * 
 */

#ifndef _XmlSdtmigClassDatasets_H_
#define _XmlSdtmigClassDatasets_H_


#include <string>
#include "SdtmigClassDatasets.h"
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

class XmlSdtmigClassDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigClassDatasets();
	XmlSdtmigClassDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigClassDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigClassDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigClassDatasets  self);

private:
	SdtmigClassDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigClassDatasets_H_ */
