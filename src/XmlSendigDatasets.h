/*
 * XmlSendigDatasets.h
 *
 * 
 */

#ifndef _XmlSendigDatasets_H_
#define _XmlSendigDatasets_H_


#include <string>
#include "SendigDatasets.h"
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

class XmlSendigDatasets : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSendigDatasets();
	XmlSendigDatasets(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSendigDatasets();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigDatasets getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigDatasets  self);

private:
	SendigDatasets self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSendigDatasets_H_ */
