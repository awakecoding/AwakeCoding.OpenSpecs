# [MS-NRBF]: .NET Remoting: Binary Format Data Structure

Last updated: 11/19/2024

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
  - [2.1 Common Definitions](#Section_2.1)
    - [2.1.1 Common Data Types](#Section_2.1.1)
      - [2.1.1.1 Char](#Section_2.1.1.1)
      - [2.1.1.2 Double](#Section_2.1.1.2)
      - [2.1.1.3 Single](#Section_2.1.1.3)
      - [2.1.1.4 TimeSpan](#Section_2.1.1.4)
      - [2.1.1.5 DateTime](#Section_2.1.1.5)
      - [2.1.1.6 LengthPrefixedString](#Section_2.1.1.6)
      - [2.1.1.7 Decimal](#Section_2.1.1.7)
      - [2.1.1.8 ClassTypeInfo](#Section_2.1.1.8)
    - [2.1.2 Enumerations](#Section_2.1.2)
      - [2.1.2.1 RecordTypeEnumeration](#Section_2.1.2.1)
      - [2.1.2.2 BinaryTypeEnumeration](#Section_2.1.2.2)
      - [2.1.2.3 PrimitiveTypeEnumeration](#Section_2.1.2.3)
  - [2.2 Method Invocation Records](#Section_2.2)
    - [2.2.1 Enumerations](#Section_2.2.1)
      - [2.2.1.1 MessageFlags](#Section_2.2.1.1)
    - [2.2.2 Common Structures](#Section_2.2.2)
      - [2.2.2.1 ValueWithCode](#Section_2.2.2.1)
      - [2.2.2.2 StringValueWithCode](#Section_2.2.2.2)
      - [2.2.2.3 ArrayOfValueWithCode](#Section_2.2.2.3)
    - [2.2.3 Record Definitions](#Section_2.2.3)
      - [2.2.3.1 BinaryMethodCall](#Section_2.2.3.1)
      - [2.2.3.2 MethodCallArray](#Section_2.2.3.2)
      - [2.2.3.3 BinaryMethodReturn](#Section_2.2.3.3)
      - [2.2.3.4 MethodReturnCallArray](#Section_2.2.3.4)
  - [2.3 Class Records](#Section_2.3)
    - [2.3.1 Common Structures](#Section_2.3.1)
      - [2.3.1.1 ClassInfo](#Section_2.3.1.1)
      - [2.3.1.2 MemberTypeInfo](#Section_2.3.1.2)
    - [2.3.2 Record Definitions](#Section_2.3.2)
      - [2.3.2.1 ClassWithMembersAndTypes](#Section_2.3.2.1)
      - [2.3.2.2 ClassWithMembers](#Section_2.3.2.2)
      - [2.3.2.3 SystemClassWithMembersAndTypes](#Section_2.3.2.3)
      - [2.3.2.4 SystemClassWithMembers](#Section_2.3.2.4)
      - [2.3.2.5 ClassWithId](#Section_2.3.2.5)
  - [2.4 Array Records](#Section_2.4)
    - [2.4.1 Enumerations](#Section_2.4.1)
      - [2.4.1.1 BinaryArrayTypeEnumeration](#Section_2.4.1.1)
    - [2.4.2 Common Definitions](#Section_2.4.2)
      - [2.4.2.1 ArrayInfo](#Section_2.4.2.1)
    - [2.4.3 Record Definitions](#Section_2.4.3)
      - [2.4.3.1 BinaryArray](#Section_2.4.3.1)
      - [2.4.3.2 ArraySingleObject](#Section_2.4.3.2)
      - [2.4.3.3 ArraySinglePrimitive](#Section_2.4.3.3)
      - [2.4.3.4 ArraySingleString](#Section_2.4.3.4)
  - [2.5 Member Reference Records](#Section_2.5)
    - [2.5.1 MemberPrimitiveTyped](#Section_2.5.1)
    - [2.5.2 MemberPrimitiveUnTyped](#Section_2.5.2)
    - [2.5.3 MemberReference](#Section_2.5.3)
    - [2.5.4 ObjectNull](#Section_2.5.4)
    - [2.5.5 ObjectNullMultiple](#Section_2.5.5)
    - [2.5.6 ObjectNullMultiple256](#Section_2.5.6)
    - [2.5.7 BinaryObjectString](#Section_2.5.7)
  - [2.6 Other Records](#Section_2.6)
    - [2.6.1 SerializationHeaderRecord](#Section_2.6.1)
    - [2.6.2 BinaryLibrary](#Section_2.6.2)
    - [2.6.3 MessageEnd](#Section_2.6.3)
  - [2.7 Binary Record Grammar](#Section_2.7)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
</details>

<details>
<summary>4 Security Considerations</summary>

- [4 Security Considerations](#Section_4)
</details>

<details>
<summary>5 Appendix A: Product Behavior</summary>

- [5 Appendix A: Product Behavior](#Section_5)
</details>

<details>
<summary>6 Change Tracking</summary>

- [6 Change Tracking](#Section_6)
</details>
<a id="Section_1"></a>
# 1 Introduction

The .NET Remoting: Binary Format Data Structure defines a set of structures that represent [**object graph**](#gt_object-graph) or method invocation information as an octet stream. One possible application of the structure is as the [**serialization format**](#gt_serialization-format) for the data model as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.1.

Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_argument"></a>
**argument**: A named [**Data Value**](#gt_data-value) that is passed as part of a [**Remote Method**](#gt_remote-method) invocation or returned as part of the results of a [**Remote Method**](#gt_remote-method) invocation. For more information about Remote Method invocation, see [MS-NRTP] section 3.1.1.

<a id="gt_array"></a>
**array**: A [**Remoting Type**](#gt_remoting-type) that is an ordered collection of values. The values are identified by their position and position is determined by a set of integer indices. The number of indices required to represent the position is called the Rank of the [**Array**](#gt_array). An [**Array**](#gt_array) is part of the [**Remoting Data Model**](#gt_remoting-data-model) and also specifies the [**Remoting Type**](#gt_remoting-type) of its items. For more information, [MS-NRTP] section 3.1.1.

<a id="gt_call-context"></a>
**Call Context**: A mechanism to pass data that is not part of the method [**Arguments**](#gt_argument) between client and server. It is a collection of name-value pairs that is carried with the execution of a [**Remote Method**](#gt_remote-method). This collection is sent along with other method [**Arguments**](#gt_argument) from client to server, and is transmitted back, along with the [**Return Values**](#gt_return-value) and output [**Arguments**](#gt_argument), from the server to the client. For more information, see [MS-NRTP] section 1.3.

<a id="gt_class"></a>
**class**: (1) A [**Remoting Type**](#gt_remoting-type) that encapsulates a set of named values and a set of methods that operate on those values. The named values are called Members of the Class. A Class is part of the [**Remoting Data Model**](#gt_remoting-data-model). For more information, see [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.1.

(2) See [**System.Object**](#gt_systemobject).

<a id="gt_class-metadata"></a>
**Class Metadata**: Information about a Class that includes the Class name, its Library name, and the names and Remoting Types of its Members.

<a id="gt_coordinated-universal-time-utc"></a>
**Coordinated Universal Time (UTC)**: A high-precision atomic time standard that approximately tracks Universal Time (UT). It is the basis for legal, civil time all over the Earth. Time zones around the world are expressed as positive and negative offsets from UTC. In this role, it is also referred to as Zulu time (Z) and Greenwich Mean Time (GMT). In these specifications, all references to UTC refer to the time at UTC-0 (or GMT).

<a id="gt_data-value"></a>
**data value**: An instance of a [**Remoting Type**](#gt_remoting-type), which can be a [**Class**](#gt_class), [**Array**](#gt_array), [**Enum**](#gt_enum), or Primitive. A Data Value is part of the [**Remoting Data Model**](#gt_remoting-data-model). For more information, see [MS-NRTP] section 3.1.1.

<a id="gt_deserialize"></a>
**deserialize**: See unmarshal.

<a id="gt_enum"></a>
**Enum**: A Primitive type whose members are constrained to a set of values. The Primitive type is considered to be an underlying [**Remoting Type**](#gt_remoting-type) of the [**Enum**](#gt_enum). Each value has a name associated with it. An [**Enum**](#gt_enum) is part of the [**Remoting Data Model**](#gt_remoting-data-model), and an abbreviation for "enumeration." For more information, see [MS-NRTP] section 3.1.1.

<a id="gt_exception"></a>
**Exception**: A [**Class**](#gt_class) that indicates an error in the execution of a [**Remote Method**](#gt_remote-method). It is sent as part of the return message from a server to a client. An [**Exception**](#gt_exception) contains a human-readable message that indicates what the error is, and can also have additional data to identify the error. An [**Exception**](#gt_exception) is part of the [**Remoting Data Model**](#gt_remoting-data-model). For more information, see [MS-NRTP] section 3.1.1.

<a id="gt_generic-argument"></a>
**Generic Argument**: A formal argument used in a [**Generic Type**](#gt_generic-type) or a [**Generic Remote Method**](#gt_generic-remote-method) to represent a parameterized [**Remoting Type**](#gt_remoting-type). [**Generic Arguments**](#gt_generic-argument) can be referenced in the [**Class**](#gt_class) or the method as opaque [**Remoting Types**](#gt_remoting-type). They are replaced by the actual types when the [**Class**](#gt_class) or the method is used. For more information, see Generic Type and Methods in [[ECMA-335]](https://go.microsoft.com/fwlink/?LinkId=93453).

<a id="gt_generic-remote-method"></a>
**Generic Remote Method**: A [**Remote Method**](#gt_remote-method) that is parameterized by one or more [**Remoting Types**](#gt_remoting-type). The method caller has to provide the actual Remoting Types (in addition to the [**Input Arguments**](#gt_input-argument)). For more information, see [MS-NRTP] section 3.1.1.

<a id="gt_generic-type"></a>
**Generic Type**: A [**Class**](#gt_class), [**Server Type**](#gt_server-type), or Server Interface that is parameterized by one or more [**Remoting Types**](#gt_remoting-type). A [**Generic Type**](#gt_generic-type) contains GenericArguments as a placeholder for the parameterized [**Remoting Types**](#gt_remoting-type). A [**Generic Type**](#gt_generic-type) cannot have any instances. For more information, see Generic Types and Methods in [ECMA-335].

<a id="gt_input-argument"></a>
**Input Argument**: A named [**Data Value**](#gt_data-value) that is passed as part of a [**Remote Method**](#gt_remote-method) invocation from the client to the server. For more information, see [**Remote Method**](#gt_remote-method) in the Abstract Data Model (section 3.1.1).

<a id="gt_library"></a>
**Library**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). A [**Library**](#gt_library) is a named unit that contains a collection of [**Remoting Types**](#gt_remoting-type). For more information, see Library in [MS-NRTP] section 3.1.1.

<a id="gt_little-endian"></a>
**little-endian**: Multiple-byte values that are byte-ordered with the least significant byte stored in the memory location with the lowest address.

<a id="gt_local-time-zone"></a>
**local time zone**: The time zone in which the computer running the implementation is configured.

<a id="gt_logical-call-id"></a>
**logical call ID**: An optional string value that identifies the logical thread of execution. This value is passed as part of the [**Call Context**](#gt_call-context) and can be used in implementation-specific local threading models on the server.

<a id="gt_member"></a>
**member**: See [**Class**](#gt_class).

<a id="gt_message-content"></a>
**message content**: The [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) body of a message.

<a id="gt_message-properties"></a>
**Message Properties**: A collection of implementation-specific, name-value pairs that are transmitted as part of a [**Remote Method**](#gt_remote-method) invocation. [**Message Properties**](#gt_message-properties) are used to exchange implementation-specific data between clients and servers.

<a id="gt_method-signature"></a>
**method signature**: A list of the remoting types of the arguments of a remote method.

<a id="gt_null-object"></a>
**Null Object**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). [**Null Object**](#gt_null-object) is a special value that can be used in place of an instance of a [**Class**](#gt_class), [**Array**](#gt_array), or String. It indicates that no instance is being specified. For more information, see [MS-NRTP] section 3.1.1.

<a id="gt_object-graph"></a>
**object graph**: In object-oriented programming, groups of interrelated objects that form a network through often complex relationships with each other are known as an object graph. In an object graph, objects can be linked to each other by a specific object, by owning or containing another object, or by holding a reference to another object. Such an abstract structure can be used to represent the state of an application.

<a id="gt_output-argument"></a>
**Output Argument**: A named [**Data Value**](#gt_data-value) that is returned as part of the results of a [**Remote Method**](#gt_remote-method) invocation. For more information, see [**Remote Method**](#gt_remote-method) in Abstract Data Model (section 3.1.1).

<a id="gt_primitive-type"></a>
**Primitive Type**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). [**Primitive Types**](#gt_primitive-type) are predefined [**Remoting Types**](#gt_remoting-type) such as Byte, Int16, Int32, Int64, and so on. For more information, see [MS-NRTP] section 3.1.1

<a id="gt_primitive-value"></a>
**Primitive Value**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). A [**Primitive Value**](#gt_primitive-value) is an instance of a [**Primitive Type**](#gt_primitive-type).

<a id="gt_record"></a>
**record**: A variable-length sequence of bytes with a predefined structure.

<a id="gt_remote-method"></a>
**Remote Method**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). A [**Remote Method**](#gt_remote-method) is a remotely callable operation. A [**Remote Method**](#gt_remote-method) can either be One-Way or Two-Way. In the case of a One-Way Method, there is no reply from the implementation. For more information, see [MS-NRTP] section 3.1.1

<a id="gt_remoting-data-model"></a>
**Remoting Data Model**: A model that is used to represent higher-layer–defined data structures and values, and to represent a [**Remote Method**](#gt_remote-method) invocation and the [**Return Value**](#gt_return-value) or error information from that invocation. A protocol, such as [MS-NRLS](../MS-NRLS/MS-NRLS.md), that is built on top of this protocol can be defined by using the [**Remoting Data Model**](#gt_remoting-data-model), and can be agnostic to the [**serialization format**](#gt_serialization-format). For more information, see Abstract Data Model (section 3.1.1).

<a id="gt_remoting-type"></a>
**Remoting Type**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). [**Class**](#gt_class), [**Array**](#gt_array), [**Enum**](#gt_enum), and Primitive are different kinds of [**Remoting Types**](#gt_remoting-type). All [**Remoting Types**](#gt_remoting-type) are identified by a name that is case sensitive. For more information, see [MS-NRTP] section 3.1.1

<a id="gt_return-value"></a>
**Return Value**: A [**Data Value**](#gt_data-value) that is returned as part of the results of a [**Remote Method**](#gt_remote-method) invocation. For more information, see [**Remote Method**](#gt_remote-method) in Abstract Data Model (section 3.1.1).

<a id="gt_serialization"></a>
**serialization**: A mechanism by which an application converts an object into an XML representation.

<a id="gt_serialization-format"></a>
**Serialization Format**: The structure of the serialized message content, which can be either binary or SOAP. Binary serialization format is specified in [MS-NRBF](#Section_75b9fe09be15475f85b8ae7b7558cfe5). SOAP serialization format is specified in [MS-NRTP].

<a id="gt_serialization-stream"></a>
**Serialization Stream**: An octet stream that contains a sequence of records defined in this document.

<a id="gt_serialize"></a>
**serialize**: The process of taking an in-memory data structure, flat or otherwise, and turning it into a flat stream of bytes. See also marshal.

<a id="gt_server-type"></a>
**Server Type**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). A [**Server Type**](#gt_server-type) contains [**Remote Methods**](#gt_remote-method).

<a id="gt_system-library"></a>
**System Library**: A specially designated [**library**](#gt_library) that can be used to reduce the wire size for commonly used data types. The name of the [**library**](#gt_library) is agreed to by both the server and the client.

<a id="gt_systemobject"></a>
**System.Object**: Part of the [**Remoting Data Model**](#gt_remoting-data-model). [**System.Object**](#gt_systemobject) is a [**Class**](#gt_class) that has no [**Members**](#gt_member). A [**Class**](#gt_class) that does not extend another [**Class**](#gt_class) is considered to extend [**System.Object**](#gt_systemobject).

<a id="gt_ultimate-array-item-type"></a>
**Ultimate Array Item Type**: The Item Type of the innermost Array in a recursive construction of Array of Arrays. For instance, an "Array of TypeA" has an Ultimate Array Item Type of TypeA. An "Array of Array of TypeA" also has an Ultimate Array Item Type of TypeA, as does an "Array of Array of Array of TypeA".

<a id="gt_unicode"></a>
**Unicode**: A character encoding standard developed by the Unicode Consortium that represents almost all of the written languages of the world. The [**Unicode**](#gt_unicode) standard [[UNICODE5.0.0/2007]](https://go.microsoft.com/fwlink/?LinkId=154659) provides three forms (UTF-8, UTF-16, and UTF-32) and seven schemes (UTF-8, UTF-16, UTF-16 BE, UTF-16 LE, UTF-32, UTF-32 LE, and UTF-32 BE).

<a id="gt_utf-8"></a>
**UTF-8**: A byte-oriented standard for encoding Unicode characters, defined in the Unicode standard. Unless specified otherwise, this term refers to the UTF-8 encoding form specified in [UNICODE5.0.0/2007] section 3.9.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[IEEE754] IEEE, "IEEE Standard for Binary Floating-Point Arithmetic", IEEE 754-1985, October 1985, [http://ieeexplore.ieee.org/servlet/opac?punumber=2355](https://go.microsoft.com/fwlink/?LinkId=89903)

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MS-NRTP] Microsoft Corporation, "[.NET Remoting: Core Protocol](../MS-NRTP/MS-NRTP.md)".

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC4234] Crocker, D., Ed., and Overell, P., "Augmented BNF for Syntax Specifications: ABNF", RFC 4234, October 2005, [https://www.rfc-editor.org/info/rfc4234](https://go.microsoft.com/fwlink/?LinkId=90462)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MS-NETOD] Microsoft Corporation, "[Microsoft .NET Framework Protocols Overview](../MS-NETOD/MS-NETOD.md)".

[MSDN-.NET-FRAMEWORK] Microsoft Corporation, "Overview of the .NET Framework", [https://learn.microsoft.com/en-us/dotnet/framework/get-started/overview](https://go.microsoft.com/fwlink/?LinkId=195551)

<a id="Section_1.3"></a>
## 1.3 Overview

The [.NET Remoting: Binary Format Data Structure](../MS-NRTP/MS-NRTP.md) defines a set of structures that represent [**object graph**](#gt_object-graph) or method invocation information as an octet stream. One possible application of the structure is as the serialization format for the data model as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.1.

This specification defines the [**records**](#gt_record) used by this format, and the grammar for writing the records to the [**serialization stream**](#gt_serialization-stream).

The format provides structures for mapping instances of data that conform to the [**Remoting Data Model**](#gt_remoting-data-model) into octets. The Remoting Data Model is specified in [MS-NRTP] section 3.1.1.

The format consists of a sequence of variable-length records. The records are used to hold the [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) instances of [**Classes (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0), [**Arrays**](#gt_array), [**Primitive Types**](#gt_primitive-type), and method invocations. There are multiple record types to represent each of these instances. The various record types optimize the wire size of the serialized instance. This section specifies the structure of each record in detail. For clarity, the records are grouped as follows:

- Class (2) records contain Class (2) instances. The format allows serialization of [**Class Metadata**](#gt_class-metadata), in addition to the actual data. Richness of metadata directly contributes to the wire size. The amount of metadata can be reduced by conveying implicit information through special record types and by sharing metadata across records.
- Array records contain Array instances. There is a general record type for Array that can represent multiple dimensions and nonzero lower bound. There are more compact Array records for frequently used Array types such as single-dimensional Array of String, Object, and [**Primitive Values**](#gt_primitive-value).
- [**Members**](#gt_member) reference records contain [**Data Values**](#gt_data-value) of Class (2) Members or Array items. There are different record types for [**Null Object**](#gt_null-object), string values, Primitive Type values, and instances of Classes (2) and Arrays.
- Method invocation records contain information about [**Remote Method**](#gt_remote-method), [**Server Type**](#gt_server-type), [**Arguments**](#gt_argument), [**Return Value**](#gt_return-value), [**Exception**](#gt_exception), [**Message Properties**](#gt_message-properties), and [**Call Context**](#gt_call-context).
- Other records include records that are used to mark the beginning and end of the format.
<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

This format is part of the .NET Remoting protocols. The .NET Remoting Protocol (as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md)) uses this format to encode [**message content**](#gt_message-content) before transmission, as specified in [MS-NRTP] section 3.

The [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) content is transmitted over either HTTP or TCP, by using headers and framing as specified in [MS-NRTP] section 3. The following block diagram illustrates the relationship.

![The .NET Remoting protocols](media/image1.png)

Figure 1: The .NET Remoting protocols

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

The .NET Remoting: Binary Format Data Structure can be used as part of a [**Remote Method**](#gt_remote-method) invocation protocol or to persist an [**object graph**](#gt_object-graph). It has a compact octet stream representation that makes it applicable to wire protocols. Because the format is binary, it is not suitable for cases where the output has to be human readable. The format does not include additional information to aid in error detection or to prevent corruption.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

This document covers versioning issues in the following areas:

- Protocol Versions: The Serialization Header record has fields called **MajorVersion** and **MinorVersion** that denote the version of the .NET Remoting: Binary Format Data Structure in use. Because only one version of the .NET Remoting: Binary Format Data Structure has been defined to date, the value of **MajorVersion** is always set to 1 and **MinorVersion** to 0. Future revisions of the format would increment this value. The Serialization Header record is specified in section [2.6.1](#Section_2.6.1).
- Message Versions: MessageFlags (section [2.2.1.1](#Section_2.2.1.1)) defines a flag named "Generic Method". The flag indicates that the method being invoked is a [**Generic Remote Method**](#gt_generic-remote-method). The flag is valid only in Microsoft .NET Framework 2.0, Microsoft .NET Framework 3.0, Microsoft .NET Framework 3.5, and Microsoft .NET Framework 4.0. For more information, see [[MSDN-.NET-FRAMEWORK]](https://go.microsoft.com/fwlink/?LinkId=195551).
There are no localization-dependent structures described in this document.

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

This format allows implementation-specific name-value pairs called [**Message Properties**](#gt_message-properties) to be added to the [MethodCallArray (section 2.2.3.2)](#Section_2.2.3.2) and [MethodReturnCallArray (section 2.2.3.4)](#Section_2.2.3.4) records.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 Common Definitions

The following sections specify the common structures and enumerations that are used by all records.

<a id="Section_2.1.1"></a>
### 2.1.1 Common Data Types

This section specifies the structures of the common [**Remoting Types**](#gt_remoting-type) that are supported by this format. The format supports the following [**Primitive Types**](#gt_primitive-type) as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md).

- BOOLEAN
- BYTE
- INT8
- INT16
- INT32
- INT64
- UINT16
- UINT32
- UINT64
The byte-ordering of the multibyte data types is [**little-endian**](#gt_little-endian). The signed data types use two's complement to represent the negative numbers.

In addition, this format defines the following common types.

<a id="Section_2.1.1.1"></a>
#### 2.1.1.1 Char

The Char represents a [**Unicode**](#gt_unicode) character value.

```mermaid
packet-beta
  0-63: "Value (variable)"
```

**Value (variable):** UTF-8-encoded bytes.

<a id="Section_2.1.1.2"></a>
#### 2.1.1.2 Double

The Double represents a 64-bit double-precision floating-point value.

```mermaid
packet-beta
  0-63: "Value"
```

**Value (8 bytes):** A 64-bit double-precision floating-point value, as specified in [[IEEE754]](https://go.microsoft.com/fwlink/?LinkId=89903).

<a id="Section_2.1.1.3"></a>
#### 2.1.1.3 Single

The Single represents a 32-bit single-precision floating-point value.

```mermaid
packet-beta
  0-31: "Value"
```

**Value (4 bytes):** A 32-bit single-precision floating-point value, as specified in [[IEEE754]](https://go.microsoft.com/fwlink/?LinkId=89903).

<a id="Section_2.1.1.4"></a>
#### 2.1.1.4 TimeSpan

The TimeSpan represents time duration.

```mermaid
packet-beta
  0-63: "Value"
```

**Value (8 bytes):** A 64-bit signed-integer value that specifies duration as the number of 100 nanoseconds. The values range from -10675199 days, 2 hours, 48 minutes, and 05.4775808 seconds to 10675199 days, 2 hours, 48 minutes, and 05.4775807 seconds inclusive.

<a id="Section_2.1.1.5"></a>
#### 2.1.1.5 DateTime

The DateTime represents an instant of time.

```mermaid
packet-beta
  0-61: "Ticks"
  62-63: "Kind"
```

**Ticks (62 bits):** A 62-bit signed-integer value that specifies the number of 100 nanoseconds that have elapsed since 12:00:00, January 1, 0001. The value can represent time instants in a granularity of 100 nanoseconds until 23:59:59.9999999, December 31, 9999.

**Kind (2 bits):** Provides the time-zone information as follows. The value can range from 0 to 2, inclusive<1>. The following table maps values with the meaning of the **Ticks** field.

| Value | Meaning |
| --- | --- |
| 0 | Time-zone information is not specified. |
| 1 | The time specified is in the [**Coordinated Universal Time (UTC)**](#gt_coordinated-universal-time-utc) time zone. |
| 2 | The time specified is in the [**local time zone**](#gt_local-time-zone). |

<a id="Section_2.1.1.6"></a>
#### 2.1.1.6 LengthPrefixedString

The LengthPrefixedString represents a string value. The string is prefixed by the length of the [**UTF-8**](#gt_utf-8) encoded string in bytes. The length is encoded in a variable-length field with a minimum of 1 byte and a maximum of 5 bytes. To minimize the wire size, length is encoded as a variable-length field.

```mermaid
packet-beta
  0-63: "Length (variable)"
  64-127: "String (variable)"
```

**Length (variable):** A numerical value that can range from 0 to 2147483647 (2^31) inclusive.

To minimize the wire size, the encoding of the length MUST be encoded as follows:

- The **Length** field MUST be at least 1 byte and MUST NOT be more than 5 bytes.
- Each byte MUST hold the **Length** value in its lower 7 bits.
- The high bit MUST be used to indicate that the length continues in the next byte.
- In the case that all 5 bytes are used, the high 5 bits in the fifth byte MUST be 0.
```mermaid
packet-beta
  0-6: "Length_0-6"
  7-7: "A"
```

**Length_0-6 (7 bits):** Length values range from 0 to 127 (7 bits).

**A - Reserved_7 (1 bit):** The value MUST be 0.

```mermaid
packet-beta
  0-6: "Length_0-6"
  7-7: "A"
  8-14: "Length_8-14"
  15-15: "B"
```

**Length_0-6 (7 bits):** Length values range from 128 to 16383 (14 bits).

**A - Reserved_7 (1 bit):** The value MUST be 1.

**Length_8-14 (7 bits):** Length values range from 128 to 16383 (14 bits).

**B - Reserved_15 (1 bit):** The value MUST be 0.

```mermaid
packet-beta
  0-6: "Length_0-6"
  7-7: "A"
  8-14: "Length_8-14"
  15-15: "B"
  16-22: "Length_16-22"
  23-23: "C"
```

**Length_0-6 (7 bits):** Length values range from 16384 to 2097151 (21 bits).

**A - Reserved_7 (1 bit):** The value MUST be 1.

**Length_8-14 (7 bits):** Length values range from 16384 to 2097151 (21 bits).

**B - Reserved_15 (1 bit):** The value MUST be 1.

**Length_16-22 (7 bits):** Length values range from 16384 to 2097151 (21 bits).

**C - Reserved_23 (1 bit):** The value MUST be 0.

```mermaid
packet-beta
  0-6: "Length_0-6"
  7-7: "A"
  8-14: "Length_8-14"
  15-15: "B"
  16-22: "Length_16-22"
  23-23: "C"
  24-30: "Length_24-30"
  31-31: "D"
```

**Length_0-6 (7 bits):** Length values range from 2097152 to 268435445 (28 bits).

**A - Reserved_7 (1 bit):** The value MUST be 1.

**Length_8-14 (7 bits):** Length values range from 2097152 to 268435445 (28 bits).

**B - Reserved_15 (1 bit):** The value MUST be 1.

**Length_16-22 (7 bits):** Length values range from 2097152 to 268435445 (28 bits).

**C - Reserved_23 (1 bit):** The value MUST be 1.

**Length_24-30 (7 bits):** Length values range from 2097152 to 268435445 (28 bits).

**D - Reserved_31 (1 bit):** The value MUST be 0.

```mermaid
packet-beta
  0-6: "Length_0-6"
  7-7: "A"
  8-14: "Length_8-14"
  15-15: "B"
  16-22: "Length_16-22"
  23-23: "C"
  24-30: "Length_24-30"
  31-31: "D"
  32-38: "Length_32-38"
  39-39: "E"
```

**Length_0-6 (7 bits):** Length values range from 268435456 to 2147483647 (31 bits).

**A - Reserved_7 (1 bit):** The value MUST be 1.

**Length_8-14 (7 bits):** Length values range from 268435456 to 2147483647 (31 bits).

**B - Reserved_15 (1 bit):** The value MUST be 1.

**Length_16-22 (7 bits):** Length values range from 268435456 to 2147483647 (31 bits).

**C - Reserved_23 (1 bit):** The value MUST be 1.

**Length_24-30 (7 bits):** Length values range from 268435456 to 2147483647 (31 bits).

**D - Reserved_31 (1 bit):** The value MUST be 1.

**Length_32-38 (7 bits):** Length values range from 268435456 to 2147483647 (31 bits).

**E - Reserved_39 (1 bit):** The value MUST be 0.

**String (variable):** A UTF-8 encoded string value. The number of bytes of the encoded string MUST be equal to the value specified in the **Length** field.

<a id="Section_2.1.1.7"></a>
#### 2.1.1.7 Decimal

The Decimal represents a decimal value. It has the following format.

```mermaid
packet-beta
  0-63: "Value (variable)"
```

**Value (variable):** A [LengthPrefixedString](#Section_2.1.1.6) value that is the string representation of the decimal value. The string MUST be of the following format.

| Formats for decimal value | Column 2 | Column 3 |
| --- | --- | --- |
| Value | = | 0*1(MINUS)IntegralPart 0*1(FractionalPart) |
| IntegralPart | = | 1*(DIGIT) |
| FractionalPart | = | DECIMALPOINT 1*(DIGIT) |
| MINUS | = | '-' |
| DECIMALPOINT | = | '.' |

The decimal value ranges from positive 79,228,162,514,264,337,593,543,950,335 to negative 79,228,162,514,264,337,593,543,950,335 inclusive.

When reading this value, if all of the following are true:

- The string has more than 29 digits, including both the IntegralPart and the FractionalPart.
- The net value is within the decimal value range.
- The number of digits in the Integral part is less than or equal to 29.
then the decimal value MUST be rounded to the nearest value such that the total number of digits is 29.

<a id="Section_2.1.1.8"></a>
#### 2.1.1.8 ClassTypeInfo

The ClassTypeInfo identifies a [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) by its name and reference to [BinaryLibrary](#Section_2.6.2) record.

```mermaid
packet-beta
  0-63: "TypeName (variable)"
  64-95: "LibraryId"
```

**TypeName (variable):** A [LengthPrefixedString](../MS-NRTP/MS-NRTP.md) value that contains the name of the Class (2). The format of the string is specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.2.

**LibraryId (4 bytes):** An INT32 (as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.2.22) value that represents the ID that identifies the [**Library**](#gt_library) name. The record that contains this field in a [**serialization stream**](#gt_serialization-stream) MUST be preceded by a BinaryLibrary record that defines the Library name for the ID.

<a id="Section_2.1.2"></a>
### 2.1.2 Enumerations

<a id="Section_2.1.2.1"></a>
#### 2.1.2.1 RecordTypeEnumeration

This enumeration identifies the type of the [**record**](#gt_record). Each record (except for [MemberPrimitiveUnTyped](#Section_2.5.2)) starts with a record type enumeration. The size of the enumeration is one BYTE.

| Constant/value | Description |
| --- | --- |
| SerializedStreamHeader 0 | Identifies the [SerializationHeaderRecord](#Section_2.6.1). |
| ClassWithId 1 | Identifies a [ClassWithId](#Section_2.3.2.5) record. |
| SystemClassWithMembers 2 | Identifies a [SystemClassWithMembers](#Section_2.3.2.4) record. |
| ClassWithMembers 3 | Identifies a [ClassWithMembers](#Section_2.3.2.2) record. |
| SystemClassWithMembersAndTypes 4 | Identifies a [SystemClassWithMembersAndTypes](#Section_2.3.2.3) record. |
| ClassWithMembersAndTypes 5 | Identifies a [ClassWithMembersAndTypes](#Section_2.3.2.1) record. |
| BinaryObjectString 6 | Identifies a [BinaryObjectString](#Section_2.5.7) record. |
| BinaryArray 7 | Identifies a [BinaryArray](#Section_2.4.3.1) record. |
| MemberPrimitiveTyped 8 | Identifies a [MemberPrimitiveTyped](#Section_2.5.1) record. |
| MemberReference 9 | Identifies a [MemberReference](#Section_2.5.3) record. |
| ObjectNull 10 | Identifies an [ObjectNull](#Section_2.5.4) record. |
| MessageEnd 11 | Identifies a [MessageEnd](#Section_2.6.3) record. |
| BinaryLibrary 12 | Identifies a [BinaryLibrary](#Section_2.6.2) record. |
| ObjectNullMultiple256 13 | Identifies an [ObjectNullMultiple256](#Section_2.5.6) record. |
| ObjectNullMultiple 14 | Identifies an [ObjectNullMultiple](#Section_2.5.5) record |
| ArraySinglePrimitive 15 | Identifies an [ArraySinglePrimitive](#Section_2.4.3.3). |
| ArraySingleObject 16 | Identifies an [ArraySingleObject](#Section_2.4.3.2) record. |
| ArraySingleString 17 | Identifies an [ArraySingleString](#Section_2.4.3.4) record. |
| MethodCall 21 | Identifies a [BinaryMethodCall](#Section_2.2.3.1) record. |
| MethodReturn 22 | Identifies a [BinaryMethodReturn](#Section_2.2.3.3) record. |

<a id="Section_2.1.2.2"></a>
#### 2.1.2.2 BinaryTypeEnumeration

The BinaryTypeEnumeration identifies the [**Remoting Type**](#gt_remoting-type) of a [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) [**Member**](#gt_member) or an [**Array**](#gt_array) item. The size of the enumeration is a BYTE.

| Constant/value | Description |
| --- | --- |
| Primitive 0 | The Remoting Type is defined in [PrimitiveTypeEnumeration](#Section_2.1.2.3) and the Remoting Type is not a string. |
| String 1 | The Remoting Type is a [LengthPrefixedString](#Section_2.1.1.6). |
| Object 2 | The Remoting Type is [**System.Object**](#gt_systemobject). |
| SystemClass 3 | The Remoting Type is one of the following: A Class (2) in the [**System Library**](#gt_system-library) An Array whose [**Ultimate Array Item Type**](#gt_ultimate-array-item-type) is a Class (2) in the System Library An Array whose Ultimate Array Item Type is System.Object, String, or a [**Primitive Type**](#gt_primitive-type) but does not meet the definition of ObjectArray, StringArray, or PrimitiveArray. |
| Class 4 | The Remoting Type is a Class (2) or an Array whose Ultimate Array Item Type is a Class (2) that is not in the System Library. |
| ObjectArray 5 | The Remoting Type is a single-dimensional Array of System.Object with a lower bound of 0. |
| StringArray 6 | The Remoting Type is a single-dimensional Array of String with a lower bound of 0. |
| PrimitiveArray 7 | The Remoting Type is a single-dimensional Array of a Primitive Type with a lower bound of 0. |

<a id="Section_2.1.2.3"></a>
#### 2.1.2.3 PrimitiveTypeEnumeration

The PrimitiveTypeEnumeration identifies a [**Primitive Type**](#gt_primitive-type) value. The size of the enumeration is a BYTE.

| Constant/value | Description |
| --- | --- |
| Boolean 1 | Identifies a BOOLEAN as specified in [MS-DTYP] section 2.2.4. |
| Byte 2 | Identifies a BYTE as specified in [MS-DTYP] section 2.2.6. |
| Char 3 | Identifies a [Char (section 2.1.1.1)](#Section_2.1.1.1) type. |
| 4 | The value is not used in the protocol. |
| Decimal 5 | Identifies a [Decimal (section 2.1.1.7)](#Section_2.1.1.7). |
| Double 6 | Identifies a [Double (section 2.1.1.2)](#Section_2.1.1.2). |
| Int16 7 | Identifies an INT16 as specified in [MS-DTYP] section 2.2.21. |
| Int32 8 | Identifies an INT32 as specified in [MS-DTYP] section 2.2.22. |
| Int64 9 | Identifies an INT64 as specified in [MS-DTYP] section 2.2.23. |
| SByte 10 | Identifies an INT8 as specified in [MS-DTYP] section 2.2.20. |
| Single 11 | Identifies a [Single (section 2.1.1.3)](#Section_2.1.1.3). |
| TimeSpan 12 | Identifies a [TimeSpan (section 2.1.1.4)](#Section_2.1.1.4). |
| DateTime 13 | Identifies a [DateTime (section 2.1.1.5)](#Section_2.1.1.5). |
| UInt16 14 | Identifies a UINT16 as specified in [MS-DTYP] section 2.2.48. |
| UInt32 15 | Identifies a UINT32 as specified in [MS-DTYP] section 2.2.49. |
| UInt64 16 | Identifies a UINT64 as specified in [MS-DTYP] section 2.2.50. |
| Null 17 | Identifies a [**Null Object**](#gt_null-object). |
| String 18 | Identifies a [LengthPrefixedString (section 2.1.1.6)](#Section_2.1.1.6) value. |

<a id="Section_2.2"></a>
## 2.2 Method Invocation Records

This section specifies [**records**](#gt_record) that define the format for information required for a [**Remote Method**](#gt_remote-method) invocation. [MS-NRTP](../MS-NRTP/MS-NRTP.md) sections 3.1.5.1.1 and 3.1.5.1.2 describe the mechanism to map a method invocation to the records defined in this section.

<a id="Section_2.2.1"></a>
### 2.2.1 Enumerations

<a id="Section_2.2.1.1"></a>
#### 2.2.1.1 MessageFlags

The MessageFlags enumeration is used by the [BinaryMethodCall (section 2.2.3.1)](../MS-DTYP/MS-DTYP.md) or [BinaryMethodReturn (section 2.2.3.3)](../MS-DTYP/MS-DTYP.md) [**records**](#gt_record) to provide information about the structure of the record. The type of the enumeration is INT32, as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.2.22.

The following table is common for both the BinaryMethodCall and BinaryMethodReturn records. The term "Method record" is used in the description when it is applicable to both the records. The term "Call Array record" is used in the description when it is applicable to both [MethodCallArray (section 2.2.3.2)](#Section_2.2.3.2) and [MethodReturnCallArray (section 2.2.3.4)](#Section_2.2.3.4).

| Constant/value | Description |
| --- | --- |
| NoArgs 0x00000001 | The record contains no arguments. It is in the Arg category. |
| ArgsInline 0x00000002 | The Arguments [**Array**](#gt_array) is in the **Args** field of the Method record. It is in the Arg category. |
| ArgsIsArray 0x00000004 | Each argument is an item in a separate Call Array record. It is in the Arg category. |
| ArgsInArray 0x00000008 | The Arguments Array is an item in a separate Call Array record. It is in the Arg category. |
| NoContext 0x00000010 | The record does not contain a [**Call Context**](#gt_call-context) value. It is in the Context category. |
| ContextInline 0x00000020 | Call Context contains only a [**Logical Call ID**](#gt_logical-call-id) value and is in the **CallContext** field of the Method record. It is in the Context category. |
| ContextInArray 0x00000040 | CallContext values are contained in an array that is contained in the Call Array record. It is in the Context category. |
| MethodSignatureInArray 0x00000080 | The [**Method Signature**](#gt_method-signature) is contained in the Call Array record. It is in the Signature category. |
| PropertiesInArray 0x00000100 | [**Message Properties**](#gt_message-properties) is contained in the Call Array record. It is in the Property category. |
| NoReturnValue 0x00000200 | The [**Return Value**](#gt_return-value) is a [**Null object**](#gt_null-object). It is in the Return category. |
| ReturnValueVoid 0x00000400 | The method has no Return Value. It is in the Return category. |
| ReturnValueInline 0x00000800 | The Return Value is in the **ReturnValue** field of the MethodReturnCallArray record. It is in the Return category. |
| ReturnValueInArray 0x00001000 | The Return Value is contained in the MethodReturnCallArray record. It is in the Return category. |
| ExceptionInArray 0x00002000 | An [**Exception**](#gt_exception) is contained in the MethodReturnCallArray record. It is in the Exception category. |
| GenericMethod 0x00008000 | The [**Remote Method**](#gt_remote-method) is generic and the actual [**Remoting Types**](#gt_remoting-type) for the [**Generic Arguments**](#gt_generic-argument) are contained in the Call Array. It is in the Generic category.<2> |

The preceding table lists the possible values of the enumeration. The category designation for each value provides the grouping of these values. It is a flags enumeration. However, not all combinations are valid.

To be valid, a **MessageFlags** value is required to conform to the following:

- For each flags category given in the preceding table (Arg, Context, Signature, Return, Exception, Property, and Generic), the value MUST NOT have more than one flag from the Category set.
- The Args and Exception flag categories are exclusive: if a flag from the Args category is set, the value MUST NOT have any flag from the Exception category set, and vice versa.
- The Return and Exception flag categories are exclusive: if a flag from the Return category is set, the value MUST NOT have any flag from the Exception category set, and vice versa.
- The Return and Signature categories are exclusive: if a flag from the Return category is set, the value MUST NOT have any flag from the Signature category set, and vice versa.
- The Exception and Signature categories are exclusive: if a flag from the Signature category is set, the value MUST NOT have any flag from the Exception category set, and vice versa.
The following table summarizes the preceding rules.

|  | Arg | Context | Signature | Return | Exception | Property | Generic |
| --- | --- | --- | --- | --- | --- | --- | --- |
| **Arg** | Invalid | Valid | Valid | Valid | Invalid | Valid | Valid |
| **Context** | Valid | Invalid | Valid | Valid | Valid | Valid | Valid |
| **Signature** | Valid | Valid | N/A | Invalid | Invalid | Valid | Valid |
| **Return** | Valid | Valid | Invalid | Invalid | Invalid | Valid | Valid |
| **Exception** | Invalid | Valid | Invalid | Invalid | N/A | Valid | Valid |
| **Property** | Valid | Valid | Valid | Valid | Valid | N/A | Valid |
| **Generic** | Valid | Valid | Valid | Valid | Valid | Valid | N/A |

The combination of Signature and Signature, Property and Property, Generic and Generic, or Exception and Exception is not applicable because there is only one bit in the [**Enum**](#gt_enum) for each of these categories.

<a id="Section_2.2.2"></a>
### 2.2.2 Common Structures

<a id="Section_2.2.2.1"></a>
#### 2.2.2.1 ValueWithCode

The ValueWithCode structure is used to associate a [**Primitive Value**](#gt_primitive-value) with an [**Enum**](#gt_enum) that identifies the [**Primitive Type**](#gt_primitive-type) of the Primitive Value.

```mermaid
packet-beta
  0-7: "PrimitiveTypeEnum"
  8-63: "Value (variable)"
```

**PrimitiveTypeEnum (1 byte):** A [PrimitiveTypeEnumeration](#Section_2.1.2.3) value that specifies the type of the data.

**Value (variable):** A Primitive Value whose Primitive Type is identified by the **PrimitiveTypeEnum** field. For example, if the value of the **PrimitiveTypeEnum** field is the PrimitiveTypeEnumeration value INT32, the **Value** field MUST contain a valid INT32 (as specified in [MS-DTYP] section 2.2.22) instance. The length of the field is determined by the Primitive Type of the **Value**. This field MUST NOT be present if the value of **PrimitiveTypeEnum** is Null (17).

<a id="Section_2.2.2.2"></a>
#### 2.2.2.2 StringValueWithCode

The StringValueWithCode structure is a [ValueWithCode](#Section_2.2.2.1) where [PrimitiveTypeEnumeration](#Section_2.1.2.3) is String (18).

```mermaid
packet-beta
  0-7: "PrimitiveTypeEnum"
  8-63: "StringValue (variable)"
```

**PrimitiveTypeEnum (1 byte):** A PrimitiveTypeEnumeration value that specifies the [**Primitive Type**](#gt_primitive-type) of the data. The value MUST be 18 (String).

**StringValue (variable):** A [LengthPrefixedString](#Section_2.1.1.6) that contains the string value.

<a id="Section_2.2.2.3"></a>
#### 2.2.2.3 ArrayOfValueWithCode

The ArrayOfValueWithCode structure contains a list of [ValueWithCode](#Section_2.2.2.1) records. The list is prefixed with the length of the [**Array**](#gt_array).

```mermaid
packet-beta
  0-31: "Length"
  32-95: "ListOfValueWithCode (variable)"
```

**Length (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that indicates the number of items in the Array. The value can range from 0 to 2147483647 (2^31) inclusive.

**ListOfValueWithCode (variable):** A sequence of ValueWithCode records. The number of items in the sequence MUST be equal to the value specified in the **Length** field.

<a id="Section_2.2.3"></a>
### 2.2.3 Record Definitions

<a id="Section_2.2.3.1"></a>
#### 2.2.3.1 BinaryMethodCall

The BinaryMethodCall record contains information that is required to perform a [**Remote Method**](#gt_remote-method) invocation.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "MessageEnum"
  40-95: "MethodName (variable)"
  96-159: "TypeName (variable)"
  160-223: "CallContext (variable)"
  224-287: "Args (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 21.

**MessageEnum (4 bytes):** A [MessageFlags](#Section_2.2.1.1) value that indicates whether the arguments and [**Call Context**](#gt_call-context), [**Message Properties**](#gt_message-properties), [**Generic Arguments**](#gt_generic-argument), and [**Method Signature**](#gt_method-signature) are present. It also specifies whether the arguments and Call Context are present in this record or in the following [MethodCallArray](#Section_2.2.3.2) record. For this record type, the field MUST NOT contain the values from the Return and the [**Exception**](#gt_exception) categories.

**MethodName (variable):** A [StringValueWithCode](../MS-NRTP/MS-NRTP.md) that represents the Remote Method name. The format of the string is as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.1.

**TypeName (variable):** A StringValueWithCode that represents the [**Server Type**](#gt_server-type) name. The format of the string is specified as QualifiedTypeName, as specified in [MS-NRTP] section 2.2.1.2.

**CallContext (variable):** A StringValueWithCode that represents the [**Logical Call ID**](#gt_logical-call-id). This field is conditional. If the **MessageEnum** field has the ContextInline bit set, the field MUST be present; otherwise, the field MUST NOT be present. The presence of this field indicates that the Call Context contains a single entry with the Name as "__RemotingData" and the value is an instance of the [**Remoting Type**](#gt_remoting-type) CallContextRemotingData, as specified in [MS-NRTP] section 2.2.2.16. The value of this field MUST be interpreted as the value of the **logicalCallID** field in the CallContextRemotingData [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0).

**Args (variable):** An [ArrayOfValueWithCode](#Section_2.2.2.3) where each item of the [**Array**](#gt_array) corresponds to an input argument of the method. The items of the Array MUST be in the same order as the input arguments. This field is conditional. If the **MessageEnum** field has the ArgsInline bit set, the field MUST be present; otherwise, the field MUST NOT be present.

<a id="Section_2.2.3.2"></a>
#### 2.2.3.2 MethodCallArray

The MethodCallArray is a special use of the [ArraySingleObject](#Section_2.4.3.2) record. The record represents a [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) [**Array**](#gt_array) that can contain instances of any [**Remoting Type**](#gt_remoting-type). The items of the Array include [**Input Arguments**](#gt_input-argument), [**Generic Type**](#gt_generic-type) Arguments, [**Method Signature**](#gt_method-signature), [**Call Context**](#gt_call-context), and [**Message Properties**](#gt_message-properties). Each item is conditional. The conditions for presence of the item are given with the definition of each item. The items, if present, MUST be in the following order:

- **Input Arguments**: An Array that contains the Input Arguments for the method. This item is conditional. If the **MessageEnum** field of the preceding [BinaryMethodCall](#Section_2.2.3.1) record has the ArgsInArray bit set, the item MUST be present; otherwise, the item MUST NOT be present.
- **Generic Type Arguments**: An Array of UnitySerializationHolder [**classes (1)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0), as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.2.12. The presence of this field indicates that the method represented by the BinaryMethodCall record is a Generic Method. Each item of the array contains a Remoting Type that MUST be used as [**Generic Argument**](#gt_generic-argument) for the Generic Method. This field is conditional. If the **MessageEnum** field of the preceding BinaryMethodCall record has the GenericMethod bit set, the field MUST be present; otherwise, the field MUST NOT be present.<3>
- **Method Signature**: An Array of UnitySerializationHolder classes (1) as specified in [MS-NRTP] section 2.2.2.12. Each item of the Array contains the Remoting Type of an argument of the [**Remote Method**](#gt_remote-method). If the **MessageEnum** field of the preceding BinaryMethodCall record has the MethodSignatureInArray bit set, the field MUST be present; otherwise, the field MUST NOT be present. If present, the number of items in the Array MUST match the number of items in the Input Argument item.
- **Call Context**: An instance of the Class (2) "System.Runtime.Remoting.Messaging.LogicalCallContext". The [**Library**](#gt_library) name of the Class (2) is "mscorlib". Each name-value pair of the Call Context MUST be mapped to a [**Member**](#gt_member) name and Member value of the Class (2). If the **MessageEnum** field of the preceding BinaryMethodCall record has the ContextInArray bit set, the field MUST be present; otherwise, the field MUST NOT be present.
- **Message Properties**: An Array that can contain instances of any Remoting Type. Each instance is a DictionaryEntry, as specified in [MS-NRTP] section 2.2.2.6. If the **MessageEnum** field of the preceding BinaryMethodCall record has the PropertiesInArray bit set, the field MUST be present; otherwise, the field MUST NOT be present.
<a id="Section_2.2.3.3"></a>
#### 2.2.3.3 BinaryMethodReturn

The BinaryMethodReturn record contains the information returned by a [**Remote Method**](#gt_remote-method).

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "MessageEnum"
  40-95: "ReturnValue (variable)"
  96-159: "CallContext (variable)"
  160-223: "Args (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 22.

**MessageEnum (4 bytes):** A [MessageFlags](#Section_2.2.1.1) value that indicates whether the [**Return Value**](#gt_return-value), [**Arguments**](#gt_argument), [**Message Properties**](#gt_message-properties), and [**Call Context**](#gt_call-context) are present. The value also specifies whether the Return Value, Arguments, and Call Context are present in this record or the following [MethodReturnCallArray](#Section_2.2.3.4) record. For this record, the field MUST NOT have the MethodSignatureInArray or GenericMethod bits set.

**ReturnValue (variable):** A [ValueWithCode](#Section_2.2.2.1) that contains the Return Value of a Remote Method. If the **MessageEnum** field has the ReturnValueInline bit set, this field MUST be present; otherwise, this field MUST NOT be present.

**CallContext (variable):** A [StringValueWithCode](#Section_2.2.2.2) that represents the [**Logical Call ID**](#gt_logical-call-id). This field is conditional. If the **MessageEnum** field has the ContextInline bit set, the field MUST be present; otherwise, the field MUST NOT be present.

**Args (variable):** An [ArrayOfValueWithCode](#Section_2.2.2.3) that contains the [**Output Arguments**](#gt_output-argument) of the method. This field is conditional. If the **MessageEnum** field has the ArgsInline bit set, the field MUST be present; otherwise, the field MUST NOT be present.

<a id="Section_2.2.3.4"></a>
#### 2.2.3.4 MethodReturnCallArray

The MethodReturnCallArray is a special use of the [ArraySingleObject](#Section_2.4.3.2) record. The record represents a [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) [**Array**](#gt_array) that can contain instances of any [**Remoting Type**](#gt_remoting-type). The items of the Array include [**Return Value**](#gt_return-value), [**Output Arguments**](#gt_output-argument), [**Exception**](#gt_exception), [**Call Context**](#gt_call-context), and [**Message Properties**](#gt_message-properties). Each item is conditional. The conditions for presence of the item are given with the definition of the item in the following list. The items, if present, MUST be in the following order:

- **Return Value**: The Return Value of the method. This item is conditional. If the **MessageEnum** field of the preceding [BinaryMethodReturn](#Section_2.2.3.3) record has the ReturnValueInArray bit set, the item MUST be present; otherwise, the item MUST NOT be present.
- **Output Arguments**: An Array that contains the Output Arguments for the method. This item is conditional. If the **MessageEnum** field of the preceding BinaryMethodReturn record has the ArgsInArray bit set, the item MUST be present; otherwise, the item MUST NOT be present.
- **Exception**: A [**Data Value**](#gt_data-value) assignable to System.Exception [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.2.7. This item is conditional. If the **MessageEnum** field of the preceding BinaryMethodReturn record has the ExceptionInArray bit set, the item MUST be present; otherwise, the item MUST NOT be present.
- **Call Context**: An instance of the Class (2) called "System.Runtime.Remoting.Messaging.LogicalCallContext". The [**Library**](#gt_library) name of the Class (2) is "mscorlib". Each name-value pair of the Call Context MUST be mapped to a [**Member**](#gt_member) name and a Member value of the Class (2). If the **MessageEnum** field of the preceding BinaryMethodReturn record has the ContextInArray bit set, the field MUST be present; otherwise, the field MUST NOT be present.
- **Message Properties**: An Array that can contain instances of any Remoting Type. Each instance is a DictionaryEntry, as specified in [MS-NRTP] section 2.2.2.6. If the **MessageEnum** field of the preceding BinaryMethodReturn record has the PropertiesInArray bit set, the field MUST be present; otherwise, the field MUST NOT be present.
<a id="Section_2.3"></a>
## 2.3 Class Records

This section defines [**Class (1)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) records. A Class (1) record represents an instance of a Class (1). [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.6 describes the mechanism to map a Class (1) instance to a record defined in this section. [MS-NRTP] section 3.1.5.1.9 describes the mechanism to map an [**Enum**](#gt_enum) value to a record defined in this section.

The values of the [**Members**](#gt_member) of the Class (1) MUST be [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) as records that follow this record, as specified in section [2.7](#Section_2.7). The order of the records MUST match the order of MemberNames as specified in the [ClassInfo (section 2.3.1.1)](#Section_2.3.1.1) structure.

<a id="Section_2.3.1"></a>
### 2.3.1 Common Structures

<a id="Section_2.3.1.1"></a>
#### 2.3.1.1 ClassInfo

ClassInfo is a common structure used by all the [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) records. It has the following structure.

```mermaid
packet-beta
  0-31: "ObjectId"
  32-95: "Name (variable)"
  96-127: "MemberCount"
  128-191: "MemberNames (variable)"
```

**ObjectId (4 bytes):** An INT32 value (as specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.2.22) that uniquely identifies the object in the [**serialization stream**](#gt_serialization-stream). An implementation MAY use any algorithm to generate the unique IDs. If the ObjectId is referenced by a [MemberReference](../MS-DTYP/MS-DTYP.md) record elsewhere in the serialization stream, the ObjectId MUST be positive. If the ObjectId is not referenced by any MemberReference in the serialization stream, then the ObjectId SHOULD be positive, but MAY be negative.<4>

**Name (variable):** A [LengthPrefixedString](../MS-NRTP/MS-NRTP.md) value that contains the name of the Class (1). The format of the string MUST be as specified in the RemotingTypeName, as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.2.

**MemberCount (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that contains the number of [**Members**](#gt_member) in the Class (2). The value MUST be 0 or a positive integer.

**MemberNames (variable):** A sequence of LengthPrefixedString values that represents the names of the Members in the class (2). The number of items in the sequence MUST be equal to the value specified in the **MemberCount** field.

The MemberNames MAY be in any order.<5>

<a id="Section_2.3.1.2"></a>
#### 2.3.1.2 MemberTypeInfo

The MemberTypeInfo is a common structure that contains type information for [**Class (2)**](#gt_18393bbe-0c06-42b7-890d-b94a9a40b6e0) [**Members**](#gt_member). It has the following structure.

```mermaid
packet-beta
  0-63: "BinaryTypeEnums (variable)"
  64-127: "AdditionalInfos (variable)"
```

**BinaryTypeEnums (variable):** A sequence of [BinaryTypeEnumeration](#Section_2.1.2.2) values that represents the Member Types that are being transferred. The [**Array**](#gt_array) MUST:

- Have the same number of items as the **MemberCount** field of the [ClassInfo](#Section_2.3.1.1) structure.
- Be ordered such that the BinaryTypeEnumeration corresponds to the Member name in the **MemberNames** field of the ClassInfo structure.
**AdditionalInfos (variable):** A sequence of additional information about a [**Remoting Type**](#gt_remoting-type). For every value of the BinaryTypeEnum in the **BinaryTypeEnums** field that is a Primitive, SystemClass, Class (2), or PrimitiveArray, the **AdditionalInfos** field contains additional information about the Remoting Type. For the BinaryTypeEnum value of Primitive and PrimitiveArray, this field specifies the actual [**Primitive Type**](#gt_primitive-type) that uses the PrimitiveTypeEnum. For the BinaryTypeEnum value of SystemClass, this field specifies the name of the class (2). For the BinaryTypeEnum value of Class (2), this field specifies the name of the Class (2) and the [**Library**](#gt_library) ID. The following table enumerates additional information required for each BinaryType enumeration.

| BinaryTypeEnum | AdditionalInfos |
| --- | --- |
| Primitive | PrimitiveTypeEnumeration |
| String | None |
| Object | None |
| SystemClass | String (Class (1) name as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.2) |
| Class | ClassTypeInfo |
| ObjectArray | None |
| StringArray | None |
| PrimitiveArray | PrimitiveTypeEnumeration |

- The AdditionalInfos sequence MUST NOT contain any item for the BinaryTypeEnum values of String, Object, ObjectArray, or StringArray.
- The AdditionalInfos items MUST be in the same order as the corresponding BinaryTypeEnum items in the **BinaryTypeEnums** field.
- When the BinaryTypeEnum value is Primitive, the PrimitiveTypeEnumeration value in AdditionalInfo MUST NOT be Null (17) or String (18).
<a id="Section_2.3.2"></a>
### 2.3.2 Record Definitions

<a id="Section_2.3.2.1"></a>
#### 2.3.2.1 ClassWithMembersAndTypes

The ClassWithMembersAndTypes record is the most verbose of the Class records. It contains metadata about [**Members**](#gt_member), including the names and [**Remoting Types**](#gt_remoting-type) of the Members. It also contains a [**Library**](#gt_library) ID that references the Library Name of the Class.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-63: "ClassInfo (variable)"
  64-127: "MemberTypeInfo (variable)"
  128-159: "LibraryId"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. Its value MUST be 5.

**ClassInfo (variable):** A [ClassInfo](#Section_2.3.1.1) structure that provides information about the name and Members of the Class.

**MemberTypeInfo (variable):** A [MemberTypeInfo](#Section_2.3.1.2) structure that provides information about the Remoting Types of the Members.

**LibraryId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that references a [BinaryLibrary](../MS-DTYP/MS-DTYP.md) record by its Library ID. A BinaryLibrary record with the LibraryId MUST appear earlier in the [**serialization stream**](#gt_serialization-stream).

<a id="Section_2.3.2.2"></a>
#### 2.3.2.2 ClassWithMembers

The ClassWithMembers record is less verbose than [ClassWithMembersAndTypes](#Section_2.3.2.1). It does not contain information about the [**Remoting Type**](#gt_remoting-type) information of the [**Members**](#gt_member). This record can be used when the information is deemed unnecessary because it is known out of band or can be inferred from context.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-63: "ClassInfo (variable)"
  64-95: "LibraryId"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. Its value MUST be 3.

**ClassInfo (variable):** A [ClassInfo](#Section_2.3.1.1) structure that provides information about the name and Members of the Class.

**LibraryId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that references a [BinaryLibrary](../MS-DTYP/MS-DTYP.md) record by its Library ID. The ID MUST be a positive integer. A BinaryLibrary record with the LibraryId MUST appear earlier in the [**serialization stream**](#gt_serialization-stream).

<a id="Section_2.3.2.3"></a>
#### 2.3.2.3 SystemClassWithMembersAndTypes

The SystemClassWithMembersAndTypes record is less verbose than [ClassWithMembersAndTypes](#Section_2.3.2.1). It does not contain a LibraryId. This record implicitly specifies that the Class is in the [**System Library**](#gt_system-library).

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-63: "ClassInfo (variable)"
  64-127: "MemberTypeInfo (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. Its value MUST be 4.

**ClassInfo (variable):** A [ClassInfo](#Section_2.3.1.1) structure that provides information about the name and [**Members**](#gt_member) of the Class.

**MemberTypeInfo (variable):** A [MemberTypeInfo](#Section_2.3.1.2) structure that provides information about the [**Remoting Type**](#gt_remoting-type) of the Members.

<a id="Section_2.3.2.4"></a>
#### 2.3.2.4 SystemClassWithMembers

The SystemClassWithMembers record is less verbose than [ClassWithMembersAndTypes](#Section_2.3.2.1). It does not contain a LibraryId or the information about the [**Remoting Types**](#gt_remoting-type) of the [**Members**](#gt_member). This record implicitly specifies that the Class is in the [**System Library**](#gt_system-library). This record can be used when the information is deemed unnecessary because it is known out of band or can be inferred from context.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-63: "ClassInfo (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. Its value MUST be 2.

**ClassInfo (variable):** A [ClassInfo](#Section_2.3.1.1) structure that provides information about the name and Members of the Class.

<a id="Section_2.3.2.5"></a>
#### 2.3.2.5 ClassWithId

The ClassWithId record is the most compact. It has no metadata. It refers to metadata defined in [SystemClassWithMembers](#Section_2.3.2.4), [SystemClassWithMembersAndTypes](#Section_2.3.2.3), [ClassWithMembers](#Section_2.3.2.2), or [ClassWithMembersAndTypes](#Section_2.3.2.1) record.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "ObjectId"
  40-71: "MetadataId"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 1.

**ObjectId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that uniquely identifies the object in the [**serialization stream**](#gt_serialization-stream).

**MetadataId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that references one of the other Class records by its ObjectId. A SystemClassWithMembers, SystemClassWithMembersAndTypes, ClassWithMembers, or ClassWithMembersAndTypes record with the value of this field in its **ObjectId** field MUST appear earlier in the serialization stream.

<a id="Section_2.4"></a>
## 2.4 Array Records

This section defines [**Array**](#gt_array) records that represent Array instances. [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.7, describes the mechanism to map an Array instance to a record defined in this section.

Items of an Array MUST be [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) as records following the Array record, as specified in section [2.7](#Section_2.7). The number of records that contain the Array items depends on the type of Array record. For the [ArraySingleObject](#Section_2.4.3.2), [ArraySinglePrimitive](#Section_2.4.3.3), and [ArraySingleString](#Section_2.4.3.4) records, the number of records containing Array items MUST be equal to the value of the **Length** field of the **ArrayInfo** field. For [BinaryArray](#Section_2.4.3.1) records, the number of records containing Array items MUST be equal to the product of the values contained in the **Lengths** field of the BinaryArray record. In the cases where an item of an Array can contain a [**Null Object**](#gt_null-object), multiple ObjectNull records in sequence MAY be represented by a single [ObjectNullMultiple (section 2.5.5)](#Section_2.5.5) or [ObjectNullMultiple256 (section 2.5.6)](#Section_2.5.6) record. Each of these records contains a **NullCount** field that states how many [ObjectNull](#Section_2.5.4) records that the record represents. For the purpose of calculating the number of records, a single ObjectNullMultiple or ObjectNullMultiple256 record is counted as many times as the value specified in the **NullCount** field.<6>

<a id="Section_2.4.1"></a>
### 2.4.1 Enumerations

<a id="Section_2.4.1.1"></a>
#### 2.4.1.1 BinaryArrayTypeEnumeration

The BinaryArrayTypeEnumeration is used to denote the type of an [**Array**](#gt_array). The size of the enumeration is 1 byte. It is used by the Array records.

| Constant/value | Description |
| --- | --- |
| Single 0 | A single-dimensional Array. |
| Jagged 1 | An Array whose elements are Arrays. The elements of a jagged Array can be of different dimensions and sizes. |
| Rectangular 2 | A multi-dimensional rectangular Array. |
| SingleOffset 3 | A single-dimensional offset. |
| JaggedOffset 4 | A jagged Array where the lower bound index is greater than 0. |
| RectangularOffset 5 | Multi-dimensional Arrays where the lower bound index of at least one of the dimensions is greater than 0. |

<a id="Section_2.4.2"></a>
### 2.4.2 Common Definitions

<a id="Section_2.4.2.1"></a>
#### 2.4.2.1 ArrayInfo

The ArrayInfo is a common structure that is used by [**Array**](#gt_array) records.

```mermaid
packet-beta
  0-31: "ObjectId"
  32-63: "Length"
```

**ObjectId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that uniquely identifies the Array instance in the [**serialization stream**](#gt_serialization-stream). The ID MUST be a positive integer. An implementation MAY use any algorithm to generate the unique IDs.<7>

**Length (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that specifies the number of items in the Array. The value MUST be 0 or a positive integer.

<a id="Section_2.4.3"></a>
### 2.4.3 Record Definitions

<a id="Section_2.4.3.1"></a>
#### 2.4.3.1 BinaryArray

BinaryArray is the most general form of [**Array**](#gt_array) records. The record is more verbose than the other Array records.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "ObjectId"
  40-47: "BinaryArrayTypeEnum"
  48-79: "Rank"
  80-127: "Lengths (variable)"
  128-191: "LowerBounds (variable)"
  192-199: "TypeEnum"
  200-255: "AdditionalTypeInfo (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. Its value MUST be 7.

**ObjectId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that uniquely identifies the Array in the [**serialization stream**](#gt_serialization-stream). The value MUST be a positive integer. An implementation MAY use any algorithm to generate the unique IDs.<8>

**BinaryArrayTypeEnum (1 byte):** A [BinaryArrayTypeEnumeration](#Section_2.4.1.1) value that identifies the type of the Array.

**Rank (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that specifies the rank (number of dimensions) of the Array. The value MUST be 0 or a positive integer.

**Lengths (variable):** A sequence of INT32 values (as specified in [MS-DTYP] section 2.2.22) that specifies the length of each of the dimensions of the Array. The number of values MUST be equal to the value specified in the **Rank** field. Each value of the sequence MUST be 0 or a positive integer.

**LowerBounds (variable):** A sequence of INT32 values (as specified in [MS-DTYP] section 2.2.22) that specifies the lower bound (first index) of each of the dimensions of the Array. The number of values MUST be equal to the value specified in the **Rank** field. If the value of the **BinaryArrayTypeEnum** field is SingleOffset, JaggedOffset, or RectangularOffset, this field MUST be present in the serialization stream; otherwise, this field MUST NOT be present in the serialization stream.

**TypeEnum (1 byte):** A BinaryTypeEnum value that identifies the [**Remoting Type**](#gt_remoting-type) of the Array item.

**AdditionalTypeInfo (variable):** Information about the Remoting Type of the Array item in addition to the information provided in the **TypeEnum** field. For the BinaryTypeEnum values of Primitive, SystemClass, Class, or PrimitiveArray, this field contains additional information about the Remoting Type. For the BinaryTypeEnum value of Primitive and PrimitiveArray, this field specifies the actual [**Primitive Type**](#gt_primitive-type) that uses the PrimitiveTypeEnum. For the BinaryTypeEnum value of SystemClass, this field specifies the name of the Class. For the BinaryTypeEnum value of Class, this field specifies the name of the Class and the [**Library**](#gt_library) ID. The following table enumerates additional information that is required for each BinaryType enumeration.

| BinaryTypeEnum | AdditionalTypeInfo |
| --- | --- |
| Primitive | PrimitiveTypeEnum |
| Object | None |
| String | None |
| SystemClass | String (Class name as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.2) |
| Class | [ClassTypeInfo](#Section_2.1.1.8) |
| ObjectArray | None |
| StringArray | None |
| PrimitiveArray | PrimitiveTypeEnum |

If the BinaryTypeEnum value of the **TypeEnum** field is Object, String, ObjectArray, or StringArray, this field MUST NOT be present in the serialization stream.

If the BinaryTypeEnum value is Primitive, the [PrimitiveTypeEnumeration](#Section_2.1.2.3) value in AdditionalTypeInfo MUST NOT be Null (17) or String (18).

<a id="Section_2.4.3.2"></a>
#### 2.4.3.2 ArraySingleObject

The ArraySingleObject record contains a single-dimensional [**Array**](#gt_array) in which each [**Member**](#gt_member) record MAY contain any [**Data Value**](#gt_data-value).

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-71: "ArrayInfo"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 16.

**ArrayInfo (8 bytes):** An [ArrayInfo](#Section_2.4.2.1) structure that specifies the ID and the length of the Array instance.

<a id="Section_2.4.3.3"></a>
#### 2.4.3.3 ArraySinglePrimitive

The ArraySinglePrimitive record contains a single-dimensional [**Array**](#gt_array) in which all [**Members**](#gt_member) are [**Primitive Value**](#gt_primitive-value).

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-71: "ArrayInfo"
  72-79: "PrimitiveTypeEnum"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 15.

**ArrayInfo (8 bytes):** An [ArrayInfo](#Section_2.4.2.1) structure that specifies the ID and the length of the Array instance.

**PrimitiveTypeEnum (1 byte):** A [PrimitiveTypeEnumeration](#Section_2.1.2.3) value that identifies the [**Primitive Type**](#gt_primitive-type) of the items of the Array. The value MUST NOT be 17 (Null) or 18 (String).

This record MUST be followed by a sequence of MemberPrimitiveUnTyped records that contain values whose Primitive Type is specified by the **PrimitiveTypeEnum** field. The number of records in the sequence MUST match the value specified in the **Length** field of ArrayInfo.

<a id="Section_2.4.3.4"></a>
#### 2.4.3.4 ArraySingleString

The ArraySingleString record contains a single-dimensional [**Array**](#gt_array) whose items are String values.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-71: "ArrayInfo"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 17.

**ArrayInfo (8 bytes):** An [ArrayInfo](#Section_2.4.2.1) structure that specifies the ID and the length of the Array instance.

<a id="Section_2.5"></a>
## 2.5 Member Reference Records

[**Arrays**](#gt_array) and classes are containers of [**Member**](#gt_member) values; that is, graph nodes that represent instances of Arrays and Classes that have outbound edges. The Member values are the graph nodes that are destinations for the outbound edges. In the [**serialization stream**](#gt_serialization-stream), the Member values follow the Array and the Class records. The Member values are [**serialized**](#gt_704e83c1-4e24-4ca2-a2e0-81ec77914bc3) by using the Member Reference records.

<a id="Section_2.5.1"></a>
### 2.5.1 MemberPrimitiveTyped

The MemberPrimitiveTyped record contains a [**Primitive Type**](#gt_primitive-type) value other than String. The mechanism to serialize a [**Primitive Value**](#gt_primitive-value) is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.8.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-15: "PrimitiveTypeEnum"
  16-63: "Value (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 8.

**PrimitiveTypeEnum (1 byte):** A [PrimitiveTypeEnumeration](#Section_2.1.2.3) value that specifies the Primitive Type of data that is being transmitted. This field MUST NOT contain a value of 17 (Null) or 18 (String).

**Value (variable):** The value whose type is inferred from the **PrimitiveTypeEnum** field as specified in the table in section 2.1.2.3.

<a id="Section_2.5.2"></a>
### 2.5.2 MemberPrimitiveUnTyped

The MemberPrimitiveUnTyped record is the most compact record to represent a [**Primitive Type**](#gt_primitive-type) value. This type of record does not have a RecordTypeEnum to indicate the record type. The record MUST be used when a Class Member or [**Array**](#gt_array) item is a Primitive Type. Because the containing Class or Array record specifies the Primitive Type of each Member, the Primitive Type is not respecified along with the value. Also, the [**Primitive Values**](#gt_primitive-value) cannot be referenced by any other record; therefore it does not require an ObjectId. This record has no field besides the value. The mechanism to [**serialize**](#gt_serialize) a Primitive Value is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.8.

```mermaid
packet-beta
  0-63: "Value (variable)"
```

**Value (variable):** A Primitive Type value other than String.

<a id="Section_2.5.3"></a>
### 2.5.3 MemberReference

The MemberReference record contains a reference to another record that contains the actual value. The record is used to [**serialize**](#gt_serialize) values of a Class Member and [**Array**](#gt_array) items. The mechanism to serialize a Class instance is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.6. The mechanism to serialize an Array instance is described in [MS-NRTP] section 3.1.5.1.7.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "IdRef"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 9.

**IdRef (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that is an ID of an object defined in another record.

- The value MUST be a positive integer.
- A Class, Array, or [BinaryObjectString](#Section_2.5.7) record MUST exist in the [**serialization stream**](#gt_serialization-stream) with the value as its ObjectId. Unlike other ID references, there is no restriction on where the record that defines the ID appears in the serialization stream; that is, it MAY appear after the referencing record.<9>
<a id="Section_2.5.4"></a>
### 2.5.4 ObjectNull

The ObjectNull record contains a [**Null Object**](#gt_null-object). The mechanism to [**serialize**](#gt_serialize) a Null Object is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.12.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 10.

<a id="Section_2.5.5"></a>
### 2.5.5 ObjectNullMultiple

The ObjectNullMultiple record provides a more compact form for multiple consecutive Null records than using individual ObjectNull records. The mechanism to [**serialize**](#gt_serialize) a [**Null Object**](#gt_null-object) is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.12.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "NullCount"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 14.

**NullCount (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that is the count of the number of consecutive Null Objects. The value MUST be a positive integer.

<a id="Section_2.5.6"></a>
### 2.5.6 ObjectNullMultiple256

The ObjectNullMultiple256 record provides the most compact form for multiple, consecutive Null records when the count of Null records is less than 256. The mechanism to [**serialize**](#gt_serialize) a [**Null Object**](#gt_null-object) is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.12.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-15: "NullCount"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 13.

**NullCount (1 byte):** A BYTE value (as specified in [MS-DTYP] section 2.2.6) that is the count of the number of consecutive Null objects. The value MUST be in the range of 0 to 255, inclusive.

<a id="Section_2.5.7"></a>
### 2.5.7 BinaryObjectString

The BinaryObjectString record identifies an object as a String object, and contains information about it. The mechanism to [**serialize**](#gt_serialize) a string is described in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.1.5.1.11.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "ObjectId"
  40-95: "Value (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 6.

**ObjectId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that uniquely identifies the string instance in the [**serialization stream**](#gt_serialization-stream). The value MUST be a positive integer. An implementation MAY use any algorithm to generate the unique IDs.<10>

**Value (variable):** A [LengthPrefixedString](#Section_2.1.1.6) value.

<a id="Section_2.6"></a>
## 2.6 Other Records

The following sections define the records that are not part of any of the previous categories.

<a id="Section_2.6.1"></a>
### 2.6.1 SerializationHeaderRecord

The SerializationHeaderRecord record MUST be the first record in a binary [**serialization**](#gt_serialization). This record has the major and minor version of the format and the IDs of the top object and the headers.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "RootId"
  40-71: "HeaderId"
  72-103: "MajorVersion"
  104-135: "MinorVersion"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 0.

**RootId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that identifies the root of the graph of nodes. The value of the field is set as follows:

- If a [BinaryMethodCall](#Section_2.2.3.1) record is present in the [**serialization stream**](#gt_serialization-stream) and if there is no [MethodCallArray](#Section_2.2.3.2) record following it, the value of this field MUST be 0; if a MethodCallArray record follows the BinaryMethodCall record, the value of this field MUST contain the ObjectId of the MethodCallArray.
- If a [BinaryMethodReturn](#Section_2.2.3.3) record is present in the serialization stream and if there is no [MethodReturnCallArray](#Section_2.2.3.4) record following it, the value of this field MUST be 0; if a MethodReturnCallArray record follows the BinaryMethodReturn record, the value of this field MUST contain the ObjectId of the MethodReturnCallArray.
- If neither the BinaryMethodCall nor BinaryMethodReturn record is present in the serialization stream, the value of this field MUST contain the ObjectId of a Class, [**Array**](#gt_array), or [BinaryObjectString](#Section_2.5.7) record contained in the serialization stream.
**HeaderId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that identifies the Array that contains the header objects. The value of the field is set as follows:

- If a BinaryMethodCall record is present in the serialization stream and if there is no MethodCallArray record following it, the value of this field MUST be 0; if a MethodCallArray record follows the BinaryMethodCall record, the value of this field MUST be -1.
- If a BinaryMethodReturn record is present in the serialization stream and if there is no MethodReturnCallArray record following it, the value of this field MUST be 0; if a MethodReturnCallArray record follows the BinaryMethodReturn record, the value of this field MUST be -1.
- If neither the BinaryMethodCall nor BinaryMethodReturn record is present in the serialization stream, the value of this field MUST contain the ObjectId of a Class, Array , or BinaryObjectString record that is contained in the serialization stream.
The field MUST be ignored on read.

**MajorVersion (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that identifies the major version of the format. The value of this field MUST be 1.

**MinorVersion (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that identifies the minor version of the protocol. The value of this field MUST be 0.

<a id="Section_2.6.2"></a>
### 2.6.2 BinaryLibrary

The BinaryLibrary record associates an INT32 ID (as specified in [MS-DTYP] section 2.2.22) with a [**Library**](#gt_library) name. This allows other records to reference the Library name by using the ID. This approach reduces the wire size when there are multiple records that reference the same Library name.

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
  8-39: "LibraryId"
  40-95: "LibraryName (variable)"
```

**RecordTypeEnum (1 byte):** A [RecordTypeEnumeration](#Section_2.1.2.1) value that identifies the record type. The value MUST be 12.

**LibraryId (4 bytes):** An INT32 value (as specified in [MS-DTYP] section 2.2.22) that uniquely identifies the Library name in the [**serialization stream**](#gt_serialization-stream). The value MUST be a positive integer. An implementation MAY use any algorithm to generate the unique IDs.<11>

**LibraryName (variable):** A [LengthPrefixedString](../MS-NRTP/MS-NRTP.md) value that represents the Library name. The format of the string is specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 2.2.1.3.

<a id="Section_2.6.3"></a>
### 2.6.3 MessageEnd

The MessageEnd record marks the end of the [**serialization stream**](#gt_serialization-stream).

```mermaid
packet-beta
  0-7: "RecordTypeEnum"
```

**RecordTypeEnum (1 byte):** A RecordTypeEnumeration value that identifies the record type. The value MUST be 11.

<a id="Section_2.7"></a>
## 2.7 Binary Record Grammar

This section specifies the grammar using the Augmented Backus-Naur Form (ABNF) syntax specified in [[RFC4234]](https://go.microsoft.com/fwlink/?LinkId=90462) that defines how the records can appear in the [**serialization stream**](#gt_serialization-stream).

| ABNF productions |  | Meaning |
| --- | --- | --- |
| ABNF productions remotingMessage | = | SerializationHeader *(referenceable) (methodCall/methodReturn) *(referenceable) MessageEnd |
| methodCall | = | 0*1(BinaryLibrary) BinaryMethodCall 0*1(callArray) |
| methodReturn | = | 0*1(BinaryLibrary) BinaryMethodReturn 0*1(callArray) |
| callArray | = | 0*1(BinaryLibrary) ArraySingleObject *(memberReference) |
| memberReference | = | 0*1(BinaryLibrary) (MemberPrimitiveUnTyped / MemberPrimitiveTyped / MemberReference / BinaryObjectString / nullObject /Classes) |
| nullObject | = | ObjectNull / ObjectNullMultiple / ObjectNullMultiple256 |
| referenceable | = | Classes/[**Arrays**](#gt_array)/BinaryObjectString |
| Classes | = | 0*1(BinaryLibrary) (ClassWithId / ClassWithMembers/ ClassWithMembersAndTypes / SystemClassWithMembers / SystemClassWithMembersAndTypes) *(memberReference) |
| Arrays | = | 0*1(BinaryLibrary) ((ArraySingleObject *(memberReference)) / (ArraySinglePrimitive *(MemberPrimitiveUnTyped)) / (ArraySingleString *(BinaryObjectString/MemberReference/nullObject)) / (BinaryArray*(memberReference)) ) |

<a id="Section_3"></a>
# 3 Structure Examples

This sample illustrates the message exchanged when a [**Remote Method**](#gt_remote-method) is invoked as specified in [MS-NRTP](../MS-NRTP/MS-NRTP.md) section 3.3.4.2. The data model is used to describe the information to perform the Remote Method invocation and the results of the invocation, as specified in [MS-NRTP] section 3.1.1.

The client invokes a method "SendAddress" on a remote [**Server Type**](#gt_server-type) "DOJRemotingMetadata.MyServer" and passes the following Address object (Street = "One Microsoft Way", City = "Redmond", State = "WA" and Zip = "98054") as an argument. The remote Server Type is accessible at a relative URI "MyServer.Rem" hosted on a server named "maheshdev2" and listening on port 8080. The server receives the request message, reads the argument passed in the message, and then invokes the method with the [**de-serialized**](#gt_6c5144b9-bdbd-4c6a-b544-309486392879) argument. The server then embeds the [**Return Value**](#gt_return-value) of "Address received" in the response message to the client.

The following is a sequence diagram for the preceding message exchange pattern.

![Sequence diagram of the message exchanged when a Remote Method is invoked](media/image2.png)

Figure 2: Sequence diagram of the message exchanged when a Remote Method is invoked

The MessageContent data sent on the network is as follows.

0000 00 01 00 00 00 FF FF FF FF 01 00 00 00 00 00 00 .....ÿÿÿÿ.......

0010 00 15 14 00 00 00 12 0B 53 65 6E 64 41 64 64 72 ........SendAddr

0020 65 73 73 12 6F 44 4F 4A 52 65 6D 6F 74 69 6E 67 ess.oDOJRemoting

0030 4D 65 74 61 64 61 74 61 2E 4D 79 53 65 72 76 65 Metadata.MyServe

0040 72 2C 20 44 4F 4A 52 65 6D 6F 74 69 6E 67 4D 65 r, DOJRemotingMe

0050 74 61 64 61 74 61 2C 20 56 65 72 73 69 6F 6E 3D tadata, Version=

0060 31 2E 30 2E 32 36 32 32 2E 33 31 33 32 36 2C 20 1.0.2622.31326,

0070 43 75 6C 74 75 72 65 3D 6E 65 75 74 72 61 6C 2C Culture=neutral,

0080 20 50 75 62 6C 69 63 4B 65 79 54 6F 6B 65 6E 3D PublicKeyToken=

0090 6E 75 6C 6C 10 01 00 00 00 01 00 00 00 09 02 00 null............

00A0 00 00 0C 03 00 00 00 51 44 4F 4A 52 65 6D 6F 74 .......QDOJRemot

00B0 69 6E 67 4D 65 74 61 64 61 74 61 2C 20 56 65 72 ingMetadata, Ver

00C0 73 69 6F 6E 3D 31 2E 30 2E 32 36 32 32 2E 33 31 sion=1.0.2622.31

00D0 33 32 36 2C 20 43 75 6C 74 75 72 65 3D 6E 65 75 326, Culture=neu

00E0 74 72 61 6C 2C 20 50 75 62 6C 69 63 4B 65 79 54 tral, PublicKeyT

00F0 6F 6B 65 6E 3D 6E 75 6C 6C 05 02 00 00 00 1B 44 oken=null......D

0100 4F 4A 52 65 6D 6F 74 69 6E 67 4D 65 74 61 64 61 OJRemotingMetada

0110 74 61 2E 41 64 64 72 65 73 73 04 00 00 00 06 53 ta.Address.....S

0120 74 72 65 65 74 04 43 69 74 79 05 53 74 61 74 65 treet.City.State

0130 03 5A 69 70 01 01 01 01 03 00 00 00 06 04 00 00 .Zip............

0140 00 11 4F 6E 65 20 4D 69 63 72 6F 73 6F 66 74 20 ..One Microsoft

0150 57 61 79 06 05 00 00 00 07 52 65 64 6D 6F 6E 64 Way......Redmond

0160 06 06 00 00 00 02 57 41 06 07 00 00 00[ 05 39 38 ......WA......98

0170 30 35 34 0B 054.

Referencing section [2](#Section_2) for various message structures, the bytes listed in the preceding sample can be mapped to the logical Request message structure that is used by .NET Remoting to service the request. The logical Request message for Microsoft .NET Framework 1.1 is as follows.

Binary Serialization Format

SerializationHeaderRecord:

RecordTypeEnum: SerializedStreamHeader (0x00)

TopId: 1 (0x1)

HeaderId: -1 (0xFFFFFFFF)

MajorVersion: 1 (0x1)

MinorVersion: 0 (0x0)

BinaryMethodCall:

RecordTypeEnum: BinaryMethodCall (0x15)

MessageEnum: 00000014

NoArgs: (...............................0)

ArgsInline: (..............................0.)

ArgsIsArray: (.............................1..)

ArgsInArray: (............................0...)

NoContext: (...........................1....)

ContextInline: (..........................0.....)

ContextInArray: (.........................0......)

MethodSignatureInArray: (........................0.......)

PropertyInArray: (.......................0........)

NoReturnValue: (......................0.........)

ReturnValueVoid: (.....................0..........)

ReturnValueInline: (....................0...........)

ReturnValueInArray: (...................0............)

ExceptionInArray: (..................0.............)

Reserved: (000000000000000000..............)

MethodName:

PrimitiveTypeEnum: String (0x12)

Data: SendAddress

TypeName:

PrimitiveTypeEnum: String (0x12)

Data: DOJRemotingMetadata.MyServer, DOJRemotingMetadata,

Version=1.0.2616.21414, Culture=neutral,

PublicKeyToken=null

CallArray:

ArraySingleObject:

RecordTypeEnum: ArraySingleObject (0x10)

ObjectId: 1 (0x01)

Length: 1 (0x1)

MemberReference:

RecordTypeEnum: MemberReference (0x09)

IdRef: 2 (0x02)

BinaryLibrary:

RecordTypeEnum: BinaryLibrary (0x0C)

LibraryId: 3 (0x03)

LibraryString: LibrayString:DOJRemotingMetadata,

Version=1.0.2621.26113, Culture=neutral,

PublicKeyToken=null

ClassWithMembersAndTypes:

RecordTypeEnum: ClassWithMembersAndTypes (0x05)

ObjectId: 2 (0x02)

Name: DOJRemotingMetadata.MyData

NumMembers: 4 (0x04)

MemberNames:

Data: Street

MemberNames:

Data: City

MemberNames:

Data: State

MemberNames:

Data: Zip

BinaryTypeEnumA:

String (0x01)

String (0x01)

String (0x01)

String (0x01)

LibraryId: 3 (0x03)

BinaryObjectString:

RecordTypeEnum: BinaryObjectString (0x06)

ObjectId: 04 (0x04)

Length: 17 (0x11)

Value: One Microsoft Way

BinaryObjectString:

RecordTypeEnum: BinaryObjectString (0x06)

ObjectId: 05 (0x04)

Length: 7 (0x07)

Value: Redmond

BinaryObjectString:

RecordTypeEnum: BinaryObjectString (0x06)

ObjectId: 06 (0x04)

Length: 2 (0x02)

Value: WA

BinaryObjectString:

RecordTypeEnum: BinaryObjectString (0x06)

ObjectId: 07 (0x04)

Length: 5 (0x05)

Value: 98054

MessageEnd:

RecordTypeEnum: MessageEnd (0x11)

The Server Type name, method name, and arguments are passed in a [BinaryMethodCall](#Section_2.2.3.1) structure. The MessageEnum record in BinaryMethodCall is used by the server to determine how to read the needed values. The ArgsInArray flag in this record is set to 1 because the argument passed to the method is not a [**Primitive Type**](#gt_primitive-type). Because the client is not passing any extra data in the CallContext of the request, the NoContext flag in the MessageEnum record is also set to 1. This information, coupled with the fact that the operation is of type Request, is used by the server to infer that the MethodName, Server Type, and Argument are embedded in the BinaryMethodCall record itself. Because the argument Address is passed in the callArray, CallArray contains an [ArraySingleObject](#Section_2.4.3.2) as the root element, and the first entry in the [**Array**](#gt_array) is a MemberReference to the [ClassWithMembersAndTypes](#Section_2.3.2.1) record that contains the input argument passed. The [**Library**](#gt_library), to which the ClassWithMembersAndTypes refers, appears next, and then the ClassWithMembersAndTypes record follows. All Members of Address are strings; therefore, the ClassWithMembersAndTypes record is followed by [BinaryObjectString](#Section_2.5.7) records for all of its Members.

After it invokes the method and is ready to return the result of that invocation, the server crafts a Response message and sends the Return Value ("Address received") in that message. The network capture of the response message is as follows.

0000 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 ................

0010 00 16 11 08 00 00 12 10 41 64 64 72 65 73 73 20 ........Address

0020 72 65 63 65 69 76 65 64 0B received.

Binary Serialization Format

SerializationHeaderRecord:

RecordTypeEnum: SerializedStreamHeader (0x00)

TopId: 0 (0x0)

HeaderId: 0 (0x0)

MajorVersion: 1 (0x1)

MinorVersion: 0 (0x0)

BinaryMethodReturn:

RecordTypeEnum: BinaryMethodReturn (0x16)

MessageEnum: 00000811

NoArgs: (...............................1)

ArgsInline: (..............................0.)

ArgsIsArray: (.............................0..)

ArgsInArray: (............................0...)

NoContext: (...........................1....)

ContextInline: (..........................0.....)

ContextInArray: (.........................0......)

MethodSignatureInArray: (........................0.......)

PropertyInArray: (.......................0........)

NoReturnValue: (......................0.........)

ReturnValueVoid: (.....................0..........)

ReturnValueInline: (....................1...........)

ReturnValueInArray: (...................0............)

ExceptionInArray: (..................0.............)

Reserved: (000000000000000000..............)

ReturnValue:

PrimitiveTypeEnum: String (0x12)

Data: Address received

MessageEnd:

RecordTypeEnum: MessageEnd (0x11)

Because it is a response, the server sends back a message with the operation flag set to "Response". The return argument is enclosed in a "BinaryMethodResponse" enclosure. The following flags in the MessageEnum record of **BinaryMethodResponse** field are set to 1.

NoArgs: There are no output arguments.

NoContext: Similar to the client, the server is not sending any additional data in CallContext.

ReturnValueInline: Because the Return Value is a Primitive Type, it is contained in the [BinaryMethodReturn](#Section_2.2.3.3) record.

<a id="Section_4"></a>
# 4 Security Considerations

Some of the structures contain fields that specify size information of the data in the [**serialization stream**](#gt_serialization-stream). The type of the size that specifies fields is INT32 (as specified in [MS-DTYP] section 2.2.22). The maximum value of these values can be as high as 0x7FFFFFFF. An implementation that consumes the stream either does not allocate memory based on the size information specified in the serialization stream, or ensures that the data in the serialization stream can be trusted.

The following table lists the structures with fields that specify size information.

| Bit Range | Field | Description |
| --- | --- | --- |
| Variable | LengthPrefixedString | Length Size of the string |
| Size of the [**Array**](#gt_array) | ArrayOfValueWithCode | Length |
| Variable | ClassInfo | MemberCount Number of Members |
| Variable | ArrayInfo | Length Size of the Array |
| Variable | BinaryArray | Rank Size of the Lengths and LowerBounds Arrays |
| Variable | BinaryArray | Lengths Size of each dimension that would affect the net size of the Array |
| Number of [**Null Objects**](#gt_null-object) | ObjectNullMultiple | NullCount |

De-serialization of the serialization stream results in creating instances of [**Remoting Types**](#gt_remoting-type) whose information is provided in the serialization stream. It might be unsafe to create an instance of Remoting Types. An implementation protects against attacks where the serialization stream includes the unsafe Remoting Types. Such attacks can be mitigated by allowing the higher layer to configure a list of Remoting Types in an implementation-specific way and disallow [**de-serialization**](#gt_6c5144b9-bdbd-4c6a-b544-309486392879) of any Remoting Type that is not in the list.

<a id="Section_5"></a>
# 5 Appendix A: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

This document specifies version-specific details in the Microsoft .NET Framework. For information about which versions of .NET Framework are available in each released Windows product or as supplemental software, see [MS-NETOD](../MS-NETOD/MS-NETOD.md) section 4.

The terms "earlier" and "later", when used with a product version, refer to either all preceding versions or all subsequent versions, respectively. The term "through" refers to the inclusive range of versions. Applicable Microsoft products are listed chronologically in this section.

- Microsoft .NET Framework 1.0
- Microsoft .NET Framework 2.0
- Microsoft .NET Framework 3.0
- Microsoft .NET Framework 3.5
- Microsoft .NET Framework 4.0
- Microsoft .NET Framework 4.5
- Microsoft .NET Framework 4.6
- Microsoft .NET Framework 4.7
- Microsoft .NET Framework 4.8
Exceptions, if any, are noted in this section. If an update version, service pack or Knowledge Base (KB) number appears with a product name, the behavior changed in that update. The new behavior also applies to subsequent updates unless otherwise specified. If a product edition appears with the product version, behavior is different in that product edition.

Unless otherwise specified, any statement of optional behavior in this specification that is prescribed using the terms "SHOULD" or "SHOULD NOT" implies product behavior in accordance with the SHOULD or SHOULD NOT prescription. Unless otherwise specified, the term "MAY" implies that the product does not follow the prescription.

<1> Section 2.1.1.5: In .NET Framework 1.0 and .NET Framework 1.1, the value of **Kind** is always set to 0 when writing. On reading, the value is ignored and assumed to be 0.

<2> Section 2.2.1.1: The bit value GenericMethod is valid only with .NET Framework 2.0 and later versions.

<3> Section 2.2.3.2: This is present only in .NET Framework 2.0 and later versions.

<4> Section 2.3.1.1: Windows uses a single counter that counts from 1 to generate the [ObjectId](#Section_0a192be058a141d08a549c91db0ab7bf) in the ClassInfo, [ArrayInfo](#Section_2.4.2.1), [BinaryObjectString](#Section_2.5.7), and [BinaryArray](#Section_2.4.3.1) records, and the [LibraryId](#Section_7fcf30e14ad444108f1a901a4a1ea832) in the BinaryLibrary record. The maximum value is 2,147,483,647. If the object is of a [**Remoting Type**](#gt_remoting-type) that cannot be referenced in Windows, the negative of the counter value is used.

<5> Section 2.3.1.1: In Windows, the order of the Members can vary for each occurrence of the record for a given class.

<6> Section 2.4: Windows uses [ObjectNullMultiple256](#Section_2.5.6) if the number of sequential [**Null Objects**](#gt_null-object) is 255 or fewer. Windows uses [ObjectNullMultiple](#Section_2.5.5) if the number of sequential Null Objects is greater than 255.

<7> Section 2.4.2.1: Windows uses a single counter that counts from 1 to generate the ObjectId in the ClassInfo, ArrayInfo, BinaryObjectString, and BinaryArray records, and the LibraryId in the BinaryLibrary record. The maximum value is 2,147,483,647.

<8> Section 2.4.3.1: Windows uses a single counter that counts from 1 to generate the ObjectId in the ClassInfo, ArrayInfo, BinaryObjectString, and BinaryArray records, and the LibraryId in the BinaryLibrary record. The maximum value is 2,147,483,647.

<9> Section 2.5.3: Windows places the record that defines the ID before or after the referencing record.

<10> Section 2.5.7: Windows uses a single counter that counts from 1 to generate the ObjectId in the ClassInfo, ArrayInfo, BinaryObjectString, and BinaryArray records, and the LibraryId in the BinaryLibrary record. The maximum value is 2,147,483,647.

<11> Section 2.6.2: Windows uses a single counter that counts from 1 to generate the ObjectId in the ClassInfo, ArrayInfo, BinaryObjectString, and BinaryArray records, and the LibraryId in the BinaryLibrary record. The maximum value is 2,147,483,647.

<a id="Section_6"></a>
# 6 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [3](#Section_3) Structure Examples | 10079 : Changed 'RecordTypeEnum: BinaryMethodCall (0x21)' to 'RecordTypeEnum: BinaryMethodCall (0x15)' in the logical Request message for dotNET_Framework 1.1. | Major |

