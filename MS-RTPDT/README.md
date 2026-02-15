# [MS-RTPDT]: Real-Time Transport Protocol (RTP/RTCP): DTMF Digits, Telephony Tones and Telephony Signals Data Extensions

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
    - [2.2.1 DTMF Telephony Event](#Section_2.2.1)
</details>

<details>
<summary>3 Protocol Details</summary>

- [3 Protocol Details](#Section_3)
  - [3.1 Common Details](#Section_3.1)
    - [3.1.1 Abstract Data Model](#Section_3.1.1)
    - [3.1.2 Timers](#Section_3.1.2)
    - [3.1.3 Initialization](#Section_3.1.3)
    - [3.1.4 Higher-Layer Triggered Events](#Section_3.1.4)
    - [3.1.5 Message Processing Events and Sequencing Rules](#Section_3.1.5)
    - [3.1.6 Timer Events](#Section_3.1.6)
    - [3.1.7 Other Local Events](#Section_3.1.7)
  - [3.2 Receiver Details](#Section_3.2)
    - [3.2.1 Abstract Data Model](#Section_3.2.1)
    - [3.2.2 Timers](#Section_3.2.2)
    - [3.2.3 Initialization](#Section_3.2.3)
    - [3.2.4 Higher-Layer Triggered Events](#Section_3.2.4)
    - [3.2.5 Message Processing Events and Sequencing Rules](#Section_3.2.5)
    - [3.2.6 Timer Events](#Section_3.2.6)
    - [3.2.7 Other Local Events](#Section_3.2.7)
  - [3.3 Sender Details](#Section_3.3)
    - [3.3.1 Abstract Data Model](#Section_3.3.1)
    - [3.3.2 Timers](#Section_3.3.2)
    - [3.3.3 Initialization](#Section_3.3.3)
    - [3.3.4 Higher-Layer Triggered Events](#Section_3.3.4)
    - [3.3.5 Message Processing Events and Sequencing Rules](#Section_3.3.5)
    - [3.3.6 Timer Events](#Section_3.3.6)
    - [3.3.7 Other Local Events](#Section_3.3.7)
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

The Real-Time Transport Protocol (RTP/RTCP): DTMF Digits, Telephony Tones, and Telephony Signals Data Extensions Protocol (RTPDT) is an extension to [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566). RTPDT describes the payload format needed to carry [**DTMF**](#gt_dual-tone-multi-frequency-dtmf) digits, tones, and signals in RTP packets over a network transport.

Any behavior not explicitly defined in this document means the behavior defined in [RFC4733] must be used.

Sections 1.5, 1.8, 1.9, 2, and 3 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_dual-tone-multi-frequency-dtmf"></a>
**dual-tone multi-frequency (DTMF)**: In telephony systems, a signaling system in which each digit is associated with two specific frequencies. This system typically is associated with touch-tone keypads for telephones.

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

[MS-RTPRAD] Microsoft Corporation, "[Real-Time Transport Protocol (RTP/RTCP): Redundant Audio Data Extensions](../MS-RTPRAD/MS-RTPRAD.md)".

[MS-SDP] Microsoft Corporation, "[Session Description Protocol (SDP) Extensions](../MS-SDP/MS-SDP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [http://www.rfc-editor.org/rfc/rfc2119.txt](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC4733] Schulzrinne, H., and Taylor, T., "RTP Payload for DTMF Digits, Telephony Tones and Telephony Signals", RFC 4733, December 2006, [http://www.ietf.org/rfc/rfc4733.txt](https://go.microsoft.com/fwlink/?LinkId=116566)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

None.

<a id="Section_1.3"></a>
## 1.3 Overview

The RTP/RTCP: DTMF Digits, Telephony Tones, and Telephony Signals Data Extensions protocol describes a mechanism for transmission of in-band and out-of-band telephony digits, tones, and signals. It is an extension to [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

The RTPDT protocol is limited to telephony signals using out-of-band transmission. The in-band transmission of digits and tones is not supported by this protocol.

<a id="Section_1.4"></a>
## 1.4 Relationship to Other Protocols

This protocol relies on [**RTP**](#gt_real-time-transport-protocol-rtp) as specified in [MS-RTPME](../MS-RTPME/MS-RTPME.md) as its transport mechanism. This protocol can be used to communicate signaling [Dual Tone Multiple Frequency (DTMF)](../MS-GLOS/MS-GLOS.md) telephony events between clients and gateways using the RTP payload.

<a id="Section_1.5"></a>
## 1.5 Prerequisites/Preconditions

This protocol is a payload of [**RTP**](#gt_real-time-transport-protocol-rtp); therefore, a valid RTP session has to be established between a client and a gateway.

Furthermore, because of the dynamic payload typing of the telephony events, out-of-band negotiation is required to bind the payload type of the RTP payload to the telephony events. This is done using the Session Description Protocol [MS-SDP](../MS-SDP/MS-SDP.md).

<a id="Section_1.6"></a>
## 1.6 Applicability Statement

This protocol is applicable wherever telephony digits, tones, or signals need to be sent or consumed either by remote clients or through gateways.

<a id="Section_1.7"></a>
## 1.7 Versioning and Capability Negotiation

- Supported Transports: This protocol is sent using the [**RTP**](#gt_real-time-transport-protocol-rtp) transport mechanism [MS-RTPME](../MS-RTPME/MS-RTPME.md).
- Protocol Versions: This protocol, as a format of an RTP payload, does not provide for versioning information within the scope of the protocol itself. However, as a part of the RTP payload, any versioning information about the RTP level will apply.
- Security and Authentication Methods: This specification does not describe any security or authentication methods. Security and authentication are dependent on the security method, authentication method, or both methods used by the RTP version 2 protocol.
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

The RTP/RTCP: DTMF Digits, Telephony Tones and Telephony Signals Data Extensions protocol MUST be sent using [**RTP**](#gt_real-time-transport-protocol-rtp) as specified in [MS-RTPME](../MS-RTPME/MS-RTPME.md) as its transport. This protocol assumes that a successful RTP session has been established with valid payload information.

The [**Session Description Protocol (SDP)**](#gt_session-description-protocol-sdp) [MS-SDP](../MS-SDP/MS-SDP.md) MUST be used to negotiate the payload type information.

<a id="Section_2.2"></a>
## 2.2 Message Syntax

The structure and syntax of the RTP/RTCP: DTMF Digits, Telephony Tones and Telephony Signals Data Extensions protocol is defined in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566) section 2.3.

<a id="Section_2.2.1"></a>
### 2.2.1 DTMF Telephony Event

The DTMF Telephony Event format is described in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566) section 2.3.

<a id="Section_3"></a>
# 3 Protocol Details

The RTP/RTCP: DTMF Digits, Telephony Tones, and Telephony Signals Extensions protocol conforms more to the "sender-receiver" paradigm than the classic "client-server" paradigm. More specifically, it is appropriate to discuss in terms of the receiver of the telephony signals and the sender of the telephony signals.

This specification covers the common details between the sender and receiver. It then provides the specifics of the sender and receiver details.

<a id="Section_3.1"></a>
## 3.1 Common Details

In [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566), out-of-band negotiation of telephony signal information is required to establish a session. During this negotiation, both payload types and the clock rate of the telephony signals are negotiated as described in [RFC4733] section 2.5.1.1 using [**SDP**](#gt_session-description-protocol-sdp) for out-of-band negotiation. While dynamic payload type binding is required, both the sender and receiver of message blocks conforming to RTPDT MUST fix the telephony signaling information at 8,000 Hertz. Dynamic negotiation of the clock frequency of the [**DTMF**](#gt_dual-tone-multi-frequency-dtmf) payload MUST NOT be used.

[RFC4733] allows a "zero" duration in the payload of an RTP packet for state events. Endpoints using RTPDT MUST NOT send telephony events with a "zero" duration. Telephony events include the state and nonstate events.

All event duration values MUST NOT exceed the maximum duration expressible in the duration field of the payload format as described in [RFC4733] section 2.3.5.

Redundancy support as described in [MS-RTPRAD](../MS-RTPRAD/MS-RTPRAD.md) MUST NOT be used. Integrity for the payload is not defined by this specification; see [MS-RTPRAD] section 2.2 for payload integrity information.

Multiple payload type binding for different telephony events MUST NOT be used. There MUST be only one telephony event binding for a payload type. The payload type binding MUST be symmetrical. This means the receive payload type and send payload type MUST be the same. Asymmetrical payload type information MUST NOT be used.

RTPDT supports only the telephony event. An in-band telephony tone transmission MUST NOT be used.

All clock frequencies for DTMF signals, tones, and digits MUST be fixed at 8,000 Hertz.

<a id="Section_3.1.1"></a>
### 3.1.1 Abstract Data Model

None.

<a id="Section_3.1.2"></a>
### 3.1.2 Timers

None.

<a id="Section_3.1.3"></a>
### 3.1.3 Initialization

None.

<a id="Section_3.1.4"></a>
### 3.1.4 Higher-Layer Triggered Events

None.

<a id="Section_3.1.5"></a>
### 3.1.5 Message Processing Events and Sequencing Rules

There are no sequence rules or processing event requirements for this protocol above that described in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

<a id="Section_3.1.6"></a>
### 3.1.6 Timer Events

None.

<a id="Section_3.1.7"></a>
### 3.1.7 Other Local Events

None.

<a id="Section_3.2"></a>
## 3.2 Receiver Details

Redundant payload support as described in [MS-RTPRAD](../MS-RTPRAD/MS-RTPRAD.md) MUST NOT be used.

Multiple events per the [**RTP**](#gt_real-time-transport-protocol-rtp) block MUST NOT be used.

<a id="Section_3.2.1"></a>
### 3.2.1 Abstract Data Model

None.

<a id="Section_3.2.2"></a>
### 3.2.2 Timers

None.

<a id="Section_3.2.3"></a>
### 3.2.3 Initialization

None.

<a id="Section_3.2.4"></a>
### 3.2.4 Higher-Layer Triggered Events

None.

<a id="Section_3.2.5"></a>
### 3.2.5 Message Processing Events and Sequencing Rules

There are no sequence rules or processing event requirements for this protocol above that described in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

<a id="Section_3.2.6"></a>
### 3.2.6 Timer Events

None.

<a id="Section_3.2.7"></a>
### 3.2.7 Other Local Events

None.

<a id="Section_3.3"></a>
## 3.3 Sender Details

Implementation for this protocol MUST NOT generate redundant blocks as described in [MS-RTPRAD](../MS-RTPRAD/MS-RTPRAD.md).

The sender MUST NOT pack multiple [**DTMF**](#gt_dual-tone-multi-frequency-dtmf) payloads into a single RTP packet.

The sender MUST NOT generate a DTMF event whose duration exceeds the maximum expressible duration as specified in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566) section 2.3.5.

The sender MUST NOT generate a DTMF event payload with a zero duration.

<a id="Section_3.3.1"></a>
### 3.3.1 Abstract Data Model

None.

<a id="Section_3.3.2"></a>
### 3.3.2 Timers

None.

<a id="Section_3.3.3"></a>
### 3.3.3 Initialization

None.

<a id="Section_3.3.4"></a>
### 3.3.4 Higher-Layer Triggered Events

None.

<a id="Section_3.3.5"></a>
### 3.3.5 Message Processing Events and Sequencing Rules

There are no sequence rules or processing event requirements for this protocol above that described in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

<a id="Section_3.3.6"></a>
### 3.3.6 Timer Events

None.

<a id="Section_3.3.7"></a>
### 3.3.7 Other Local Events

None.

<a id="Section_4"></a>
# 4 Protocol Examples

The following is an example of the [**SDP**](#gt_session-description-protocol-sdp) negotiation for the [**DTMF**](#gt_dual-tone-multi-frequency-dtmf) events.

m=audio 51712 RTP/AVP 114 111 112 115 116 4 8 0 97 101

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

The preceding sample uses the default DTMF payload type for Microsoft Office Communicator (PT=101). This would result in the following payload being generated (and expected).

0 1 2 3

0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

|V=2|P|X| CC |M| PT | sequence number |

| | | | |0| 101 | |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

| timestamp |

| |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

| synchronization source (SSRC) identifier |

| |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

| event |E R| volume | duration |

| 1 |1 0| 20 | 1760 |

+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

<a id="Section_5"></a>
# 5 Security

<a id="Section_5.1"></a>
## 5.1 Security Considerations for Implementers

There are no additional protocol considerations beyond those described in [[RFC4733]](https://go.microsoft.com/fwlink/?LinkId=116566).

<a id="Section_5.2"></a>
## 5.2 Index of Security Parameters

No security parameters are used by this protocol.

<a id="Section_6"></a>
# 6 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include released service packs.

- Windows 2000 operating system
- Windows XP operating system
- Windows Server 2003 operating system
Exceptions, if any, are noted below. If a service pack or Quick Fix Engineering (QFE) number appears with the product version, behavior changed in that service pack or QFE. The new behavior also applies to subsequent service packs of the product unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<a id="Section_7"></a>
# 7 Change Tracking

No table of changes is available. The document is either new or has had no changes since its last release.

