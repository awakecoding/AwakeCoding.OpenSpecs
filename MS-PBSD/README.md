# [MS-PBSD]: Publication Services Data Structure

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Overview](#Section_1.3)
  - [1.4 Relationship to Protocols and Other Structures](#Section_1.4)
  - [1.5 Applicability Statement](#Section_1.5)
  - [1.6 Versioning and Localization](#Section_1.6)
  - [1.7 Vendor-Extensible Fields](#Section_1.7)
</details>

<details>
<summary>2 Structures</summary>

- [2 Structures](#Section_2)
  - [2.1 Namespaces](#Section_2.1)
  - [2.2 Computer Information](#Section_2.2)
  - [2.3 Resource](#Section_2.3)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
  - [3.1 Publication Services Data with no Listed Services](#Section_3.1)
  - [3.2 Publication Services Data with Listed Resources](#Section_3.2)
</details>

<details>
<summary>4 Security</summary>

- [4 Security](#Section_4)
  - [4.1 Security Considerations for Implementers](#Section_4.1)
  - [4.2 Index Of Security Fields](#Section_4.2)
</details>

<details>
<summary>5 Appendix A: Full XML Schema</summary>

- [5 Appendix A: Full XML Schema](#Section_5)
</details>

<details>
<summary>6 Appendix B: Product Behavior</summary>

- [6 Appendix B: Product Behavior](#Section_6)
</details>

<details>
<summary>7 Change Tracking</summary>

- [7 Change Tracking](#Section_7)
</details>
<a id="Section_1"></a>
# 1 Introduction

[**Publication Services**](#gt_publication-services) enables computers to advertise (that is, publish) their presence and their resources as [**Web services**](#gt_web-service) over IP-based networks. By doing so, other computers can find (that is, discover) the Web services that have been published on the same network.

This document specifies the data, along with its structure, that computers use to describe themselves and the resources that are being offered.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_client"></a>
**client**: A computer on which the remote procedure call (RPC) client is executing.

<a id="gt_device"></a>
**device**: Any peripheral or part of a computer system that can send or receive data.

<a id="gt_domain-name"></a>
**domain name**: A domain name or a NetBIOS name that identifies a domain.

<a id="gt_endpoint"></a>
**endpoint**: In the context of a web service, a network target to which a SOAP message can be addressed. See [[WSADDR]](https://go.microsoft.com/fwlink/?LinkId=113065).

<a id="gt_netbios"></a>
**NetBIOS**: A particular network transport that is part of the LAN Manager protocol suite. [**NetBIOS**](#gt_netbios) uses a broadcast communication style that was applicable to early segmented local area networks. A protocol family including name resolution, datagram, and connection services. For more information, see [[RFC1001]](https://go.microsoft.com/fwlink/?LinkId=90260) and [[RFC1002]](https://go.microsoft.com/fwlink/?LinkId=90261).

<a id="gt_publication-services"></a>
**Publication Services**: A Microsoft Windows Devices Profile for Web Services (DPWS) service that enables computers to publish resources so that those resources can be discovered by other computers on the same network.

<a id="gt_service"></a>
**service**: A process or agent that is available on the network, offering resources or services for clients. Examples of services include file servers, web servers, and so on.

<a id="gt_web-service"></a>
**web service**: A software system designed to support interoperable machine-to-machine interaction over a network, using XML-based standards and open transport protocols.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[DPWS] Chans, S., Conti, D., Schlimmer, J., et al., "Devices Profile for Web Services", February 2006, [http://specs.xmlsoap.org/ws/2006/02/devprof/devicesprofile.pdf](https://go.microsoft.com/fwlink/?LinkId=127841)

[MS-DPWSSN] Microsoft Corporation, "[Devices Profile for Web Services (DPWS): Size Negotiation Extension](../MS-DPWSSN/MS-DPWSSN.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MSDN-PnP-X] Microsoft Corporation, "PnP X: Plug and Play Extensions for Windows Specification", [https://msdn.microsoft.com/en-us/windows/hardware/gg463082.aspx](https://go.microsoft.com/fwlink/?LinkId=227087)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[W3C-XSD] World Wide Web Consortium, "XML Schema Part 2: Datatypes Second Edition", 28 October 2004, [http://www.w3.org/TR/2004/REC-xmlschema-2-20041028](https://go.microsoft.com/fwlink/?LinkId=90563)

[WS-Discovery] Beatty, J., Kakivaya, G., Kemp D., et al., "Web Services Dynamic Discovery (WS-Discovery)", April 2005, [http://specs.xmlsoap.org/ws/2005/04/discovery/ws-discovery.pdf](https://go.microsoft.com/fwlink/?LinkId=90576)

[XMLNS] Bray, T., Hollander, D., Layman, A., et al., Eds., "Namespaces in XML 1.0 (Third Edition)", W3C Recommendation, December 2009, [https://www.w3.org/TR/2009/REC-xml-names-20091208/](https://go.microsoft.com/fwlink/?LinkId=191840)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-DPWSRP] Microsoft Corporation, "[Devices Profile for Web Services (DPWS): Shared Resource Publishing Data Structure](../MS-DPWSRP/MS-DPWSRP.md)".

[MS-HGRP] Microsoft Corporation, "[HomeGroup Protocol](../MS-HGRP/MS-HGRP.md)".

[MSDN-DPWS] Microsoft Corporation, "Understanding Devices Profile for Web Services, WS-Discovery, and SOAP-over-UDP", [http://msdn.microsoft.com/en-us/library/dd179231.aspx](https://go.microsoft.com/fwlink/?LinkId=227377)

[MSDN-WSD] Microsoft Corporation, "Web Services on Devices", [http://msdn.microsoft.com/en-us/library/bb756908.aspx](https://go.microsoft.com/fwlink/?LinkId=157498)

[WSADDR] Gudgin, M., Hadley, M., and Rogers, T., "Web Services Addressing (WS-Addressing) 1.0", W3C Recommendation, May 2006, [http://www.w3.org/2005/08/addressing](https://go.microsoft.com/fwlink/?LinkId=113065)

<a id="Section_1.3"></a>
## 1.3 Overview

The Devices Profile for Web Services (DPWS), as defined in [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841), specifies a well-structured messaging model that provides basic functionality such as discovery of an [**endpoint**](#gt_endpoint) [[WSADDR]](https://go.microsoft.com/fwlink/?LinkId=113065), metadata for that endpoint, and request/response messaging. [DPWS] specifies the role of clients, devices, and services. Clients discover services and communicate with their endpoints. Devices are special [**service**](#gt_service) endpoints that can host other services. [DPWS] defines metadata for both devices and the services hosted by those devices. Clients can request this metadata and send requests to specific endpoints described in the metadata.

This model fits the requirements of a computer. Computers are often set to be discoverable and advertise metadata that describes themselves and their resources to clients on a network. [**Publication Services**](#gt_publication-services) models a computer as a DPWS [**device**](#gt_device), and the resources on a computer are modeled as [**Web services**](#gt_web-service) within the same device. The information that describes a computer and the actual data associated with the resources are stored as part of the device metadata.

The Publication Services Data Structure document defines the organization used for the information that describes how a computer and its resources are represented within the DPWS device metadata.

For additional explanatory information about DPWS, see [[MSDN-DPWS]](https://go.microsoft.com/fwlink/?LinkId=227377). For information about the Microsoft implementation of DPWS, which is called Web Services for Devices (WSD), see [[MSDN-WSD]](https://go.microsoft.com/fwlink/?LinkId=157498).

<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

The [**Publication Services**](#gt_publication-services) data structure is built on [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) and relies on the Microsoft implementation of DPWS. For more information, see [[MSDN-WSD]](https://go.microsoft.com/fwlink/?LinkId=157498).

Because the number of resources on a computer and the data associated with them can increase over time, clients also implement the Size Negotiation Extension as specified in [MS-DPWSSN](../MS-DPWSSN/MS-DPWSSN.md) to be able to retrieve resources completely.<1>

The HomeGroup Protocol [MS-HGRP](../MS-HGRP/MS-HGRP.md), which is used to create a trust relationship that facilitates the advertising and publishing of content between machines in a home environment, and the Shell Publishing data structure [MS-DPWSRP](../MS-DPWSRP/MS-DPWSRP.md) use the Publication Services data structure to advertise their content and resources.

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

Use of this data structure is suitable for clients if:

- The [**client**](#gt_client) is a compliant DPWS implementation.
- The client requires communication with the DPWS representation of a computer and its resources.
- The client supports the Size Negotiation Extension [MS-DPWSSN](../MS-DPWSSN/MS-DPWSSN.md) and can receive messages longer than 32767 octets ([MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.1.5).
Use of this protocol is suitable for **service** implementations if:

- The [**service**](#gt_service) will represent itself as a DPWS-compliant computer on the network.
- The service supports the Size Negotiation Extension [MS-DPWSSN] and can send messages longer than 32767 octets.
<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

This data structure is not versioned and it does not explicitly support localization.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

This data structure does not define any additional vendor-extensible fields.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 Namespaces

This document defines and references various XML namespaces using the mechanisms specified in [[XMLNS]](https://go.microsoft.com/fwlink/?LinkId=191840). Even though this document associates a specific XML namespace prefix for each XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and not significant for interoperability.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| pub | http://schemas.microsoft.com/windows/pub/2005/07 | This document |
| pnpx | http://schemas.microsoft.com/windows/pnpx/2005/10 | [[MSDN-PnP-X]](https://go.microsoft.com/fwlink/?LinkId=227087) |
| wsd | http://schemas.xmlsoap.org/ws/2005/04/discovery | [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576) |
| wsdp | http://schemas.xmlsoap.org/ws/2006/02/devprof | [[DPWS]](https://go.microsoft.com/fwlink/?LinkId=127841) |
| xs | http://www.w3.org/2001/XMLSchema | [[W3C-XSD]](https://go.microsoft.com/fwlink/?LinkId=90563) |

<a id="Section_2.2"></a>
## 2.2 Computer Information

The [**Publication Services**](#gt_publication-services) Data Structure advertises three pieces of information about a computer:

- A type indicating that the [**device**](#gt_device) represents a computer
- The [**NetBIOS**](#gt_netbios) [**domain name**](#gt_domain-name) for the computer
- The NetBIOS computer name
<xs:simpleType name="DiscoveryTypeValues">

<xs:restriction base="xs:QName">

<xs:enumeration value="Computer" />

</xs:restriction>

</xs:simpleType>

<xs:element name="Computer" type="xs:string" minOccurs="0" />

| Element | Description |
| --- | --- |
| wsdp:Relationship/wsdp:Host/wsdp:Types | Indicator type for a device representation of a Publication Services-enabled computer (pub:Computer). |
| wsdp:Relationship/wsdp:Host/pub:Computer | NetBIOS information for the computer. |

NetBIOS information for the computer is formatted as follows:

- If the computer is domain joined:
<NetBIOS_Computer_Name>/Domain:<NetBIOS_Domain_Name>

- If the computer is in a workgroup:
<NetBIOS_Computer_Name>\Workgroup:<Workgroup_Name>

- Otherwise:
<NetBIOS_Computer_Name>\NotJoined

Note The pub:Computer element replaces the <any> element wildcard of the HostServiceType complex type, which is instantiated through the <Host> element of the DPWS schema.

<a id="Section_2.3"></a>
## 2.3 Resource

Each resource to be advertised by a [**Publication Services**](#gt_publication-services) [**device**](#gt_device) host as a [**service**](#gt_service) consists of two fields:

- Type
- Actual data
The resource type is used as the Types (wsdp:Relationship/wsdp:Hosted/wsdp:Types) implemented by a Host Service (see [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576)).

The Publication Services Data Structure defines a new element to enclose the actual data associated with the resource as follows.

<xs:element name="Resource" type="xs:string" minOccurs="0" />

| Element | Description |
| --- | --- |
| wsdp:Relationship/wsdp:Hosted/pub:Resource | Resource data |
| wsdp:Relationship/wsdp:Hosted/pub:Resource1 | Resource data continued |
| ... | ... |
| wsdp:Relationship/wsdp:Hosted/pub:ResourceN | Resource data continued |

If the data is more than 8192 octets ([MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.1.5), it can be split into multiple Resource elements. Clients that want to retrieve the full resource data must combine the data in the order implied by the element names.

**Note** The pub:Resource* elements replace the <any> element wildcard of the HostServiceType complex type, which is instantiated through the <Hosted> element of the DPWS schema.

<a id="Section_3"></a>
# 3 Structure Examples

<a id="Section_3.1"></a>
## 3.1 Publication Services Data with no Listed Services

This section contains an example of the [**Publication Services**](#gt_publication-services) data associated with a computer (that is, a [**device**](#gt_device)). The example data indicates that there are no services being advertised by the computer.

<?xml version="1.0" encoding="utf-8" ?>

<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsdp="http://schemas.xmlsoap.org/ws/2006/02/devprof" xmlns:pnpx="http://schemas.microsoft.com/windows/pnpx/2005/10" xmlns:pub="http://schemas.microsoft.com/windows/pub/2005/07">

<soap:Header>

<wsa:To>http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous</wsa:To>

<wsa:Action>http://schemas.xmlsoap.org/ws/2004/09/transfer/GetResponse</wsa:Action>

<wsa:MessageID>urn:uuid:8a07696e-8128-456c-af85-9a5008aa0446</wsa:MessageID>

<wsa:RelatesTo>urn:uuid:bac3eeec-5488-4a27-99c9-795d0651d914</wsa:RelatesTo>

</soap:Header>

<soap:Body>

<wsx:Metadata>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/ThisDevice">

<wsdp:ThisDevice>

<wsdp:FriendlyName>Contoso Publication Service Device Host</wsdp:FriendlyName>

<wsdp:FirmwareVersion>1.0</wsdp:FirmwareVersion>

<wsdp:SerialNumber>20050718</wsdp:SerialNumber>

</wsdp:ThisDevice>

</wsx:MetadataSection>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/ThisModel">

<wsdp:ThisModel>

<wsdp:Manufacturer>Contoso, Ltd</wsdp:Manufacturer>

<wsdp:ManufacturerUrl>http://www.contoso.com</wsdp:ManufacturerUrl>

<wsdp:ModelName>Contoso Publication Service</wsdp:ModelName>

<wsdp:ModelNumber>1</wsdp:ModelNumber>

<wsdp:ModelUrl>http://www.contoso.com</wsdp:ModelUrl>

<wsdp:PresentationUrl>http://www.contoso.com</wsdp:PresentationUrl>

<pnpx:DeviceCategory>Computers</pnpx:DeviceCategory>

</wsdp:ThisModel>

</wsx:MetadataSection>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/Relationship">

<wsdp:Relationship Type="http://schemas.xmlsoap.org/ws/2006/02/devprof/host">

<wsdp:Host>

<wsa:EndpointReference>

<wsa:Address>urn:uuid:95ce917d-9e37-4099-aee4-db3292041ea6</wsa:Address>

</wsa:EndpointReference>

<wsdp:Types>pub:Computer</wsdp:Types>

<wsdp:ServiceId>urn:uuid:95ce917d-9e37-4099-aee4-db3292041ea6</wsdp:ServiceId>

<pub:Computer>D-HAMILTON-1/Domain:CONTOSO_DOMAIN1</pub:Computer>

</wsdp:Host>

</wsdp:Relationship>

</wsx:MetadataSection>

</wsx:Metadata>

</soap:Body>

</soap:Envelope>

From the example data, the following lines make use of the Computer Information structure (section [2.2](#Section_2.2)):

<wsdp:Types>pub:Computer</wsdp:Types>

...

<pub:Computer>D-HAMILTON-1/Domain:CONTOSO_DOMAIN1</pub:Computer>

<a id="Section_3.2"></a>
## 3.2 Publication Services Data with Listed Resources

This section contains an example of the [**Publication Services**](#gt_publication-services) data associated with a computer (that is, a [**device**](#gt_device)) along with one [**service**](#gt_service) that is being advertised by that computer.

<?xml version="1.0" encoding="utf-8"?>

<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:wsa="http://schemas.xmlsoap.org/ws/2004/08/addressing" xmlns:wsx="http://schemas.xmlsoap.org/ws/2004/09/mex" xmlns:wsdp="http://schemas.xmlsoap.org/ws/2006/02/devprof" xmlns:pnpx="http://schemas.microsoft.com/windows/pnpx/2005/10" xmlns:pub="http://schemas.microsoft.com/windows/pub/2005/07">

<soap:Header>

<wsa:To>http://schemas.xmlsoap.org/ws/2004/08/addressing/role/anonymous</wsa:To>

<wsa:Action>http://schemas.xmlsoap.org/ws/2004/09/transfer/GetResponse</wsa:Action>

<wsa:MessageID>urn:uuid:009c39c2-5835-4660-a4bf-53c6fd9b96fd</wsa:MessageID>

<wsa:RelatesTo>urn:uuid:fc7cdb58-30b4-4e0d-a309-5bd7db689a0c</wsa:RelatesTo>

</soap:Header>

<soap:Body>

<wsx:Metadata>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/ThisDevice">

<wsdp:ThisDevice>

<wsdp:FriendlyName>Contoso Publication Service Device Host</wsdp:FriendlyName>

<wsdp:FirmwareVersion>1.0</wsdp:FirmwareVersion>

<wsdp:SerialNumber>20050718</wsdp:SerialNumber>

</wsdp:ThisDevice>

</wsx:MetadataSection>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/ThisModel">

<wsdp:ThisModel>

<wsdp:Manufacturer>Contoso, Ltd</wsdp:Manufacturer>

<wsdp:ManufacturerUrl>http://www.contoso.com</wsdp:ManufacturerUrl>

<wsdp:ModelName>Contoso Publication Service</wsdp:ModelName>

<wsdp:ModelNumber>1</wsdp:ModelNumber>

<wsdp:ModelUrl>http://www.contoso.com</wsdp:ModelUrl>

<wsdp:PresentationUrl>http://www.contoso.com</wsdp:PresentationUrl>

<pnpx:DeviceCategory>Computers</pnpx:DeviceCategory>

</wsdp:ThisModel>

</wsx:MetadataSection>

<wsx:MetadataSection Dialect="http://schemas.xmlsoap.org/ws/2006/02/devprof/Relationship">

<wsdp:Relationship Type="http://schemas.xmlsoap.org/ws/2006/02/devprof/host">

<wsdp:Host>

<wsa:EndpointReference>

<wsa:Address>urn:uuid:95ce917d-9e37-4099-aee4-db3292041ea6</wsa:Address>

</wsa:EndpointReference>

<wsdp:Types>pub:Computer</wsdp:Types>

<wsdp:ServiceId>urn:uuid:95ce917d-9e37-4099-aee4-db3292041ea6</wsdp:ServiceId>

<pub:Computer>D-HAMILTON-1/Domain:CONTOSO_DOMAIN1</pub:Computer>

</wsdp:Host>

<wsdp:Hosted>

<wsa:EndpointReference>

<wsa:Address>urn:uuid:95ce917d-9e37-4099-aee4-db3292041ea6</wsa:Address>

</wsa:EndpointReference>

<wsdp:Types>pub:ShellPublishing</wsdp:Types>

<wsdp:ServiceId>fdid:Provider%5CMicrosoft.Base.Publication/Publication%5CExplorer/C692EF15-7F02-42E9-9FA9-D5F313749B04_S-1-5-21-738895527-329673414-497557404-1000</wsdp:ServiceId>

<pub:Resource>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</pub:Resource>

<pub:Resource1>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</pub:Resource1>

<pub:Resource2>WCfU3BofYTXgsXNr3ikT3JZcccgdhbCNEYS/CuMIHi5cKGLCIPDcSg7P3VRyx1VzDOW170YhGD7Pa+NJDFeuGO73NiEaCtTljULnyYlqtQokSdeYJJJGqs6g6nd8iLGQ0857nG/PMxvCzdirzSa1hxK</pub:Resource2>

</wsdp:Hosted>

</wsdp:Relationship>

</wsx:MetadataSection>

</wsx:Metadata>

</soap:Body>

</soap:Envelope>

From the example data, the following lines make use of the Computer Information structure (section [2.2](#Section_2.2)):

<wsdp:Types>pub:Computer</wsdp:Types>

...

<pub:Computer>D-HAMILTON-1/Domain:CONTOSO_DOMAIN1</pub:Computer>

Also from the example data, the Resource structure (section [2.3](#Section_2.3)) is demonstrated in the lines that start with "<pub:Resource>", "<pub:Resource1>", and "<pub:Resource2>".

<a id="Section_4"></a>
# 4 Security

<a id="Section_4.1"></a>
## 4.1 Security Considerations for Implementers

[**Publication Services**](#gt_publication-services) does not provide any security to protect the data that is being advertised or to ensure its authenticity. Applications that need to secure their advertised resources typically implement their security policy on top of Publication Service data structures.

<a id="Section_4.2"></a>
## 4.2 Index Of Security Fields

None.

<a id="Section_5"></a>
# 5 Appendix A: Full XML Schema

For ease of implementation, the following is the full XML schema for this protocol.

<?xml version="1.0" encoding="UTF-8"?>

<xs:schema

targetNamespace="http://schemas.microsoft.com/windows/pub/2005/07"

xmlns:pub="http://schemas.microsoft.com/windows/pub/2005/07"

xmlns:xs="http://www.w3.org/2001/XMLSchema"

elementFormDefault="qualified"

blockDefault="#all" >

<xs:simpleType name="DiscoveryTypeValues">

<xs:restriction base="xs:QName">

<xs:enumeration value="pub:Computer"/>

</xs:restriction>

</xs:simpleType>

<xs:element name="Computer" type="xs:string" minOccurs="0" />

<xs:element name="Resource" type="xs:string" minOccurs="0" />

</xs:schema>

<a id="Section_6"></a>
# 6 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows Vista operating system
- Windows Server 2008 operating system
- Windows 7 operating system
- Windows Server 2008 R2 operating system
- Windows 8 operating system
- Windows Server 2012 operating system
- Windows 8.1 operating system
- Windows Server 2012 R2 operating system
- Windows 10 operating system
- Windows Server 2016 operating system
- Windows Server operating system
- Windows Server 2019 operating system
- Windows Server 2022 operating system
- Windows 11 operating system
- Windows Server 2025 operating system
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 1.4: On Windows Vista and Windows Server 2008, the maximum metadata size that the device representation of a computer can be is 32767 octets ([MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.1.5). This is because the extension that is documented in [MS-DPWSSN](../MS-DPWSSN/MS-DPWSSN.md) is not supported on these operating systems.

<a id="Section_7"></a>
# 7 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [6](#Section_6) Appendix B: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

