/**
 * PaymentBean.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package goair.model.payment;

public class PaymentBean  extends goair.model.general.Person  implements java.io.Serializable {
    private long creditcardNumber;

    private int cvvNumber;

    private java.lang.String expiryDate;

    private long reservationId;

    public PaymentBean() {
    }

    public PaymentBean(
           java.lang.String address,
           java.lang.String city,
           java.lang.String currentStatus,
           java.util.Calendar dob,
           java.lang.String emailId,
           java.lang.String firstName,
           java.lang.String gender,
           java.lang.String lastName,
           java.lang.String password,
           java.lang.String state,
           java.lang.String zipcode,
           long creditcardNumber,
           int cvvNumber,
           java.lang.String expiryDate,
           long reservationId) {
        super(
            address,
            city,
            currentStatus,
            dob,
            emailId,
            firstName,
            gender,
            lastName,
            password,
            state,
            zipcode);
        this.creditcardNumber = creditcardNumber;
        this.cvvNumber = cvvNumber;
        this.expiryDate = expiryDate;
        this.reservationId = reservationId;
    }


    /**
     * Gets the creditcardNumber value for this PaymentBean.
     * 
     * @return creditcardNumber
     */
    public long getCreditcardNumber() {
        return creditcardNumber;
    }


    /**
     * Sets the creditcardNumber value for this PaymentBean.
     * 
     * @param creditcardNumber
     */
    public void setCreditcardNumber(long creditcardNumber) {
        this.creditcardNumber = creditcardNumber;
    }


    /**
     * Gets the cvvNumber value for this PaymentBean.
     * 
     * @return cvvNumber
     */
    public int getCvvNumber() {
        return cvvNumber;
    }


    /**
     * Sets the cvvNumber value for this PaymentBean.
     * 
     * @param cvvNumber
     */
    public void setCvvNumber(int cvvNumber) {
        this.cvvNumber = cvvNumber;
    }


    /**
     * Gets the expiryDate value for this PaymentBean.
     * 
     * @return expiryDate
     */
    public java.lang.String getExpiryDate() {
        return expiryDate;
    }


    /**
     * Sets the expiryDate value for this PaymentBean.
     * 
     * @param expiryDate
     */
    public void setExpiryDate(java.lang.String expiryDate) {
        this.expiryDate = expiryDate;
    }


    /**
     * Gets the reservationId value for this PaymentBean.
     * 
     * @return reservationId
     */
    public long getReservationId() {
        return reservationId;
    }


    /**
     * Sets the reservationId value for this PaymentBean.
     * 
     * @param reservationId
     */
    public void setReservationId(long reservationId) {
        this.reservationId = reservationId;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof PaymentBean)) return false;
        PaymentBean other = (PaymentBean) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = super.equals(obj) && 
            this.creditcardNumber == other.getCreditcardNumber() &&
            this.cvvNumber == other.getCvvNumber() &&
            ((this.expiryDate==null && other.getExpiryDate()==null) || 
             (this.expiryDate!=null &&
              this.expiryDate.equals(other.getExpiryDate()))) &&
            this.reservationId == other.getReservationId();
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = super.hashCode();
        _hashCode += new Long(getCreditcardNumber()).hashCode();
        _hashCode += getCvvNumber();
        if (getExpiryDate() != null) {
            _hashCode += getExpiryDate().hashCode();
        }
        _hashCode += new Long(getReservationId()).hashCode();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(PaymentBean.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://payment.model.goair", "PaymentBean"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("creditcardNumber");
        elemField.setXmlName(new javax.xml.namespace.QName("http://payment.model.goair", "creditcardNumber"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("cvvNumber");
        elemField.setXmlName(new javax.xml.namespace.QName("http://payment.model.goair", "cvvNumber"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("expiryDate");
        elemField.setXmlName(new javax.xml.namespace.QName("http://payment.model.goair", "expiryDate"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "string"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("reservationId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://payment.model.goair", "reservationId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "long"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}
