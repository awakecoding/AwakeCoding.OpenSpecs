# [MS-LLMNRP]: Link Local Multicast Name Resolution (LLMNR) Profile

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
  - [3.1 LLMNR Sender Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 LLMNR Responder Details](#Section_3.2)
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

The Link Local Multicast Name Resolution (LLMNR) Profile describes a profile of the Link Local Multicast Name Resolution (LLMNR) protocol, specified in [RFC4795] that does not send or respond to unicast queries in TCP and does not support Extension Mechanisms for DNS (EDNS0) [RFC2671]. This profile enables name resolution on the link local scenarios in which name resolution is not possible on the conventional DNS local link, as specified in [RFC1035].

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_transmission-control-protocol-tcp"></a>
**Transmission Control Protocol (TCP)**: A protocol used with the Internet Protocol (IP) to send data in the form of message units between computers over the Internet. TCP handles keeping track of the individual units of data (called packets) that a message is divided into for efficient routing through the Internet.

<a id="gt_user-datagram-protocol-udp"></a>
**User Datagram Protocol (UDP)**: The connectionless protocol within TCP/IP that corresponds to the transport layer in the ISO/OSI reference model.

<a id="gt_utf-8"></a>
**UTF-8**: A byte-oriented standard for encoding Unicode characters, defined in the Unicode standard. Unless specified otherwise, this term refers to the UTF-8 encoding form specified in [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) section 3.9.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC1035] Mockapetris, P., "Domain Names - Implementation and Specification", STD 13, RFC 1035, November 1987, [https://www.rfc-editor.org/info/rfc1035](https://go.microsoft.com/fwlink/?LinkId=90264)

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2671] Vixie, P., "Extension mechanism for DNS", RFC 2671, August 1999, [https://www.rfc-editor.org/info/rfc2671](https://go.microsoft.com/fwlink/?LinkId=107022)

[RFC3629] Yergeau, F., "UTF-8, A Transformation Format of ISO 10646", STD 63, RFC 3629, November 2003, [https://www.rfc-editor.org/info/rfc3629](https://go.microsoft.com/fwlink/?LinkId=90439)

[RFC4795] Aboba, B., Thaler, D., and Esibov, L., "Link-Local Multicast Name Resolution (LLMNR)", RFC 4795, January 2007, [https://www.rfc-editor.org/info/rfc4795](https://go.microsoft.com/fwlink/?LinkId=90489)

[RFC768] Postel, J., "User Datagram Protocol", STD 6, RFC 768, August 1980, [https://www.rfc-editor.org/info/rfc768](https://go.microsoft.com/fwlink/?LinkId=90490)

[RFC793] Postel, J., Ed., "Transmission Control Protocol: DARPA Internet Program Protocol Specification", RFC 793, September 1981, [https://www.rfc-editor.org/info/rfc793](https://go.microsoft.com/fwlink/?LinkId=150872)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[RFC2308] Andrews, M., "Negative Caching of DNS Queries (DNS NCACHE)", RFC 2308, March 1998, [https://www.rfc-editor.org/info/rfc2308](https://go.microsoft.com/fwlink/?LinkId=187326)

[RFC2937] Smit, C., "The Name Service Search Option for DHCP", RFC 2937, September 2000, [https://www.rfc-editor.org/info/rfc2937](https://go.microsoft.com/fwlink/?LinkId=129917)

[RFC3492] Costello, A., "Punycode: A Bootstring encoding of Unicode for Internationalized Domain Names in Applications", RFC 3492, March 2003, [http://www.ietf.org/rfc/rfc3492.txt](https://go.microsoft.com/fwlink/?LinkId=144682)

<a id="Section_1.3"></a>
## 1.3 Overview

The Link Local Multicast Name Resolution (LLMNR) protocol, specified in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) does not send or respond to unicast queries in TCP and does not support Extension Mechanisms for DNS (EDNS0) [[RFC2671]](https://go.microsoft.com/fwlink/?LinkId=107022). This profile enables name resolution on the link local scenarios in which name resolution is not possible on the conventional DNS local link, as specified in [[RFC1035]](https://go.microsoft.com/fwlink/?LinkId=90264).

Link Local Multicast Name Resolution queries are sent to and received on port 5355, as specified in [RFC4795]. This profile of LLMNR differs from LLMNR defined in [RFC4795], principally in the area of transport. Specifically, in the following areas:

- [RFC4795] requires TCP, as specified in [[RFC793]](https://go.microsoft.com/fwlink/?LinkId=150872), support, but TCP support is optional in this profile.
- [RFC4795] requires EDNS0 [RFC2671] support, but EDNS0 support is optional in this profile.
<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

Relationship to other protocols is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

Implementations of this LLMNRP profile without TCP do not preclude or prohibit [RFC4795] implementations with TCP from operating on the same network; however, senders and responders using this LLMNR profile cannot participate in TCP transactions.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

Prerequisites and preconditions for this profile are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

The applicability of this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) except for the following:

- This LLMNR profile is applicable only to resolving single-label names.
- This LLMNR profile is not applicable to resolving all DNS record types. Specifically, only A, AAAA, and PTR record types are required by this profile. Support for other record types is optional.
<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

This profile introduces no new versioning or capability negotiation mechanisms beyond those described in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489). An implementation of this LLMNR profile can interoperate with an implementation of LLMNR based on [RFC4795] but issues might arise in the following general areas that are covered in detail in section [3](#Section_3) of this document:

- Sending and receiving large responses that exceed the link MTU or 512 octets.
- Situations where TCP is used.
- Querying resource records other than A, AAAA, and PTR.
<a id="Section_1.8"></a>
## 1.8 Vendor-Extensible Fields

This profile does not support any vendor-extensible fields.

<a id="Section_1.9"></a>
## 1.9 Standards Assignments

This profile includes no standards assignments beyond those specified in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_2"></a>
# 2 Messages

<a id="Section_2.1"></a>
## 2.1 Transport

[[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) requires support for both the [**User Datagram Protocol (UDP)**](#gt_user-datagram-protocol-udp) [[RFC768]](https://go.microsoft.com/fwlink/?LinkId=90490) and the [**Transmission Control Protocol (TCP)**](#gt_transmission-control-protocol-tcp) as transports for LLMNR messages.

An implementation of this profile MUST support UDP as a transport and MAY support TCP as a transport.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The message syntax remains unchanged from the protocol specified in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) section 2.

<a id="Section_3"></a>
# 3 Protocol Details

<a id="Section_3.1"></a>
## 3.1 LLMNR Sender Details

LLMNR sender details are specified in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) sections 1, 2, and 3, with differences specified as follows.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

This section describes a conceptual model of possible data organization that an implementation maintains to participate in this protocol. The described organization is provided to facilitate the explanation of how the protocol behaves. This document does not mandate that implementations adhere to this model as long as their external behavior is consistent with that described in this document.

The state that needs to be maintained by a sender in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489). [RFC4795] states in section 5.4 that LLMNR implementations MUST use a distinct, isolated cache for LLMNR on each interface. This statement is vague in terms of whether it means LLMNR implementations MUST support caching or it means LLMNR implementations MUST keep the LLMNR cache, if one exists, distinct from the DNS cache and isolated on a per-interface basis. Implementations of this LLMNR profile MAY support caching. If an implementation of this LLMNR profile performs negative caching for a name error response or lack of a response for an LLMNR query, then it MUST do so only if there’s already a cached DNS name error entry in the DNS cache for the name being queried. Implementations of this LLMNR profile can determine whether a negative DNS cache entry exists, by issuing a DNS query. A response of NXDOMAIN indicates that the DNS name does not exist and will thus result in a negative DNS cache entry. Any other response indicates that a negative DNS cache entry does not exist [[RFC2308]](https://go.microsoft.com/fwlink/?LinkId=187326).

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

The timers required by a sender in this LLMNR profile are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) except for the following.<1>

To avoid synchronization [RFC4795] specifies in section 2.7 that the transmission of each LLMNR query SHOULD be delayed by a time randomly selected from the interval 0 to JITTER_INTERVAL. Implementing this behavior requires a timer. In this profile, the sender SHOULD send queries immediately without a random delay thereby avoiding the need for such a timer.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

The initialization required by this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

[RFC4795] section 3.1 is ambiguous as to whether support for the Name Service Search Option (NSSO) [[RFC2937]](https://go.microsoft.com/fwlink/?LinkId=129917) and the LLMNR Enable Option are mandatory. However, [RFC4795] includes them only as informative references, indicating that they need not be read or understood to implement LLMNR. As such, this profile clarifies that there are no conformance requirements with respect to those references.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

Processing of higher-layer triggered events is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

Except as specified in this section, the message processing and sequencing rules for an LLMNR profile sender are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

[RFC4795] section 2.1 requires that an LLMNR sender accept responses as large as the smaller of the link MTU or 9194 octets. In this profile, a sender MUST accept responses as large as the maximum UDP payload that can be carried over IPv4 or IPv6. The sender MAY use the EDNS0 [[RFC2671]](https://go.microsoft.com/fwlink/?LinkId=107022) OPT record to indicate the maximum UDP payload size it can accept.

When a response is received with the TC bit set, [RFC4795] section 2.1.1 recommends (but does not require) that the LLMNR sender discard the response and resend the query over TCP. In this profile, the sender MAY do so, but instead SHOULD simply ignore the TC bit and process the response as if there is no truncation.

[RFC4795] specifies in section 2.7 that since it is possible for a response with the "C" bit clear to be followed by a response with the "C" bit set, an LLMNR sender SHOULD be prepared to process additional responses for the purposes of conflict detection, even after it has considered a query answered. In this profile, the sender MAY process the additional responses once it considers a query answered.

[RFC4795] section 2.9 recommends (but does not require) that the LLMNR sender include conflicting RRs in the additional section of queries with the "C" bit set. In this profile, conflicting RRs MAY be included in the additional section.

[RFC4795] specifies in section 2.7 that in order to avoid synchronization, the transmission of each LLMNR query SHOULD be delayed by a time randomly selected from the interval 0 to JITTER_INTERVAL. In this profile, the sender SHOULD send queries immediately without a random delay.

[RFC4795] section 2.4 recommends (but does not require) that an LLMNR sender send PTR queries using TCP unicast as opposed to UDP multicast. In this profile, the LLMNR sender MAY use unicast TCP for PTR queries, but instead SHOULD use UDP multicast.

[RFC4795] does not specify whether names in queries are to be sent in [**UTF-8**](#gt_utf-8) [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439) or Punycode [[RFC3492]](https://go.microsoft.com/fwlink/?LinkId=144682). In this LLMNR profile, a sender MUST send queries in UTF-8, not Punycode.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

Handling of timer events by a sender in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

Handling of other local events by a sender in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_3.2"></a>
## 3.2 LLMNR Responder Details

LLMNR responder details are specified in [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) sections 2 and 4, with differences as specified below.

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

The state that needs to be maintained by a responder in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

Implementations of this LLMNR profile need not have a configurable or extendable data store containing the names to which the responder will respond.<2>

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

The timers required by a responder in this LLMNR profile are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) except for the following.<3>

[RFC4795] specifies in section 2.7 that in order to avoid synchronization, the transmission of each LLMNR response SHOULD be delayed by a time randomly selected from the interval 0 to JITTER_INTERVAL. Implementing this behavior requires a timer. In this profile, the responder SHOULD send responses immediately without a random delay thereby avoiding the need for such a timer.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

The initialization required by this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489) except for the following.

In [RFC4795], listening on TCP port 5355 is required. In this LLMNR profile, the responder MAY listen on TCP port 5355 and MAY respond to TCP queries as specified in [RFC4795] sections 2.3 and 2.4.<4>

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

Processing of higher-layer triggered events is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

Except as specified in this section, the message processing and sequencing rules are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

[RFC4795] section 2.1 recommends (but does not require) that the responder only send UDP responses as large as is permissible without causing fragmentation. In this profile, a responder MUST send UDP responses with size up to the maximum UDP payload that can be carried over IPv4 or IPv6. The LLMNR profile responder MAY honor the maximum acceptable UDP payload size indicated by an ENDS0 OPT record in a query. If the resource records that need to be sent in the response do not all fit in the UDP packet, then the LLMNR profile responder MUST put as many resource records as can fit in the UDP packet and send the response without setting the TC bit.

The LLMNR profile responder MUST respond to queries for resource record types of A, AAAA, PTR, and ANY. The LLMNR profile responder MAY respond to queries for other resource record types, but instead SHOULD silently discard queries for other resource record types. In response to a query with resource record type of ANY, the LLMNR profile responder MUST return any eligible A and AAAA resource records per [RFC4795] section 2.6 and MAY return other types of resource records.

The LLMNR profile responder MUST respond to queries for names encoded in [**UTF-8**](#gt_utf-8) format [[RFC3629]](https://go.microsoft.com/fwlink/?LinkId=90439) and MAY respond to queries for internationalized names converted to Punycode [[RFC3492]](https://go.microsoft.com/fwlink/?LinkId=144682).

[RFC4795] section 4.2 specifies that an LLMNR responder SHOULD log name conflicts detected as a result of uniqueness verification. A responder in this LLMNR profile MAY log name conflicts.

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

Handling of timer events by a responder in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

Handling of other local events by a responder in this LLMNR profile is unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_4"></a>
# 4 Protocol Examples

The following example illustrates an LLMNR query for AAAA resource records for a host name that starts with a non-ASCII character (represented in [**UTF-8**](#gt_utf-8) encoding) and the corresponding response, which contains multiple AAAA resource records that make the response larger than the 512-octet UDP payload limit observed by DNS:

UDP/IPv6 packet containing the AAAA LLMNR query for host name "çest":

- Ipv6:

Versions: IPv6, Internet Protocol, DSCP 0

PayloadLength: 31 (0x1F)

NextProtocol: 17(0x11)

HopLimit: 1 (0x1)

SourceAddress: FE80:0:0:0:D9F6:CE2E:4875:AB03

DestinationAddress: FF02:0:0:0:0:0:1:3

- Udp:

SourcePort: 62925(0xf5cd)

DestinationPort: 5355(0x14eb)

TotalLength: 31 (0x1F)

Checksum: 37373 (0x91FD)

- Llmnr:

QueryIdentifier: 35893 (0x8C35)

- Flags:

QR: (0...............) Query

OPCode: (.0000...........) Standard

C: (.....0..........)

TC: (......0.........)

T: (.......0........)

Reserved: (........0000....)

RCode: (............0000) Success

QuestionCount: 1 (0x1)

AnswerCount: 0 (0x0)

NameServerCount: 0 (0x0)

AdditionalCount: 0 (0x0)

- QRecord:

QuestionName: çest (0x05 0xC3 0xA7 0x65 0x73 0x74 0x00)

QuestionType: AAAA, 28(0x1c)

QuestionClass: Internet, 1(0x1)

UDP/IPv6 packet containing the LLMNR response, which includes 25 AAAA resource records. In the following example, all 25 IP addresses belong to interfaces on the same host and are thus not in conflict.

- Ipv6:

- Versions: IPv6, Internet Protocol, DSCP 0

PayloadLength: 736 (0x2E0)

NextProtocol: 17(0x11)

HopLimit: 64 (0x40)

SourceAddress: FE80:0:0:0:0:0:0:100

DestinationAddress: FE80:0:0:0:D9F6:CE2E:4875:AB03

- Udp:

SourcePort: 5355(0x14eb)

DestinationPort: 62925(0xf5cd)

TotalLength: 736 (0x2E0)

Checksum: 9332 (0x2474)

- Llmnr:

QueryIdentifier: 35893 (0x8C35)

- Flags:

QR: (1...............) Response

OPCode: (.0000...........) Standard

C: (.....0..........)

TC: (......0.........)

T: (.......0........)

Reserved: (........0000....)

RCode: (............0000) Success

QuestionCount: 1 (0x1)

AnswerCount: 25 (0x19)

NameServerCount: 0 (0x0)

AdditionalCount: 0 (0x0)

- QRecord:

QuestionName: çest (0x05 0xC3 0xA7 0x65 0x73 0x74 0x00)

QuestionType: AAAA, 28(0x1c)

QuestionClass: Internet, 1(0x1)

- ARecord:

ResourceName: çest (0x05 0xC3 0xA7 0x65 0x73 0x74 0x00)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: 2001:4898:1B:5:709F:3CF3:698E:AB15

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: 2002:9D3B:1DF3:8:709F:3CF3:698E:AB15

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FEC0:0:0:8:709F:3CF3:698E:AB15

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:100

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:101

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:102

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:103

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:104

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:105

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:106

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:107

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:108

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:109

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:110

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:111

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:112

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:113

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:114

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:115

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:116

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:117

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:118

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:119

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:0:0:0:120

- ARecord:

ResourceName: çest (0xC0 0x17)

ResourceType: AAAA, 28(0x1c)

ResourceClass: Internet, 1(0x1)

TimeToLive: 30 (0x1E)

ResourceDataLength: 16 (0x10)

IPv6Address: FE80:0:0:0:709F:3CF3:698E:AB15

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

Security considerations for this profile of LLMNR are unchanged from [[RFC4795]](https://go.microsoft.com/fwlink/?LinkId=90489).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

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

<1> Section 3.1.2: Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2 operating system use a retry time of 100 ms and a wait time of 200 ms. Otherwise Windows uses a retry time of 410 ms and a wait time of 410 ms.

<2> Section 3.2.1: Applicable Windows releases do not have an extendable or configurable data store. The LLMNR responder will respond only to the computer's host name. Therefore, the Windows releases of this LLMNR profile cannot be configured to respond to arbitrary names.

<3> Section 3.2.2: Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2 use a retry time of 100 ms and a wait time of 200 ms. Otherwise, Windows uses a retry time of 410 ms and a wait time of 410 ms.

<4> Section 3.2.3: Windows does not listen to LLMNR queries on any TCP port, including 5355.

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
| [6](#Section_6) Appendix A: Product Behavior | Added Windows Server 2025 to the list of applicable products. | Major |

