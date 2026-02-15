# [MS-RTPRAD]: Real-Time Transport Protocol (RTP/RTCP): Redundant Audio Data Extensions

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
    - [2.2.1 Redundant Block](#Section_2.2.1)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Receiver Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Sender Details](#Section_3.2)
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

The Real-Time Transport Protocol (RTP/RTCP): Redundant Audio Data Extensions (RTPRAD) Protocol is a method for encoding redundant audio data for use with the Real-Time Transport Protocol (RTP) Extensions Protocol as specified in [MS-RTPME](../MS-RTPME/MS-RTPME.md). RTPRAD is an extension of RTP Payload for Redundant Audio Data as specified in [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461). [RFC2198] specifies a payload format for use with the Real-Time Transport Protocol (RTP) as specified in [[RFC3550]](https://go.microsoft.com/fwlink/?LinkId=90433).

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_dual-tone-multiple-frequency-dtmf"></a>
**Dual Tone Multiple Frequency (DTMF)**: The signaling system used in telephony systems, in which each digit is associated with two specific frequencies. Most commonly associated with telephone touch-tone keypads.

<a id="gt_dual-tone-multi-frequency-dtmf"></a>
**dual-tone multi-frequency (DTMF)**: In telephony systems, a signaling system in which each digit is associated with two specific frequencies. This system typically is associated with touch-tone keypads for telephones.

<a id="gt_lossy-network-transports"></a>
**lossy network transports**: A transport that cannot deliver a data payload reliably from a source to a destination.

<a id="gt_real-time-transport-protocol-rtp"></a>
**Real-Time Transport Protocol (RTP)**: A network transport protocol that provides end-to-end transport functions that are suitable for applications that transmit real-time data, such as audio and video, as described in [[RFC3550]](https://go.microsoft.com/fwlink/?LinkId=90433).

<a id="gt_session-description-protocol-sdp"></a>
**Session Description Protocol (SDP)**: A protocol that is used for session announcement, session invitation, and other forms of multimedia session initiation. For more information see [MS-SDP](../MS-SDP/MS-SDP.md) and [RFC3264].

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](http://msdn.microsoft.com/en-us/library/dn781092.aspx).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[MS-RTPME] Microsoft Corporation, "[Real-Time Transport Protocol (RTP/RTCP): Microsoft Extensions](../MS-RTPME/MS-RTPME.md)".

[MS-SDP] Microsoft Corporation, "[Session Description Protocol (SDP) Extensions](../MS-SDP/MS-SDP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2198] Perkins, C., "RTP Payload for Redundant Audio Data", RFC 2198, September 1997, [http://www.rfc-editor.org/rfc/rfc2198.txt](https://go.microsoft.com/fwlink/?LinkId=116461)

[RFC3550] Schulzrinne, H., Casner, S., Frederick, R., and Jacobson, V., "RTP: A Transport Protocol for Real-Time Applications", STD 64, RFC 3550, July 2003, [http://www.ietf.org/rfc/rfc3550.txt](https://go.microsoft.com/fwlink/?LinkId=90433)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[RFC4733] Schulzrinne, H., and Taylor, T., "RTP Payload for DTMF Digits, Telephony Tones and Telephony Signals", RFC 4733, December 2006, [http://www.ietf.org/rfc/rfc4733.txt](https://go.microsoft.com/fwlink/?LinkId=116566)

<a id="Section_1.3"></a>
## 1.3 Overview

RTPRAD extends the RTP Payload for Redundant Audio Data as specified in [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461) by restricting an RTP audio payload to one block of redundant audio data. The redundant block of audio data is implemented in the RTP payload along with the primary block of audio data.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

RTPRAD relies on the Real-Time Transport Protocol (RTP/RTCP): Microsoft Extensions [MS-RTPME](../MS-RTPME/MS-RTPME.md) as its transport.

This specification only addresses the redundancy (and thereby loss and error tolerance) of audio data streams.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

Because the Real-Time Transport Protocol (RTP/RTCP): Microsoft Extensions (RTPME) act as a transport for this protocol, a valid RTP session has to be established.

It is further assumed that a valid [**Session Description Protocol (SDP)**](#gt_session-description-protocol-sdp) negotiation has been completed to bind the dynamic payload information for the redundancy data. For information about SDP, see [MS-SDP](../MS-SDP/MS-SDP.md).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol is applicable for a real-time audio communication scenario where redundant data exchange is needed to mitigate [**lossy network transports**](#gt_lossy-network-transports).

This protocol does not cover all audio data redundancy. It is limited to in-band audio communication data. This protocol does not apply to redundancy for audio data such as in-band [**Dual Tone Multiple Frequency (DTMF)**](#gt_dual-tone-multiple-frequency-dtmf) tones.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

- Supported Transports: The RTP/RTCP: Redundant Audio Data Extensions are implemented on top of [MS-RTPME](../MS-RTPME/MS-RTPME.md) as the transport mechanism.
- Protocol Versions: The RTP/RTCP: Redundant Audio Data Extensions, as a payload format of [**RTP**](#gt_real-time-transport-protocol-rtp), do not provide for versioning information within the scope of the protocol itself. However, as a part of the RTP payload, any versioning information on the RTP level applies.
- Security and Authentication Methods: This specification does not describe any security or authentication methods. Security and authentication are dependent on the security method, authentication method, or both as used by [MS-RTPME]
- Localization: None.
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

Because RTPRAD uses [**RTP**](#gt_real-time-transport-protocol-rtp) as its transport [MS-RTPME](../MS-RTPME/MS-RTPME.md), a successful RTP session must be established with valid redundancy payload information negotiated.

This MUST be done with the [**Session Description Protocol**](#gt_session-description-protocol-sdp) as specified in [MS-SDP](../MS-SDP/MS-SDP.md).

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The structure and syntax of RTPRAD are defined within RTP Payload for Redundant Audio Data [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461). This protocol does not cover all audio data redundancy. It is limited to in-band audio communication data. This protocol MUST NOT be used to carry audio data redundancy for audio data such as in-band [**DTMF**](#gt_dual-tone-multi-frequency-dtmf) tones. For more information about in-band DTMF tones, see [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

The deviation from [RFC2198] is as follows:

- Section 2 of [RFC2198] provides for one or more redundant audio blocks for each RTP payload. However, this protocol description allows for only one redundant block for every RTP payload. Therefore, each RTP payload MUST NOT contain more than two blocks total: one redundancy block and one primary block.
- Section 2 of [RFC2198] describes the mechanism for including the redundancy information in the RTP packet header. However, RTPRAD does not support redundant information in the RTP header. The RTP header MUST NOT contain redundant information. RTPRAD MUST be made part of a dynamic RTP payload type and negotiate as such during [**SDP**](#gt_session-description-protocol-sdp) negotiation.
- While section 2 of [RFC2198] allows for static typing of payload types, systems interoperating with an implementation of this protocol MUST negotiate for dynamic redundancy payload type using SDP or redundancy is not enabled.
<a id="Section_2.2.1"></a>
### 2.2.1 Redundant Block

See [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461) section 3 for a detailed description of the redundant block layout.

<a id="Section_3"></a>
# 3 Protocol Details

RTPRAD uses a Sender and Receiver model.

The following sections detail the behavioral difference between the protocol specified by [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461) and this protocol specification.

<a id="Section_3.1"></a>
## 3.1 Receiver Details

The Receiver side of this protocol MUST negotiate using [**SDP**](#gt_session-description-protocol-sdp) for a dynamic payload type binding for the redundancy data.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

None.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

Receivers MUST negotiate a dynamic payload type for the redundancy data. Receivers MUST NOT expect redundancy data to be part of the [**RTP**](#gt_real-time-transport-protocol-rtp) extended header structure.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

None.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

None.

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 Sender Details

The Sender side of this protocol MUST negotiate using [**SDP**](#gt_session-description-protocol-sdp) for a dynamic payload type binding for the redundancy data.

The redundancy data block MUST NOT have a distance greater than 3.

Distance is defined as the number of RTP packets succeeding the main block for which the redundancy block applies. For example, if RTP packet X contains main block A, and RTP packet X + n contains the redundancy block for main block A, that redundancy block has a distance of n. The maximum value of n MUST NOT exceed 3.

There MUST NOT be more than one redundancy block per RTP packet. At most two blocks are allowed per RTP packet: one main block and one redundancy block.

All redundant audio data from the Sender MUST be the same encoding (same codec) as the main audio block. This requirement deviates from [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461) where secondary, tertiary, or other successive codecs are supported.

This means that the main audio block and redundant audio block MUST use the same codec.

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

None.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

The Sender MUST negotiate a dynamic payload type for the redundancy data.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

None.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

None.

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

A typical example of the [**SDP**](#gt_session-description-protocol-sdp) negotiation under Microsoft Office Communicator would appear similar to the following.

m=audio 51712 RTP/AVP 114 111 112 115 116 4 8 0 97 101]

...

a=rtpmap:114 x-msrta/16000

a=fmtp:114 bitrate=29000

a=rtpmap:111 SIREN/16000

a=fmtp:111 bitrate=16000

a=rtpmap:112 G7221/16000

a=fmtp:112 bitrate=24000

a=rtpmap:115 x-msrta/8000

a=fmtp:115 bitrate=11800

a=rtpmap:116 AAL2-G726-32/8000

a=rtpmap:4 G723/8000

a=rtpmap:8 PCMA/8000

a=rtpmap:0 PCMU/8000

a=rtpmap:97 RED/8000

a=rtpmap:101 telephone-event/8000

a=fmtp:101 0-16

The RED/8000 line uses the default redundant payload type mapping for Microsoft Office Communicator (PT=97). Given this if the negotiated encoding is RT-Audio 16Khz, the payload containing the main block + redundant block would appear as follows.

0 1 2 3

0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

|V=2|P|X| CC=0 |M| PT | sequence number of primary |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

| timestamp of primary encoding |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

| synchronization source (SSRC) identifier |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

|1| block PT=97 | timestamp offset | block length |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

|0| block PT=114| |

+-+-+-+-+-+-+-+-+ +

| |

+ RT-Audio encoded redundant data (PT=97) +

| (38 bytes) |

+ |

| |

+ |

| |

+ |

| +---------------+

| | |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+ +

| |

+ +

| RT-Audio encoded primary data (PT=114) |

+ (38 bytes) +

| |

+ +

| |

+ +

| |

+ +-----------------------------------------------+

| |

+-+-+-+-+-+-+-+-+

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

There are no additional protocol considerations beyond those described in [[RFC2198]](https://go.microsoft.com/fwlink/?LinkId=116461) section 6.

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

None.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include released service packs.

- Windows 2000 Server operating system
- Windows XP operating system
- Windows Server 2003 operating system
Exceptions, if any, are noted below. If a service pack or Quick Fix Engineering (QFE) number appears with the product version, behavior changed in that service pack or QFE. The new behavior also applies to subsequent service packs of the product unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_7"></a>
# 7 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.

