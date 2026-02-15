# [MS-SSDP]: SSDP: Networked Home Entertainment Devices (NHED) Extensions

Last updated: 6/1/2017

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Overview](#Section_1.3)
  - [1.4 Relationship to Other Protocols](#Section_1.4)
  - [1.5 Prerequisites/Preconditions](#Section_1.5)
  - [1.6 Applicability Statement](#Section_1.6)
  - [1.7 Versioning and Capability Negotiation](#Section_1.7)
  - [1.8 Vendor-Extensible Fields](#Section_1.8)
  - [1.9 Standards Assignments](#Section_1.9)
</details>

<details>
<summary>2 Messages</summary>

- [2 Messages](#Section_2)
  - [2.1 Transport](#Section_2.1)
  - [2.2 Message Syntax](#Section_2.2)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Device Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Control Point Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
</details>

<details>
<summary>5 Security</summary>

- [5 Security](#Section_5)
  - [5.1 Security Considerations for Implementers](#Section_5.1)
  - [5.2 Index of Security Parameters](#Section_5.2)
</details>

<details>
<summary>6 Appendix A: Product Behavior</summary>

- [6 Appendix A: Product Behavior](#Section_6)
</details>

<details>
<summary>7 Change Tracking</summary>

- [7 Change Tracking](#Section_7)
</details>
<a id="Section_1"></a>
# 1 Introduction

The SSDP: Networked Home Entertainment Devices (NHED) Extensions are a set of extensions to the Simple Service Discovery Protocol (SSDP), as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554), and are used to detect devices on a home network. In this specification, the SSDP: Networked Home Entertainment Devices (NHED) Extensions are referred to as SSDPE.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_uniform-resource-identifier-uri"></a>
**Uniform Resource Identifier (URI)**: A string that identifies a resource. The URI is an addressing mechanism defined in Internet Engineering Task Force (IETF) Uniform Resource Identifier (URI): Generic Syntax [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453).

<a id="gt_universal-plug-and-play-upnp"></a>
**Universal Plug and Play (UPnP)**: A set of computer network protocols, published by the UPnP Forum [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553), that allow devices to connect seamlessly and that simplify the implementation of networks in home (data sharing, communications, and entertainment) and corporate environments. UPnP achieves this by defining and publishing UPnP device control protocols built upon open, Internet-based communication standards.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](http://msdn.microsoft.com/en-us/library/dn781092.aspx).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC3986] Berners-Lee, T., Fielding, R., and Masinter, L., "Uniform Resource Identifier (URI): Generic Syntax", STD 66, RFC 3986, January 2005, [http://www.rfc-editor.org/rfc/rfc3986.txt](https://go.microsoft.com/fwlink/?LinkId=90453)

[UPNPARCH1] UPnP Forum, "UPnP Device Architecture 1.0", October 2008, [http://www.upnp.org/specs/arch/UPnP-arch-DeviceArchitecture-v1.0.pdf](https://go.microsoft.com/fwlink/?LinkId=90554)

[UPnP] UPnP Forum, "Standards", [http://upnp.org/sdcps-and-certification/standards/sdcps/](https://go.microsoft.com/fwlink/?LinkId=90553)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[SSDP1] Goland, Yaron Y., Cai, T., Leach, P., Gu, Y., and Albright, S., "Simple Service Discovery Protocol (SSDP)", 1999, [http://tools.ietf.org/html/draft-cai-ssdp-v1-03](https://go.microsoft.com/fwlink/?LinkId=94665)

<a id="Section_1.3"></a>
## 1.3 Overview

SSDP (as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554)) is used to detect [**Universal Plug and Play**](#gt_universal-plug-and-play-upnp) (as specified in [[UPnP]](https://go.microsoft.com/fwlink/?LinkId=90553)) devices on a network. SSDP is maintained by the UPnP Forum and is published by the UPnP Implementers Corporation.

The SSDP: Networked Home Entertainment Devices (NHED) Extensions, also known as SSDPE, provide a mechanism for a control point to discover a device on the network without requiring the device to implement a complete SSDP stack. SSDP is simplified by removing the requirement for a description document (substituted with device-specific information in an Alternate Location (AL) header in each announcement) and by removing the need for a multicast listener (substituted with frequent periodic announcements).

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The SSDP: Networked Home Entertainment Devices (NHED) Extensions depend on protocols described in section 1.1 of [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554), specifically:

- HTTP (Multicast over UDP) (HTTPMU)
- Universal Datagram Protocol (UDP)
- Internet Protocol (IP)
<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

The SSDP: Networked Home Entertainment Devices (NHED) Extensions have no additional prerequisites/preconditions beyond what is required for SSDP, as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The SSDP: Networked Home Entertainment Devices (NHED) Extensions provide a mechanism for a control point to discover a device on the network without requiring the device to implement a complete SSDP stack.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

The AL header (as specified in [[SSDP1]](https://go.microsoft.com/fwlink/?LinkId=94665)) in the ssdp:alive message contains a bracketed list of [**URIs**](#gt_uniform-resource-identifier-uri) (as specified in [[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453)). The vendor can extend that list with any URIs that comply with the rules specified in [RFC3986].

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

There are no standards assignments other than what is specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The SSDP: Networked Home Entertainment Devices (NHED) Extensions MUST follow the Simple Service Discovery Protocol discovery advertisement messages syntax, as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554) section 1.1, with the following exceptions:

- The LOCATION header MUST contain the single character "*".
- The AL header (as specified by [[SSDP1]](https://go.microsoft.com/fwlink/?LinkId=94665)) is required and MUST contain a list of [**URIs**](#gt_uniform-resource-identifier-uri) ([[RFC3986]](https://go.microsoft.com/fwlink/?LinkId=90453)), with each URI framed by the characters "<" and ">".
The SSDP: Networked Home Entertainment Devices (NHED) Extensions SHOULD NOT implement the Simple Service Discovery Protocol discovery search messages syntax as specified in [UPNPARCH1] section 1.2.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Device Details

SSDP (as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554)) is used for device discovery between control points and devices. On the device, specific messages are multicast.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

No abstract data model is required.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

Because the SSDP: Networked Home Entertainment Devices (NHED) Extensions are implemented such that the traditional SSDP search does not exist on the device, the device SHOULD send ssdp:alive messages on a periodic basis that is more frequent than the Simple Service Discovery Protocol default.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.2"></a>
## 3.2 Control Point Details

SSDP is used for device discovery between control points (as specified in [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554)) and devices (as specified in [UPNPARCH1]). The control point listens for multicast messages from the device.

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

No abstract data model is required.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

No timers are required.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_4"></a>
# 4 Protocol Examples

A new device is set up and plugged in to the home network for the first time. When it is turned on, the device first sends over port 1900 a UDP multicast message of ssdp:byebye, and then, immediately afterward, a message of ssdp:alive. The ssdp:byebye message is sent just before the ssdp:alive message to ensure cancellation of any previously sent ssdp:alive message.

The following examples could be used for a particular Microsoft Xbox 360 device.

NOTIFY * HTTP/1.1

HOST:239.255.255.250:1900

NT:urn:schemas-microsoft-com:nhed:presence:1

NTS:ssdp:byebye

LOCATION:*

USN:uuid:00000000-0000-0000-0200-00125A8A0960::urn:schemas-microsoft-

com:nhed:presence:1

NOTIFY * HTTP/1.1

HOST:239.255.255.250:1900

NT:urn:schemas-microsoft-com:nhed:presence:1

NTS:ssdp:alive

LOCATION:*

CACHE-CONTROL:max-age=4

AL:<urn:schemas-microsoft-com:nhed:attributes?type=X02&firmwarever=

5766.0&udn=uuid:10000000-0000-0000-0200-00125A8A0960>

USN:uuid:00000000-0000-0000-0200-00125A8A0960::urn:schemas-microsoft-

com:nhed:presence:1

SERVER:dashboard/1.0 UpnP/1.0 xbox/2.0

**Note** In these examples, the NT, USN, and AL header values are placeholders to be replaced by application-specific values.

The device continues to resend these messages every 5 seconds until a control point that is listening on the network for this ssdp:alive message responds with the appropriate behavior. The contract between the control point and the device for the expected control point response behavior is outside the scope of this protocol. However, as an example, a device could listen on an agreed-upon TCP port, and when the control point connects to this TCP port (in response to having received a device ssdp:alive message) the device could assume it has been discovered and cease sending the SSDP messages.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The SSDP: Networked Home Entertainment Devices (NHED) Extensions do not specify anything beyond what is specified by [[UPNPARCH1]](https://go.microsoft.com/fwlink/?LinkId=90554).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

There are no security parameters for the SSDP: Networked Home Entertainment Devices (NHED) Extensions.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include released service packs.

- Windows Vista operating system
- Windows 7 operating system
- Windows 8 operating system
- Windows 8.1 operating system
Exceptions, if any, are noted below. If a service pack or Quick Fix Engineering (QFE) number appears with the product version, behavior changed in that service pack or QFE. The new behavior also applies to subsequent service packs of the product unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_7"></a>
# 7 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.

