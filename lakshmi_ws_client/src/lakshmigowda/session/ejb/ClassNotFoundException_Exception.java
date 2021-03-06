
package lakshmigowda.session.ejb;

import javax.xml.ws.WebFault;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.9-b130926.1035
 * Generated source version: 2.2
 * 
 */
@WebFault(name = "ClassNotFoundException", targetNamespace = "http://ejb.session.lakshmigowda/")
public class ClassNotFoundException_Exception
    extends Exception
{

    /**
     * Java type that goes as soapenv:Fault detail element.
     * 
     */
    private ClassNotFoundException faultInfo;

    /**
     * 
     * @param faultInfo
     * @param message
     */
    public ClassNotFoundException_Exception(String message, ClassNotFoundException faultInfo) {
        super(message);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @param faultInfo
     * @param cause
     * @param message
     */
    public ClassNotFoundException_Exception(String message, ClassNotFoundException faultInfo, Throwable cause) {
        super(message, cause);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @return
     *     returns fault bean: lakshmigowda.session.ejb.ClassNotFoundException
     */
    public ClassNotFoundException getFaultInfo() {
        return faultInfo;
    }

}
