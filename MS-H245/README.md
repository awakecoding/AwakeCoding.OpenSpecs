# [MS-H245]: H.245 Protocol: Microsoft Extensions

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
    - [2.2.1 DVI4 Packet Format](#Section_2.2.1)
    - [2.2.2 logicalChannelSwitchingCapability](#Section_2.2.2)
    - [2.2.3 t120DynamicPortCapability](#Section_2.2.3)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Network Capture](#Section_4.1)
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

This specification describes the Microsoft extensions for the H.245 Protocol. This document provides a differential view between the H.245 Protocol: Microsoft Extensions and the H.245 International Telecommunication Union (ITU) standards, as specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170).

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_digital-video-interactive-4-dvi4"></a>
**Digital Video Interactive 4 (DVI4)**: A file format used to transfer audio data. Also known as the DVI ADPCM Wave Type.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](http://msdn.microsoft.com/en-us/library/dn781092.aspx).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[H245-1.3] ITU-T, "Control protocol for multimedia communication", Recommendation H.245, version 1.3, February 1998, [http://www.itu.int/rec/T-REC-H.245-199802-S/en](https://go.microsoft.com/fwlink/?LinkId=161170)

[H323-1.2] ITU-T, "Packet-based multimedia communications systems", Recommendation H.323, version 1.2, February 1998, [http://www.itu.int/rec/T-REC-H.245-199802-S/en](https://go.microsoft.com/fwlink/?LinkId=159768)

[RFC1890] Schulzrinne, H., "RTP Profile for Audio and Video Conferences with Minimal Control", RFC 1890, January 1996, [http://www.ietf.org/rfc/rfc1890.txt](https://go.microsoft.com/fwlink/?LinkId=93310)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[T120] ITU-T, "Data protocols for multimedia conferencing", Recommendation T.120, January 2007, [http://www.itu.int/rec/T-REC-T.120/en](https://go.microsoft.com/fwlink/?LinkId=93311)

**Note** There is a charge to download the specification.

[T123] ITU-T, "Network-Specific Data Protocol Stacks for Multimedia Conferencing", Recommendation T.123, May 1999, [http://www.itu.int/rec/T-REC-T.123/en](https://go.microsoft.com/fwlink/?LinkId=90541)

**Note** There is a charge to download the specification.

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The H.245 Protocol, as specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170), is the control protocol for multimedia communication contained within the H.323 specification. H.323, as specified in [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768), is a protocol suite defined by the ITU and used for Voice over IP (VoIP) and video conferencing.

The Microsoft TAPI3.0 product (included in Windows 2000 operating system) implemented an H.323 endpoint following the ITU protocol specification. TAPI3.0 uses the [**Digital Video Interactive 4 (DVI4)**](#gt_digital-video-interactive-4-dvi4) audio codec, which is not one of the codecs defined in [H323-1.2]. TAPI3.0 uses the H.245 Protocol: Microsoft Extensions to include DVI4 as one of the codecs available for negotiation during call setup time.<1>

The H.323 Protocol includes the H.245 terminal capability negotiation procedure, as specified in [H323-1.2] and [H245-1.3]. Microsoft has added support to this procedure for the Digital Video Interactive 4 (DVI4) audio codec at the 16-kilohertz (kHz) sample rate. If the Abstract Syntax Notation One (ASN.1) **AudioCapability** message included in the H.245 negotiation procedure contains a *nonStandardParameter*, with *nonStandardIdentifier* set to the Object Identifier `"{ 1 3 6 1 4 1 311 19 2 }"`, and data set to the Octet String `"11 00 01 00 80 3E 00 00 40 1F 00 00 01 00 04 00 02 00 14 00"`, the 16-kHz DVI4 codec is supported.

[H245-1.3] has a capability that allows the client to change the logical channel that is rendered. The H.245 Protocol: Microsoft Extensions do not implement this functionality, as specified in section [2.2.2](#Section_2.2.2).

[H245-1.3] has a capability that allows the client to place a [[T120]](https://go.microsoft.com/fwlink/?LinkId=93311) call to a dynamic transport address, instead of the standard well-known port address described in [T120]. The H.245 Protocol: Microsoft Extensions do not implement this functionality as specified in section [2.2.3](#Section_2.2.3).

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

The H.245 Protocol is contained within the H.323 Protocol suite (as specified in [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768)) and uses TCP/IP as a transport.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

There are no prerequisites other than those specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol extension is applicable to any implementation that uses both the [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768) Protocol set (including [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170)) and the [**DVI4**](#gt_digital-video-interactive-4-dvi4) audio codec.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

H.245 Protocol: Microsoft Extensions have no versioning or capability negotiation functionality.

<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

None.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

None.

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

There are no changes to the transport mechanism defined in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

This extension allows the [**DVI4**](#gt_digital-video-interactive-4-dvi4) audio codec to be utilized with the H.323 Protocol [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768). This extension is implemented according to the H.245 Extension Procedure, as specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) Appendix IV.

Microsoft has added support to the H.245 terminal capability negotiation procedure to allow for use of the Digital Video Interactive 4 (DVI4) audio codec at the 16-kHz sample rate.

Support for the 16-kHz DVI4 codec MUST be indicated via the following steps:

- The Abstract Syntax Notation One (ASN.1) **AudioCapability** message included in the H.245 negotiation procedure MUST contain a **nonStandardData** of type **nonStandardParameter Sequence** as described in Annex A of [H245-1.3].
- The *nonStandardParameter* MUST be set to include the following items:
- The **OBJECT IDENTIFIER** (**nonStandardIdentifier**) MUST be set using the following ANS.1 value.
{ 1 3 6 1 4 1 311 19 2 }

- The *OCTET STRING* (**data**) portion MUST be set to the following value.
11 00 01 00 80 3E 00 00 40 1F 00 00 01 00 04 00 02 00 14 00

<a id="Section_2.2.1"></a>
### 2.2.1 DVI4 Packet Format

The H.245 Protocol: Microsoft Extensions implement [**DVI4**](#gt_digital-video-interactive-4-dvi4) exactly as specified in [[RFC1890]](https://go.microsoft.com/fwlink/?LinkId=93310) section 4.4.2.

<a id="Section_2.2.2"></a>
### 2.2.2 logicalChannelSwitchingCapability

[[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) section 6, Messages: Syntax specifies an **H2250Capability** structure. This structure contains a **logicalChannelSwitchingCapability** field ([H245-1.3] section 7.2.2.4 Multiplex Capabilities). This field allows the client to change the logical channel that is rendered, based on criteria specified in [H245-1.3]. The H.245 Protocol: Microsoft Extensions do not implement this functionality.

When the **H2250Capability** structure is sent using the H.245 Protocol: Microsoft Extensions, the **logicalChannelSwitchingCapability** field is EMPTY ( NULL ). This field MUST be set to NULL when sent, and MUST be ignored when received. This applies to client and server roles.

<a id="Section_2.2.3"></a>
### 2.2.3 t120DynamicPortCapability

[[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) section 6, Messages: Syntax specifies an **H2250Capability** structure. This structure contains a **t120DynamicPortCapability** field ([H245-1.3] section 7.2.2.4 Multiplex Capabilities). This field allows the client to place a [[T120]](https://go.microsoft.com/fwlink/?LinkId=93311) call to a dynamic transport address instead of the standard well-known port address as defined in [[T123]](https://go.microsoft.com/fwlink/?LinkId=90541). The H.245 Protocol: Microsoft Extensions do not implement this functionality.

When the **H2250Capability** structure is sent using the H.245 Protocol: Microsoft Extensions, the **t120DynamicPortCapability** field is EMPTY (NULL). This field MUST be set to NULL when sent, and MUST be ignored when received. This applies to client and server roles.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

H.245 Protocol: Microsoft Extensions do not change the data model specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

The H.245 Protocol: Microsoft Extensions have no additional timers beyond those specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

There are no additional initialization steps beyond those specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

The H.245 Protocol: Microsoft Extensions have no higher-layer triggered events beyond those specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_3.1.5"></a>
### 3.1.5 Processing Events and Sequencing Rules

The H.245 Protocol: Microsoft Extensions have no additional sequencing rules beyond those specified in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Network Capture

The information below illustrates a typical network traffic capture specifying the 16-kHz DVI4 codec capability between two nodes.

ReceiveAudioCapability : Microsoft Extension:

the 16-kHz DVI4 codec is supported

00 09 2B 06 01 04 01 82 37 13 02 14 ..+....7...

11 00 01 00 80 3E 00 00 40 1F 00 00 ....>..@...

01 00 04 00 02 00 14 00 ........

ChoiceValue: 0 -> 0

nonStandardData( NonStandardParameter): ->

00 09 2B 06 01 04 01 82 37 13 02 14

11 00 01 00 80 3E 00 00 40 1F 00 00

01 00 04 00 02 00 14 00

Align: No Padding -> 00

ProtocolIdentifierLength: 9 (0x09) -> 09

object (OBJECT_IDENTIFIER) :

1.3.6.1.4.1.311.19.2 -> 2B 06 01 04 01 82 37 13 02

First: 43 (0x2B) -> 2B

Final: 6 (0x06) -> 06

Final: 1 (0x01) -> 01

Final: 4 (0x04) -> 04

Final: 1 (0x01) -> 01

Part: 130 (0x82) -> 82

Final: 55 (0x37) -> 37

Final: 19 (0x13) -> 13

Final: 2 (0x02) -> 02

data: (length: 20) ->

14 11 00 01 00 80 3E 00 00 40 1F 00

00 01 00 04 00 02 00 14 00

Determinant Length: 20 -> 0x14

Value (OCTECT STRING): Binary Large Object (20 Bytes) ->

11 00 01 00 80 3E 00 00 40 1F

00 00 01 00 04 00 02 00 14 00

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

The H.245 Protocol: Microsoft Extensions have no additional security considerations beyond those specified or implied in [[H245-1.3]](https://go.microsoft.com/fwlink/?LinkId=161170) and [[H323-1.2]](https://go.microsoft.com/fwlink/?LinkId=159768).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include released service packs.

- Windows NT operating system
- Windows 2000 operating system
- Windows XP operating system
- Windows Server 2003 operating system
Exceptions, if any, are noted below. If a service pack or Quick Fix Engineering (QFE) number appears with the product version, behavior changed in that service pack or QFE. The new behavior also applies to subsequent service packs of the product unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 1.3: Note that the [**DVI4**](#gt_digital-video-interactive-4-dvi4) codec, while part of other Microsoft APIs that are included in Windows, is used only in the Microsoft TAPI implementation.

<a id="Section_7"></a>
# 7 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.

