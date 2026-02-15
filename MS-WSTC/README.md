# [MS-WSTC]: WS-Discovery: Termination Criteria Protocol Extensions

Last updated: 3/13/2019

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
  - [2.2 Common Message Syntax](#Section_2.2)
    - [2.2.1 Namespaces](#Section_2.2.1)
    - [2.2.2 Messages](#Section_2.2.2)
    - [2.2.3 Elements](#Section_2.2.3)
      - [2.2.3.1 <MaxResults>](#Section_2.2.3.1)
      - [2.2.3.2 <Duration>](#Section_2.2.3.2)
    - [2.2.4 Complex Types](#Section_2.2.4)
    - [2.2.5 Simple Types](#Section_2.2.5)
    - [2.2.6 Attributes](#Section_2.2.6)
    - [2.2.7 Groups](#Section_2.2.7)
    - [2.2.8 Attribute Groups](#Section_2.2.8)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Server Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
      - [3.1.3.1 Initialization Due to Receipt of a Probe Message](#Section_3.1.3.1)
      - [3.1.3.2 Initialization Due to Receipt of a Resolve Message](#Section_3.1.3.2)
    - [3.1.4 Message Processing Events and Sequencing Rules](#Section_3.1.4)
    - [3.1.5 Timer Events](#Section_3.1.5)
    - [3.1.6 Other Local Events](#Section_3.1.6)
  - [3.2 Client Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Message Processing Events and Sequencing Rules](#Section_3.2.4)
      - [3.2.4.1 Probe Operation](#Section_3.2.4.1)
      - [3.2.4.2 Resolve Operation](#Section_3.2.4.2)
    - [3.2.5 Timer Events](#Section_3.2.5)
    - [3.2.6 Other Local Events](#Section_3.2.6)
</details>

<details>
<summary>4 Protocol Examples</summary>

- [4 Protocol Examples](#Section_4)
  - [4.1 Probe Message Example](#Section_4.1)
  - [4.2 Resolve Message Example](#Section_4.2)
</details>

<details>
<summary>5 Security</summary>

- [5 Security](#Section_5)
  - [5.1 Security Considerations for Implementers](#Section_5.1)
  - [5.2 Index of Security Parameters](#Section_5.2)
</details>

<details>
<summary>6 Appendix A: Full WSDL</summary>

- [6 Appendix A: Full WSDL](#Section_6)
</details>

<details>
<summary>7 Appendix B: Product Behavior</summary>

- [7 Appendix B: Product Behavior](#Section_7)
</details>

<details>
<summary>8 Appendix C: Protocol Schema</summary>

- [8 Appendix C: Protocol Schema](#Section_8)
</details>

<details>
<summary>9 Change Tracking</summary>

- [9 Change Tracking](#Section_9)
</details>
<a id="Section_1"></a>
# 1 Introduction

The WS-Discovery: Termination Criteria Protocol Extensions specify an extension to the [**WS-Discovery**](#gt_ws-discovery) protocol for sending and receiving a [**termination criterion**](#gt_termination-criterion) as part of WS-Discovery [**Probe**](#gt_probe) and [**Resolve**](#gt_resolve) messages. The termination criterion allows a [**Target Service host**](#gt_target-service-host) to be aware of constraints that the [**client**](#gt_client) is operating under when it is looking for a [**Target Service**](#gt_target-service). A Target Service host can use this information to determine whether a response is sent to the client, thus saving network bandwidth by not transmitting a response that the client will ignore.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_client"></a>
**client**: The term "Client" that is defined in [[WS-Discovery1.1]](https://go.microsoft.com/fwlink/?LinkId=148805).

<a id="gt_find-criteria"></a>
**find criteria**: The criterion that is sent in a [**Probe**](#gt_probe) message consisting of [**Type**](#gt_type) and Scopes, and that is used by [**clients**](#gt_client) to locate [**Target Services**](#gt_target-service).

<a id="gt_probe"></a>
**probe**: The Web Services Dynamic Discovery (WS-Discovery) protocol message sent by a [**client**](#gt_client) to discover content, as defined in [WS-Discovery1.1].

<a id="gt_probe-match"></a>
**Probe Match**: A [**WS-Discovery**](#gt_ws-discovery) message, as defined in [WS-Discovery1.1].

<a id="gt_resolve"></a>
**Resolve**: A [**WS-Discovery**](#gt_ws-discovery) message, as defined in [WS-Discovery1.1].

<a id="gt_resolve-match"></a>
**Resolve Match**: A [**WS-Discovery**](#gt_ws-discovery) message, as defined in [WS-Discovery1.1].

<a id="gt_target-service"></a>
**Target Service**: The term "Target Service" that is defined in [WS-Discovery1.1].

<a id="gt_target-service-host"></a>
**Target Service host**: A process or agent that has knowledge of multiple [**Target Services**](#gt_target-service). A [**Target Service host**](#gt_target-service-host) is responsible for the discovery of these [**Target Services**](#gt_target-service); it implements the [**WS-Discovery**](#gt_ws-discovery) protocol and responds to discovery messages on behalf of these [**Target Services**](#gt_target-service).

<a id="gt_termination-criterion"></a>
**termination criterion**: A set of constraints placed on a search operation by the [**client**](#gt_client). These constraints can include the duration within which the search operation should complete, and the maximum number of responses the [**client**](#gt_client) is looking for.

<a id="gt_type"></a>
**Type**: The term "Type" that is defined in [WS-Discovery1.1].

<a id="gt_universally-unique-identifier-uuid"></a>
**universally unique identifier (UUID)**: A 128-bit value. UUIDs can be used for multiple purposes, from tagging objects with an extremely short lifetime, to reliably identifying very persistent objects in cross-process communication such as client and server interfaces, manager entry-point vectors, and RPC objects. UUIDs are highly likely to be unique. UUIDs are also known as globally unique identifiers (GUIDs) and these terms are used interchangeably in the Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the UUID. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the UUID.

<a id="gt_ws-discovery"></a>
**WS-Discovery**: This term refers to the specific version of the [**WS-Discovery**](#gt_ws-discovery) protocol that the implementer is taking a dependency on. This term can refer to any of the supported protocol versions that are specified in section 1.7.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[WS-Discovery1.1] Modi, V., and Kemp, D., "Web Services Dynamic Discovery (WS-Discovery) Version 1.1", OASIS Status: Public Review, January 2009, [http://docs.oasis-open.org/ws-dd/discovery/1.1/pr-01/wsdd-discovery-1.1-spec-pr-01.pdf](https://go.microsoft.com/fwlink/?LinkId=148805)

[WS-Discovery] Beatty, J., Kakivaya, G., Kemp D., et al., "Web Services Dynamic Discovery (WS-Discovery)", April 2005, [http://specs.xmlsoap.org/ws/2005/04/discovery/ws-discovery.pdf](https://go.microsoft.com/fwlink/?LinkId=90576)

[WSDL] Christensen, E., Curbera, F., Meredith, G., and Weerawarana, S., "Web Services Description Language (WSDL) 1.1", W3C Note, March 2001, [http://www.w3.org/TR/2001/NOTE-wsdl-20010315](https://go.microsoft.com/fwlink/?LinkId=90577)

[XMLNS-2ED] Bray, T., Hollander, D., Layman, A., and Tobin, R., Eds., "Namespaces in XML 1.0 (Second Edition)", W3C Recommendation, August 2006, [http://www.w3.org/TR/2006/REC-xml-names-20060816/](https://go.microsoft.com/fwlink/?LinkId=90602)

[XMLSCHEMA1] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-1-20010502/](https://go.microsoft.com/fwlink/?LinkId=90608)

[XMLSCHEMA2] Biron, P.V., Ed. and Malhotra, A., Ed., "XML Schema Part 2: Datatypes", W3C Recommendation, May 2001, [http://www.w3.org/TR/2001/REC-xmlschema-2-20010502/](https://go.microsoft.com/fwlink/?LinkId=90610)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

<a id="Section_1.3"></a>
## 1.3 Overview

This document specifies an extension to the [**WS-Discovery**](#gt_ws-discovery) protocol for sending and receiving [**termination criteria**](#gt_caa89021-bd96-4921-ac4d-e03c32d92b5c) as part of the WS-Discovery [**Probe**](#gt_probe) and [**Resolve**](#gt_resolve) messages. The termination criterion defines the constraints placed on a Probe operation executed by a [**client**](#gt_client) and sent as part of the WS-Discovery message to a [**Target Service host**](#gt_target-service-host). If the Target Service host implements this extension, then it can act on the termination criterion specified. The criterion allows the Target Service host to determine whether sending a response back to the client is necessary.

The extension is limited to two XML message elements, conforming to the XML schema, that are encapsulated in WS-Discovery Probe and Resolve messages. The motivation behind this extension is to allow clients to limit the number of WS-Discovery responses received, based on duration or number of services. A scenario that illustrates the use of this extension follows.

A client is looking for a [**Target Service**](#gt_target-service) that uses the WS-Discovery protocol. When sending out the Probe message, the client is interested only in information regarding one Target Service, and needs this information within a certain period of time. The client inserts the appropriate termination criteria information into the Probe message, as specified in this document. The WS-Discovery protocol specifies the semantics of the way in which a client sends a Probe message.

When a Target Service host receives the Probe message, it determines which Target Services match the Probe as specified in the WS-Discovery protocol. Since this Target Service host also implements this extension, it applies the termination criterion. If the Target Service host is able to meet the time criterion, then it responds back to the client with a [**Probe Match**](#gt_probe-match) message containing one Target Service that matches the original Probe message. The semantics of the Probe Match message transmission are defined in the WS-Discovery protocol.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This protocol is an extension of the [**WS-Discovery**](#gt_ws-discovery) protocol. Its dependency is described in the following layering diagram. The extension defines XML elements encapsulated in the "extensions" section of the WS-Discovery [**Probe**](#gt_probe) and [**Resolve**](#gt_resolve) messages. The protocol relationships pertaining to the WS-Discovery protocol, such as the protocols layered above it and the transport protocols below it, are not covered in this document.

![Layering diagram for the WS-Discovery: Termination Criteria Protocol Extensions](media/image1.png)

Figure 1: Layering diagram for the WS-Discovery: Termination Criteria Protocol Extensions

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

In order to implement this protocol extension, an implementation of [**WS-Discovery**](#gt_ws-discovery), as specified in [[WS-Discovery1.1]](https://go.microsoft.com/fwlink/?LinkId=148805) or [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576), is required.

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

None.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This document covers versioning issues in the following areas:

- **Supported Transports:** This extension does not specify any supported transports. The transport support is defined and constrained by the [**WS-Discovery**](#gt_ws-discovery) protocol.
- **Protocol Versions:** This protocol extension does not have a specific WSDL declaration [[WSDL]](https://go.microsoft.com/fwlink/?LinkId=90577), nor does it modify the WSDL of the encapsulating protocol. This extension is applicable to the following versions of the WS-Discovery protocols:
- [[WS-Discovery1.1]](https://go.microsoft.com/fwlink/?LinkId=148805)
- [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576)
- **Security and Authentication Methods:** This protocol does not specify any particular security and authentication methods. All applicable security and authentication methods to the WS-Discovery protocol are defined in the WS-Discovery specification.
- **Localization:** This protocol extension does not have any localization considerations.
- **Capability Negotiation:** This protocol does not require any specific configurations or interface versions.
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

This protocol extension can be used over any transport protocol allowed by the [**WS-Discovery**](#gt_ws-discovery) specification.

<a id="Section_2.2"></a>
## 2.2 Common Message Syntax

This protocol extension defines only elements that are inserted into existing [**WS-Discovery**](#gt_ws-discovery) [**Probe**](#gt_probe) and [**Resolve**](#gt_resolve) messages. The syntax of the message elements defined in this protocol extension uses XML schema as defined in [[XMLSCHEMA1]](https://go.microsoft.com/fwlink/?LinkId=90608) and [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610).

<a id="Section_2.2.1"></a>
### 2.2.1 Namespaces

This specification defines and references two XML namespaces using the mechanisms specified in [[XMLNS-2ED]](https://go.microsoft.com/fwlink/?LinkId=90602). Although this specification associates a specific XML namespace prefix for one XML namespace that is used, the choice of any particular XML namespace prefix is implementation-specific and not significant for interoperability.

| Prefix | Namespace URI | Reference |
| --- | --- | --- |
| - | http://schemas.microsoft.com/ws/2008/06/discovery | Section [8](#Section_8) |
| xs | http://www.w3.org/2001/XMLSchema | [[XMLSCHEMA2]](https://go.microsoft.com/fwlink/?LinkId=90610) |

This document does not use a prefix for the http://schemas.microsoft.com/ws/2008/06/discovery namespace that is defined above.

<a id="Section_2.2.2"></a>
### 2.2.2 Messages

None.

<a id="Section_2.2.3"></a>
### 2.2.3 Elements

The following table summarizes the set of common XML schema element definitions defined by this specification in the http://schemas.microsoft.com/ws/2008/06/discovery namespace.

| Element | Description |
| --- | --- |
| <MaxResults> | This element contains a positive integer value, specifying the maximum number of [**Target Services**](#gt_target-service) a [**client**](#gt_client) is looking for. |
| <Duration> | This element contains a value of duration type, specifying the maximum amount of time the client is willing to wait to get a response for a particular request. |

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 <MaxResults>

<MaxResults xmlns="http://schemas.microsoft.com/ws/2008/06/discovery">

xs:positiveInteger

</MaxResults>

The value of the MaxResults element MUST be greater than 0 and less than or equal to 2,147,483,647. A value of MaxResults equal to 2,147,483,647 is treated as a special case, implying an infinite number of responses. [**Client**](#gt_client) and server implementations handle out of bounds values differently. These cases are described in the respective protocol details sections.

<a id="Section_2.2.3.2"></a>
#### 2.2.3.2 <Duration>

<Duration xmlns="http://schemas.microsoft.com/ws/2008/06/discovery">

xs:duration

</Duration>

The value of the Duration element MUST be greater than P0Y0M0DT0H0M0S and MUST be less than or equal to P0Y0M0DT0H0M2147483.647S. In addition to this, a special-case value of P10675199DT2H48M05.4775807S implies an infinite duration. [**Client**](#gt_client) and server implementations handle out-of-bounds values differently. These cases are described in the respective protocol details sections.

<a id="Section_2.2.4"></a>
### 2.2.4 Complex Types

This specification does not define any common XML schema complex type definitions.

<a id="Section_2.2.5"></a>
### 2.2.5 Simple Types

This specification does not define any common XML schema simple type definitions.

<a id="Section_2.2.6"></a>
### 2.2.6 Attributes

This specification does not define any common XML schema attribute definitions.

<a id="Section_2.2.7"></a>
### 2.2.7 Groups

This specification does not define any common XML schema group definitions.

<a id="Section_2.2.8"></a>
### 2.2.8 Attribute Groups

This specification does not define any common XML schema attribute group definitions.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 Server Details

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

A server implementation must maintain the following data element:

**MaxResponses**: This value indicates the maximum number of [**Target Services**](#gt_target-service) about which a [**Target Service host**](#gt_target-service-host) can respond to a [**client**](#gt_client) in a [**Probe Match**](#gt_probe-match) message. The constraint placed by the **MaxResponses** value is not applicable to [**Resolve Match**](#gt_resolve-match) messages.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

**DurationTimer**: This timer regulates the maximum time allocated for the [**Target Service host**](#gt_target-service-host) to process the [**Probe**](#gt_probe) or [**Resolve**](#gt_resolve) message and respond to a [**client**](#gt_client) with a [**Probe Match**](#gt_probe-match) or [**Resolve Match**](#gt_resolve-match) message.

There is no default value for the **DurationTimer**. The value is set as defined in the initialization (section [3.1.3](#Section_3.1.3)).

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

If any of the data elements are not conformant to the constraints defined in section [2.2.3](#Section_2.2.3), then the [**Target Service**](#gt_target-service) MUST drop the incoming message and take no further action.

<a id="Section_3.1.3.1"></a>
#### 3.1.3.1 Initialization Due to Receipt of a Probe Message

Upon receipt of a [**Probe**](#gt_probe) message, the following initialization MUST occur:

If a <Duration> element described in section [2.2.3.2](#Section_2.2.3.2) is specified and is equal to P10675199DT2H48M05.4775807S, then the **DurationTimer** MUST NOT be started; this value implies an infinite timeout. Otherwise, the **DurationTimer** MUST be started with a value equal to the value of the <Duration> element.

If a <MaxResults> element described in section [2.2.3.1](#Section_2.2.3.1) is specified, then **MaxResponses** MUST be set to a value equal to the value of the <MaxResults> element.

If the <Duration> element is set to P10675199DT2H48M05.4775807S and if the <MaxResults> element is set to 2,147,483,647, then the implementation MUST drop the Probe message; the implementation MUST NOT respond to the client.

<a id="Section_3.1.3.2"></a>
#### 3.1.3.2 Initialization Due to Receipt of a Resolve Message

Upon receipt of a [**Resolve**](#gt_resolve) message, the following initialization MUST occur:

If a <MaxResults> element described in section [2.2.3.1](#Section_2.2.3.1) is specified, then the [**Target Service**](#gt_target-service) MUST ignore this value.

If a <Duration> element described in section [2.2.3.2](#Section_2.2.3.2) is specified and is equal to P10675199DT2H48M05.4775807S, then the **DurationTimer** MUST NOT be started; this value implies an infinite timeout.

Otherwise, the **DurationTimer** MUST be started with a value equal to the value of the <Duration> element.

<a id="Section_3.1.4"></a>
### 3.1.4 Message Processing Events and Sequencing Rules

If the protocol is initialized due to the receipt of a [**Probe**](#gt_probe) message and the **MaxResponses** value is set, then the following rules MUST be followed. If any [**Target Services**](#gt_target-service) match the [**find criteria**](#gt_find-criteria), then the [**Target Service host**](#gt_target-service-host) MUST respond to the [**client**](#gt_client) with information about a number of matching Target Services that MUST be less than or equal to the value of **MaxResponses**. If the number of matching Target Services is greater than the value of **MaxResponses**, the Target Services that the Target Service host responds to the client about is implementation-specific. The semantics of the construction of a [**Probe Match**](#gt_probe-match) message depends on the version of [**WS-Discovery**](#gt_ws-discovery) that is being extended.

If the protocol is initialized due to the receipt of a [**Resolve**](#gt_resolve) message, then there are no specific message processing events or sequencing rules to follow.

This protocol extension does not define any new operations beyond those defined in the WS-Discovery protocol, as specified in [[WS-Discovery1.1]](https://go.microsoft.com/fwlink/?LinkId=148805) or [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576).

<a id="Section_3.1.5"></a>
### 3.1.5 Timer Events

If the **DurationTimer** is not set as part of the initialization, then the server does not have any constraints placed by this timer; the operation has an infinite amount of time to execute.

If the **DurationTimer** is set and expires, then the [**Target Service host**](#gt_target-service-host) MUST NOT send any more replies to the [**client**](#gt_client).

<a id="Section_3.1.6"></a>
### 3.1.6 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 Client Details

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

A [**client**](#gt_client) implementation must maintain the following data elements:

**MaxResults**: This value indicates the maximum number of [**Target Services**](#gt_target-service) that a client requires.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

**DurationTimer**: This timer regulates the maximum time a [**client**](#gt_client) is willing to wait to get a response for a particular [**Probe**](#gt_probe) or [**Resolve**](#gt_resolve) request.

The default value for this timer is 20 seconds.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

An application developer initializes the value of **DurationTimer** and the value of **MaxResults** by providing these values to appropriate methods that result in the transmission of [**Probe**](#gt_probe) and [**Resolve**](#gt_resolve) messages.

If any of the values do not conform to the constraints defined in section [2.2.3](#Section_2.2.3), then the [**client**](#gt_client) MUST NOT send the Probe or Resolve message to the receipient.

If a value for **DurationTimer** is set and is equal to P10675199DT2H48M05.4775807S, then the timer MUST NOT be instantiated; this value implies that the operation has an infinite amount of time to execute. Otherwise, the **DurationTimer** is initialized with the value specified by the developer and then started.

<a id="Section_3.2.4"></a>
### 3.2.4 Message Processing Events and Sequencing Rules

<a id="Section_3.2.4.1"></a>
#### 3.2.4.1 Probe Operation

These message processing and sequencing rules are to be followed when sending a [**Probe**](#gt_probe) message.

If a valid value for a **DurationTimer** is specified by the application developer that is not equal to P10675199DT2H48M05.4775807S, then the [**client**](#gt_client) MUST send this value as part of the <Duration> element specified in section [2.2.3.2](#Section_2.2.3.2).

If the value for the **DurationTimer** is specified to be P10675199DT2H48M05.4775807S, then the client MUST NOT add the <Duration> element to the Probe envelope defined by [**WS-Discovery**](#gt_ws-discovery).

If the value for the **DurationTimer** is not specified by the application developer, then the client MUST send the default value for the **DurationTimer**, as specified in section [3.2.2](#Section_3.2.2), as part of the <Duration> element specified in section 2.2.3.2, and set the **DurationTimer** to this value.

The <Duration> element MUST be inserted into the xs:any blocks of the Probe envelope defined by WS-Discovery.

If a value for **MaxResults** is specified by the application developer to be 2,147,483,647 and the **DurationTimer** is specified to be P10675199DT2H48M05.4775807S, then the client MUST NOT send the Probe envelope defined by WS-Discovery.

Otherwise, if a value for **MaxResults** is specified by the application developer, then the client MUST send this value as part of the <MaxResults> element, as specified in section [2.2.3.1](#Section_2.2.3.1).

The <MaxResults> element MUST be inserted into the xs:any blocks of the Probe message defined by WS-Discovery.

An example of a Probe message with these elements inserted is provided in section [4](#Section_4).

<a id="Section_3.2.4.2"></a>
#### 3.2.4.2 Resolve Operation

If a value for **DurationTimer** is specified by the application developer for a [**Resolve**](#gt_resolve) operation and the value is less than P10675199DT2H48M05.4775807S, then the [**client**](#gt_client) MUST send this value as part of the <Duration> element specified in section [2.2.3.2](#Section_2.2.3.2).

If the value for the **DurationTimer** is not specified, then the client MUST send the default value for the **DurationTimer**, as specified in section [3.2.2](#Section_3.2.2), as part of the <Duration> element.

If the value for the **DurationTimer** is specified by the application developer to be P10675199DT2H48M05.4775807S, then the client MUST NOT add the <Duration> element to the Resolve envelope defined by [**WS-Discovery**](#gt_ws-discovery) and MUST NOT set the **DurationTimer**.

The <Duration> element MUST be inserted into the xs:any blocks of the Resolve envelope defined by WS-Discovery.

If a value for **MaxResults** is specified by the application developer for a Resolve operation, then the client MUST NOT add the <MaxResults> element to the Resolve envelope defined by WS-Discovery.

After the client receives a number of responses greater than the value of **MaxResults**, it MUST ignore the remaining responses.

An example of a Resolve message with these elements inserted is provided in section [4](#Section_4).

<a id="Section_3.2.5"></a>
### 3.2.5 Timer Events

If the **DurationTimer** is not set as part of the initialization, then the server does not have any constraints placed by this timer; the operation has an infinite amount of time to execute.

If the **DurationTimer** is set and expires, then the [**client**](#gt_client) MUST ignore any additional responses.

<a id="Section_3.2.6"></a>
### 3.2.6 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

<a id="Section_4.1"></a>
## 4.1 Probe Message Example

A [**client**](#gt_client) performing stock trades needs to locate a [**Target Service**](#gt_target-service) of [**Type**](#gt_type) i:StatisticalAnalysis and requires that service in the next 5 seconds. Using an implementation of [**WS-Discovery**](#gt_ws-discovery), it multicasts the following [**Probe**](#gt_probe) message, which contains the <MaxResults> and <Duration> elements, as defined in this document. The <MaxResults> and <Duration> elements contain the [**termination criteria**](#gt_caa89021-bd96-4921-ac4d-e03c32d92b5c) that limit the number of responses to one and the duration to 5 seconds. This following Probe message is sent from a client that is implementing [[WS-Discovery1.1]](https://go.microsoft.com/fwlink/?LinkId=148805).

Example 1: Probe message sent using [WS-Discovery1.1]

(01) <s:Envelope

(02) xmlns:a="http://schemas.xmlsoap.org/ws/2005/08/addressing"

(03) xmlns:d="http://docs.oasis-open.org/ws-dd/ns/discovery/2009/01"

(04) xmlns:i="http://statistics.example.org/2003/stats"

(05) xmlns:s="http://www.w3.org/2003/05/soap-envelope" >

(06) <s:Header>

(07) <a:Action>

(08) http://docs.oasis-open.org/ws-dd/ns/discovery/2009/01/Probe

(09) </a:Action>

(10) <a:MessageID>

(11) urn:uuid:3afd5e21-de48-4277-8119-f25ebdd9890a

(12) </a:MessageID>

(13) <a:To>urn:docs-oasis-open-org:ws-dd:discovery:2009:01</a:To>

(14) </s:Header>

(15) <s:Body>

(16) <d:Probe>

(17) <d:Types>i:StatisticalAnalysis</d:Types>

(18) <MaxResults xmlns="http://schemas.microsoft.com/ws/2008/06/discovery">1</MaxResults>

(19) <Duration xmlns="http://schemas.microsoft.com/ws/2008/06/discovery">PT5S</Duration>

(20) </d:Probe>

(21) </s:Body>

(22) </s:Envelope>

(23)

Lines 18 and 19 show the termination criterion inserted into the Probe message.

A [**Target Service host**](#gt_target-service-host) is aware of several Target Services that match the Type the client is looking for. However, it is limited to responding with a [**Probe Match**](#gt_probe-match) containing information about only one Target Service. If it is able to respond within 5 seconds, it replies back to the client with a Probe Match message containing information about one such service.

<a id="Section_4.2"></a>
## 4.2 Resolve Message Example

A [**client**](#gt_client) on a factory floor needs to resolve a tracking service located on a barcode scanning device. Since the device is mobile, it is using a [**universally unique identifier (UUID)**](#gt_universally-unique-identifier-uuid) for its address. The client needs to find the service in the next 10 seconds and sends out the following [**Resolve**](#gt_resolve) message. This Resolve message is sent from a client that is implementing [[WS-Discovery]](https://go.microsoft.com/fwlink/?LinkId=90576).

Example 2: Resolve message sent using [WS-Discovery]

(01)<s:Envelope

(02) xmlns:a="http://schemas.xmlsoap.org/ws/2004/08/addressing"

(03) xmlns:d="http://schemas.xmlsoap.org/ws/2005/04/discovery"

(04) xmlns:s="http://www.w3.org/2003/05/soap-envelope" >

(05) <s:Header>

(06) <a:Action>

(07) http://schemas.xmlsoap.org/ws/2005/04/discovery/Resolve

(08) </a:Action>

(09) <a:MessageID>

(10) urn:uuid:3a2886e0-0ab0-44ff-8a61-1ceb223be3ec

(11) </a:MessageID>

(12) <a:To>urn:schemas-xmlsoap-org:ws:2005:04:discovery</a:To>

(13) </s:Header>

(14) <s:Body>

(15) <d:Resolve>

(16) <a:EndpointReference>

(17) <a:Address>

(18) urn:uuid:9dec7471-e559-4dc5-ba85-50b68bb8d938

(19) </a:Address>

(20) </a:EndpointReference>

(21) <Duration xmlns="http://schemas.microsoft.com/ws/2008/06/discovery">

(22) PT10S

(23) </Duration>

(24) </d:Resolve>

(25) </s:Body>

(26)</s:Envelope>

Lines 21 through 23 show the Duration element inserted into the Resolve message.

A [**Target Service host**](#gt_target-service-host) is aware of the [**Target Service**](#gt_target-service) that matches the address the client is looking for. If it is able to respond within 10 seconds, it replies back to the client with a [**Resolve Match**](#gt_resolve-match) message containing information about that Target Service.

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

None.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Full WSDL

This protocol extension does not have a specific WSDL; rather it uses the WSDL declaration of the [**WS-Discovery**](#gt_ws-discovery) protocol that it extends.

<a id="Section_7"></a>
# 7 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of .NET Framework are available in each released Windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_8"></a>
# 8 Appendix C: Protocol Schema

The following is the XSD schema for the http://schemas.microsoft.com/ws/2008/06/discovery namespace.

<xs:schema targetNamespace="http://schemas.microsoft.com/ws/2008/06/discovery" xmlns:xs="http://www.w3.org/2001/XMLSchema">

<xs:element name="MaxResults" type="xs:positiveInteger" />

<xs:element name="Duration" type="xs:duration" />

</xs:schema>

<a id="Section_9"></a>
# 9 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [7](#Section_7) Appendix B: Product Behavior | Added .NET 4.8 to the list of applicable products. | Major |

