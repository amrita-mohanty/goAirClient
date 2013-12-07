/**
 * Booking.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package goair.model.booking;

public class Booking  implements java.io.Serializable {
    private goair.model.customer.Customer customerBean;

    private goair.model.flight.Flight flightBean;

    private int reservationId;

    public Booking() {
    }

    public Booking(
           goair.model.customer.Customer customerBean,
           goair.model.flight.Flight flightBean,
           int reservationId) {
           this.customerBean = customerBean;
           this.flightBean = flightBean;
           this.reservationId = reservationId;
    }


    /**
     * Gets the customerBean value for this Booking.
     * 
     * @return customerBean
     */
    public goair.model.customer.Customer getCustomerBean() {
        return customerBean;
    }


    /**
     * Sets the customerBean value for this Booking.
     * 
     * @param customerBean
     */
    public void setCustomerBean(goair.model.customer.Customer customerBean) {
        this.customerBean = customerBean;
    }


    /**
     * Gets the flightBean value for this Booking.
     * 
     * @return flightBean
     */
    public goair.model.flight.Flight getFlightBean() {
        return flightBean;
    }


    /**
     * Sets the flightBean value for this Booking.
     * 
     * @param flightBean
     */
    public void setFlightBean(goair.model.flight.Flight flightBean) {
        this.flightBean = flightBean;
    }


    /**
     * Gets the reservationId value for this Booking.
     * 
     * @return reservationId
     */
    public int getReservationId() {
        return reservationId;
    }


    /**
     * Sets the reservationId value for this Booking.
     * 
     * @param reservationId
     */
    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof Booking)) return false;
        Booking other = (Booking) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.customerBean==null && other.getCustomerBean()==null) || 
             (this.customerBean!=null &&
              this.customerBean.equals(other.getCustomerBean()))) &&
            ((this.flightBean==null && other.getFlightBean()==null) || 
             (this.flightBean!=null &&
              this.flightBean.equals(other.getFlightBean()))) &&
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
        int _hashCode = 1;
        if (getCustomerBean() != null) {
            _hashCode += getCustomerBean().hashCode();
        }
        if (getFlightBean() != null) {
            _hashCode += getFlightBean().hashCode();
        }
        _hashCode += getReservationId();
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(Booking.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://booking.model.goair", "Booking"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("customerBean");
        elemField.setXmlName(new javax.xml.namespace.QName("http://booking.model.goair", "customerBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://customer.model.goair", "Customer"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("flightBean");
        elemField.setXmlName(new javax.xml.namespace.QName("http://booking.model.goair", "flightBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://flight.model.goair", "Flight"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
        elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("reservationId");
        elemField.setXmlName(new javax.xml.namespace.QName("http://booking.model.goair", "reservationId"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://www.w3.org/2001/XMLSchema", "int"));
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
