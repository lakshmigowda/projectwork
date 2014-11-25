
package lakshmigowda.session.ejb;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "SurveyService", targetNamespace = "http://ejb.session.lakshmigowda/", wsdlLocation = "file:/C:/jboss-6.1.0.Final/server/default/data/wsdl/lakshmi_session_hw5.jar/SurveyService.wsdl")
public class SurveyService
    extends Service
{

    private final static URL SURVEYSERVICE_WSDL_LOCATION;
    private final static WebServiceException SURVEYSERVICE_EXCEPTION;
    private final static QName SURVEYSERVICE_QNAME = new QName("http://ejb.session.lakshmigowda/", "SurveyService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("file:/C:/jboss-6.1.0.Final/server/default/data/wsdl/lakshmi_session_hw5.jar/SurveyService.wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        SURVEYSERVICE_WSDL_LOCATION = url;
        SURVEYSERVICE_EXCEPTION = e;
    }

    public SurveyService() {
        super(__getWsdlLocation(), SURVEYSERVICE_QNAME);
    }

    public SurveyService(WebServiceFeature... features) {
        super(__getWsdlLocation(), SURVEYSERVICE_QNAME, features);
    }

    public SurveyService(URL wsdlLocation) {
        super(wsdlLocation, SURVEYSERVICE_QNAME);
    }

    public SurveyService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, SURVEYSERVICE_QNAME, features);
    }

    public SurveyService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public SurveyService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns SurveyImplementation
     */
    @WebEndpoint(name = "SurveyImplementationPort")
    public SurveyImplementation getSurveyImplementationPort() {
        return super.getPort(new QName("http://ejb.session.lakshmigowda/", "SurveyImplementationPort"), SurveyImplementation.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns SurveyImplementation
     */
    @WebEndpoint(name = "SurveyImplementationPort")
    public SurveyImplementation getSurveyImplementationPort(WebServiceFeature... features) {
        return super.getPort(new QName("http://ejb.session.lakshmigowda/", "SurveyImplementationPort"), SurveyImplementation.class, features);
    }

    private static URL __getWsdlLocation() {
        if (SURVEYSERVICE_EXCEPTION!= null) {
            throw SURVEYSERVICE_EXCEPTION;
        }
        return SURVEYSERVICE_WSDL_LOCATION;
    }

}