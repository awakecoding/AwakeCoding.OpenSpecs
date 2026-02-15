# [MS-AZMP]: Authorization Manager (AzMan) Policy File Format

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 Glossary](#Section_1.1)
  - [1.2 References](#Section_1.2)
    - [1.2.1 Normative References](#Section_1.2.1)
    - [1.2.2 Informative References](#Section_1.2.2)
  - [1.3 Structure Overview (Synopsis)](#Section_1.3)
  - [1.4 Relationship to Protocols and Other Structures](#Section_1.4)
  - [1.5 Applicability Statement](#Section_1.5)
  - [1.6 Versioning and Localization](#Section_1.6)
  - [1.7 Vendor-Extensible Fields](#Section_1.7)
</details>

<details>
<summary>2 Structures</summary>

- [2 Structures](#Section_2)
  - [2.1 AzAdminManager](#Section_2.1)
  - [2.2 AzApplicationGroup](#Section_2.2)
  - [2.3 AzRole](#Section_2.3)
  - [2.4 AzTask](#Section_2.4)
</details>

<details>
<summary>3 Structure Examples</summary>

- [3 Structure Examples](#Section_3)
</details>

<details>
<summary>4 Security Considerations</summary>

- [4 Security Considerations](#Section_4)
  - [4.1 Security Considerations for Implementers](#Section_4.1)
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

This document describes the structure of the XML file format used to preserve policy settings for Microsoft Authorization Manager (AzMan). Other formats are possible, but are not addressed in this document. This structure is currently used by all Windows AzMan implementations.

The AzMan XML policy format is used in order to enable interoperability by implementers. By using the specifications in this document, an implementer can:

- Create a AzMan XML policy file readable by the Microsoft Management Console (MMC) Authorization Manager snap-in, and by the authorization manager runtime used by applications to make authorization decisions.
- Read an AzMan XML policy file that was created using the MMC Authorization Manager snap-in.
Sections 1.7 and 2 of this specification are normative. All other sections and examples in this specification are informative.

<a id="Section_1.1"></a>
## 1.1 Glossary

This document uses the following terms:

<a id="gt_globally-unique-identifier-guid"></a>
**globally unique identifier (GUID)**: A term used interchangeably with universally unique identifier (UUID) in Microsoft protocol technical documents (TDs). Interchanging the usage of these terms does not imply or require a specific algorithm or mechanism to generate the value. Specifically, the use of this term does not imply or require that the algorithms described in [[RFC4122]](https://go.microsoft.com/fwlink/?LinkId=90460) or [[C706]](https://go.microsoft.com/fwlink/?LinkId=89824) must be used for generating the [**GUID**](#gt_globally-unique-identifier-guid). See also universally unique identifier (UUID).

<a id="gt_security-identifier-sid"></a>
**security identifier (SID)**: An identifier for security principals that is used to identify an account or a group. Conceptually, the [**SID**](#gt_security-identifier-sid) is composed of an account authority portion (typically a domain) and a smaller integer representing an identity relative to the account authority, termed the relative identifier (RID). The [**SID**](#gt_security-identifier-sid) format is specified in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2; a string representation of [**SIDs**](#gt_security-identifier-sid) is specified in [MS-DTYP] section 2.4.2 and [MS-AZOD](../MS-AZOD/MS-AZOD.md) section 1.1.1.2.

**MAY, SHOULD, MUST, SHOULD NOT, MUST NOT:** These terms (in all caps) are used as defined in [[RFC2119]](https://go.microsoft.com/fwlink/?LinkId=90317). All statements of optional behavior use either MAY, SHOULD, or SHOULD NOT.

<a id="Section_1.2"></a>
## 1.2 References

Links to a document in the Microsoft Open Specifications library point to the correct section in the most recently published version of the referenced document. However, because individual documents in the library are not updated at the same time, the section numbers in the documents may not match. You can confirm the correct section numbering by checking the [Errata](https://go.microsoft.com/fwlink/?linkid=850906).

<a id="Section_1.2.1"></a>
### 1.2.1 Normative References

We conduct frequent surveys of the normative references to assure their continued availability. If you have any issue with finding a normative reference, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com). We will assist you in finding the relevant information.

[RFC2119] Bradner, S., "Key words for use in RFCs to Indicate Requirement Levels", BCP 14, RFC 2119, March 1997, [https://www.rfc-editor.org/info/rfc2119](https://go.microsoft.com/fwlink/?LinkId=90317)

[RFC2251] Wahl, M., Howes, T., and Kille, S., "Lightweight Directory Access Protocol (v3)", RFC 2251, December 1997, [https://www.rfc-editor.org/info/rfc2251](https://go.microsoft.com/fwlink/?LinkId=90325)

[XMLSCHEMA1/2] Thompson, H., Beech, D., Maloney, M., and Mendelsohn, N., Eds., "XML Schema Part 1: Structures Second Edition", W3C Recommendation, October 2004, [https://www.w3.org/TR/2004/REC-xmlschema-1-20041028/](https://go.microsoft.com/fwlink/?LinkId=90607)

[XMLSCHEMA2/2] Biron, P., and Malhotra, A., Eds., "XML Schema Part 2: Datatypes Second Edition", W3C Recommendation, October 2004, [https://www.w3.org/TR/2004/REC-xmlschema-2-20041028/](https://go.microsoft.com/fwlink/?LinkId=90609)

<a id="Section_1.2.2"></a>
### 1.2.2 Informative References

[MSDN-JScript] Microsoft Corporation, "JScript Language Reference (Windows Scripting - JScript)", [http://msdn.microsoft.com/en-us/library/yek4tbz0(v=VS.85).aspx](https://go.microsoft.com/fwlink/?LinkId=219940)

[MSDN-VBScript] Microsoft Corporation, "VBScript Language Reference", [http://msdn.microsoft.com/en-us/library/d1wf56tt(v=VS.85).aspx](https://go.microsoft.com/fwlink/?LinkId=219941)

<a id="Section_1.3"></a>
## 1.3 Structure Overview (Synopsis)

The XML structure (as described in [[XMLSCHEMA1/2]](https://go.microsoft.com/fwlink/?LinkId=90607) and [[XMLSCHEMA2/2]](https://go.microsoft.com/fwlink/?LinkId=90609)) defined in this document describes the Microsoft Authorization Manager (AzMan) policy. AzMan policy files are typically used in two ways:

- Loaded by the Microsoft Management Console (MMC) Authorization Manager (AzMan) snap-in which allows the administrator to create and modify the authorization manager policy.
- Loaded by the authorization manager runtime to allow applications to make authorization decisions.
<a id="Section_1.4"></a>
## 1.4 Relationship to Protocols and Other Structures

The authorization manager policy file is used only by the authorization manager runtime and the Authorization Manager Microsoft Management Console snap-in. Otherwise, the structure is independent of any other structures or protocols except those referenced in this document.

<a id="Section_1.5"></a>
## 1.5 Applicability Statement

The Microsoft Authorization Manager Policy XML policy file can be used in any environment where AzMan is supported. See Appendix C for a list of supported Operating System versions. It can be used in Active Directory domain-based environments or on stand-alone servers.

<a id="Section_1.6"></a>
## 1.6 Versioning and Localization

Microsoft Authorization Manager policy files can be either version 1.0 or 2.0<1>. The differences between version 1.0 and version 2.0 are minor and are pointed out in section [2](#Section_2).

<a id="Section_1.7"></a>
## 1.7 Vendor-Extensible Fields

None.

<a id="Section_2"></a>
# 2 Structures

<a id="Section_2.1"></a>
## 2.1 AzAdminManager

The **AzAdminManager** complex type defines an instance of an authorization manager policy*.*

The following is the XSD definition for the **AzAdminManager** complex type.

<xs:element name="AzAdminManager">

<xs:complexType>

<xs:sequence>

<xs:element name="AzApplication" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzTask" minOccurs="0" maxOccurs="unbounded" />

<xs:element name="AzOperation" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element name="OperationID" type="xs:string" minOccurs="0"/>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element ref="AzRole" minOccurs="0" maxOccurs="unbounded" />

<xs:element name="AzScope" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzTask" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzRole" minOccurs="0" maxOccurs="unbounded" />

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="ApplicationVersion" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

</xs:sequence>

<xs:attribute name="MajorVersion" type="xs:string" />

<xs:attribute name="MinorVersion" type="xs:string" />

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

**AzApplication:** Defines an instance of an authorization manager application.

**AzApplication.AzApplicationGroup:** This element defines an **AzApplicationGroup** contained within the scope of an **AzApplication**. See section [2.2](#Section_2.2) for more details.

**AzApplication.AzTask:** This element defines an **AzTask** contained within the scope of an **AzApplication**. See section [2.4](#Section_2.4) for more details.

**AzApplication.AzOperation:** The AzOperation complex type defines each authorization manager operation in the policy.

**AzApplication.AzOperation.OperationID:** An integer value represented as a string which is the operation identifier for the **AzOperation**.

**AzApplication.AzOperation.Guid:** The unique identifier for the **AzOperation**.

**AzApplication.AzOperation.Name:** The name of the **AzOperation.**

**AzApplication.AzOperation.Description:** The description for the **AzOperation.**

**AzApplication.AzRole:** This element defines an **AzRole** contained within the scope of an **AzApplication**. See section [2.3](#Section_2.3) for more details.

**AzApplication.AzScope**: This element defines an **AzScope** contained within the scope of an **AzApplication**. A scope is a logical resource for which a specific authorization policy is defined.

**AzApplication.AzScope.AzApplicationGroup:** This element defines an **AzApplicationGroup** contained within this AzScope. See section 2.2 for more details.

**AzApplication.AzScope.AzTask:** This element defines an **AzTask** contained within this AzScope. See section 2.4 for more details.

**AzApplication.AzScope.AzRole:** This element defines an **AzRole** contained within this AzScope. See section 2.3 for more details.

**AzApplication.AzScope.Guid:** A [**GUID**](#gt_globally-unique-identifier-guid) in string format which is the unique identifier for the **AzScope**.

**AzApplication.AzScope.Name:** The name of the **AzScope.**

**AzApplication.AzScope.Description:** The description for the **AzScope.**

**AzApplication.Guid:** The unique identifier for the **AzApplication**.

**AzApplication.Name:** The name of the **AzApplication.**

**AzApplication.Description:** The description for the **AzApplication.**

**AzApplication.ApplicationVersion:** An optional version of the **AzApplication** policy element.

**AzApplicationGroup:** This element defines an **AzApplicationGroup** that is global for every **AzApplication** instance, which differs from the **AzApplication.AzApplicationGroup** element. See section 2.2 for more details.

**MajorVersion:** The major version of the **AzAdminManager** policy. This MUST be set to either 1 or 2.

**MinorVersion:** The major version of the **AzAdminManager** policy. This MUST be set to 0.

**Guid:** The unique identifier for the **AzAdminManager** policy.

**Description:** The description for the **AzAdminManager** policy.

<a id="Section_2.2"></a>
## 2.2 AzApplicationGroup

This element defines an authorization manager group. **AzApplicationGroup** can be used to define a global group that is used by all applications (every instance of **AzApplication**) in the policy or to define a local group that is specific to one specific application in the policy store. When the **AzApplicationGroup** element appears in the XML policy file at the highest level (child of **AzAdminManager**) the **AzApplicationGroup** is global. When the **AzApplicationGroup** element appears as a child of **AzApplication**, it defines a group local to the **AzApplication**.

The following is the XSD definition for the **AzApplicationGroup** complex type.

<xs:element name="AzApplicationGroup">

<xs:complexType>

<xs:sequence>

<xs:element name="BizRuleLanguage" type="xs:string" minOccurs="0" />

<xs:element name="LdapQuery" type="xs:string" minOccurs="0" />

<xs:element name="BizRule" type="xs:string" minOccurs="0" />

<xs:element name="BizRuleImportedPath" type="xs:string" minOccurs="0" />

<xs:element name="AppMemberLink" type="xs:string" minOccurs="0" />

<xs:element name="Member" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent>

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

<xs:element name="NonMember" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent>

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="GroupType" type="xs:string" />

</xs:complexType>

</xs:element>

**BizRuleLanguage:** The language used to express a business rule in an **AzApplicationGroup** when **GroupType** equals "Bizrule". The possible values are "VBScript" (for more information, see [[MSDN-VBScript]](https://go.microsoft.com/fwlink/?LinkId=219941)) or "JScript" (for more information, see [[MSDN-JScript]](https://go.microsoft.com/fwlink/?LinkId=219940)). The **BizRuleLanguage** element is required for all **AzApplicationGroup** elements if **GroupType** equals "Bizrule". Otherwise, it is optional.

**LdapQuery:** When **GroupType** equals "LdapQuery", this element contains an LDAP query as described in [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325). If **GroupType** does not equal "LdapQuery", this element MUST NOT be present. In version 1.0 schema policy files, only queries against "user" (meaning where objectcategory=user) objects are supported. In version 2.0 schema policy files, any object type can be queried.

**BizRule:** When **GroupType** equals "Bizrule", this element contains a business rule in the form of script text (HTML-encoded) in the language specified by **BizRuleLanguage**. If **GroupType** does not equal "Bizrule", this element MUST NOT be present.

**BizRuleImportedPath:** When **GroupType** equals "Bizrule", this element contains a fully qualified file system path to a file that contains the business rule as defined in **BizRule**. If **GroupType** does not equal "Bizrule", this element MUST NOT be present.

**AppMemberLink:** Optional element that specifies the GUID of an **AzApplicationGroup** which is a member of the **AzApplicationGroup** defined by this section.

**Member:** Optional element that describes an explicit member of the **AzApplicationGroup**.

**NonMember:** Optional element that describes an explicit nonmember of the **AzApplicationGroup.**

**Guid:** The Globally Unique Identifier (GUID) of the **AzApplicationGroup.**

**Name:** The name of the **AzApplicationGroup**.

**Description:** The description for the **AzApplicationGroup**.

**GroupType:** This element defines the type of the **AzApplicationGroup**. The value MUST be one of the following strings:

- "Basic"
- "Bizrule"
- "LdapQuery"
**Note** The "Bizrule" **GroupType** is supported only in version 2.0 AzMan policies.

<a id="Section_2.3"></a>
## 2.3 AzRole

The **AzRole** complex type defines each authorization manager role assignment in the policy.

The following is the XSD definition for the **AzRole** complex type.

<xs:element name="AzRole">

<xs:complexType>

<xs:sequence>

<xs:element name="TaskLink" type="xs:string" minOccurs="0" />

<xs:element name="Member" type="xs:string" minOccurs="0" />

<xs:element name="AppMemberLink" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent >

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

**AzRole.TaskLink:** An optional GUID(s) of one or more **AzTask** elements which is a subordinate task for this **AzTask** element. It MUST be a valid **AzTask** element in the **AzApplication** scope.

**AzRole.Member:** An optional element that describes a member of the **AzRole**. If present, the element MUST specify a [**SID**](#gt_security-identifier-sid) for an Active Directory object, local computer user, or group object.

**AzRole.AppMemberLink:** An optional element that specifies the GUID of an **AzApplicationGroup** which defines the **AzRole**.

**AzRole.Guid:** The unique identifier for the **AzRole**.

**AzRole.Name:** The name of the **AzRole.**

**AzRole.Description:** The description for the **AzRole.**

<a id="Section_2.4"></a>
## 2.4 AzTask

The **AzTask** complex type defines each authorization manager task and authorization manager role definition in the policy.

<xs:element name="AzTask">

<xs:complexType>

<xs:sequence>

<xs:element name="TaskLink" type="xs:string" minOccurs="0" />

<xs:element name="OperationLink" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent msdata:ColumnName="OperationLink_Text">

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="BizRuleImportedPath" type="xs:string" />

<xs:attribute name="RoleDefinition" type="xs:string" />

</xs:complexType>

</xs:element>

**AzTask.TaskLink**: An optional unique identifier of one or more **AzTask** elements which is a subordinate task for this **AzTask** element. It MUST be a valid **AzTask** element in the **AzApplication** scope.

**AzTask.OperationLink:** An optional unique identifier of one or more **AzOperation** elements which is a subordinate operation for this **AzTask** element. It MUST be a valid **AzOperation** element in the **AzApplication** scope.

**AzTask.Guid:** The unique identifier for the **AzTask.**

**AzTask.Name:** The name of the **AzTask.**

**AzTask.Description:** The description for the **AzTask.**

**AzTask.BizRuleImportedPath:** When **AzTask.RoleDefinition** is set to "true", this optional element specifies a fully qualified path to a script which defines an authorization rule for the role definition.

**AzTask.RoleDefinition**: When set to "true", this **AzTask** element defines an authorization manager role definition. When False, it defines an authorization manager task. No other value is permitted.

<a id="Section_3"></a>
# 3 Structure Examples

The following is an example of an AzMan XML policy file:

<?xml version="1.0" encoding="utf-8"?>

<AzAdminManager MajorVersion="2" MinorVersion="0" Guid="c5217693-1a84-48ee-a9ae-65f0e10bd314" Description="This is the description">

<AzApplication Guid="f6ae8a28-57c3-4db8-9b7f-848aec862518" Name="Application#1" Description="Application#1-Desc" ApplicationVersion="Application#1-Version">

<AzApplicationGroup Guid="3736a1f3-3f3d-44f7-9fa4-eb6f9032e962" Name="App Group #1 - Basic" Description="App Group #1 Description - Basic " GroupType="Basic">

<BizRuleLanguage></BizRuleLanguage>

<Member>S-1-5-21-3104031619-1062013444-2593988815-1115</Member>

<Member>S-1-5-21-3104031619-1062013444-2593988815-1118</Member>

<NonMember>S-1-5-21-3104031619-1062013444-2593988815-1116</NonMember>

<NonMember>S-1-5-21-3104031619-1062013444-2593988815-1119</NonMember>

<AppMemberLink>2db22bd5-4395-4645-9950-5509eb9d83b1</AppMemberLink>

</AzApplicationGroup>

<AzApplicationGroup Guid="f5fd6ac2-d435-4c51-8a9b-646d627ae448" Name="App Group #3 - Biz Rule" Description="App Group #3 Desc - Biz Rule" GroupType="Bizrule">

<BizRuleLanguage>JScript</BizRuleLanguage>

<BizRule>

AzBizRuleContext.BusinessRuleResult = false;

dt = new Date();

hour = dt.getHours();

if (hour > 9 && hour < 17)

{

AzBizRuleContext.BusinessRuleResult = true;

}

</BizRule>

<BizRuleImportedPath>C:\Users\Administrator\Desktop\bizrule1.js</BizRuleImportedPath>

</AzApplicationGroup>

<AzTask Guid="82a494ed-dec3-4ae9-92a1-1d9e5fe436b1" Name="Role Definition #1" Description="Desc - Role Definition #1" BizRuleImportedPath="" RoleDefinition="True">

<TaskLink>26834981-a122-4fd1-9f00-8ff2b63f7f49</TaskLink>

</AzTask>

<AzOperation Guid="8f274e4c-3f73-4b56-85ee-df83df9d313a" Name="Operation #1" Description="Desc - Operation #1">

<OperationID>1</OperationID>

</AzOperation>

<AzOperation Guid="943864c8-869f-4ef4-9c84-e51fc380bb99" Name="Operation #2" Description="Desc - Operation #2">

<OperationID>2</OperationID>

</AzOperation>

<AzTask Guid="26834981-a122-4fd1-9f00-8ff2b63f7f49" Name="Task #1" Description="Desc - Task #1" BizRuleImportedPath="">

<OperationLink>8f274e4c-3f73-4b56-85ee-df83df9d313a</OperationLink>

<OperationLink>943864c8-869f-4ef4-9c84-e51fc380bb99</OperationLink>

</AzTask>

<AzRole Guid="831d638d-9f9e-4883-a024-360f82afc705" Name="Role Assignment #1" Description="Role Assignment #1">

<TaskLink>82a494ed-dec3-4ae9-92a1-1d9e5fe436b1</TaskLink>

<Member>S-1-5-21-1022818538-2633080746-2542160322-501</Member>

<AppMemberLink>3736a1f3-3f3d-44f7-9fa4-eb6f9032e962</AppMemberLink>

<AppMemberLink>99f5aabc-3c3a-47a8-8b0a-d5aa373c33e4</AppMemberLink>

</AzRole>

<AzApplicationGroup Guid="2ebce7bb-d172-46a8-8844-c1d7638103dd" Name="App Group #2 - Ldap Query Group" Description="App Group #2 - Ldap Query Group" GroupType="LdapQuery">

<BizRuleLanguage></BizRuleLanguage>

<LdapQuery>(&(objectCategory=person)(objectClass=user)(cn=david mowers))</LdapQuery>

</AzApplicationGroup>

<AzApplicationGroup Guid="ab24f52f-ab12-43ff-818d-e6de1492acbf" Name="App Group #4 - Biz Rule VBS" Description="App Group #4 - Biz Rule VBS" GroupType="Bizrule">

<BizRuleLanguage>VBScript</BizRuleLanguage>

<BizRule>

AzBizRuleContext.BusinessRuleResult = FALSE

Dim Amount

Amount = AzBizRuleContext.GetParameter("Age")

if Amount > 25 then AzBizRuleContext.BusinessRuleResult = TRUE

</BizRule>

<BizRuleImportedPath>C:\Users\Administrator\Desktop\bizrule2.vbs</BizRuleImportedPath>

</AzApplicationGroup>

</AzApplication>

<AzApplicationGroup Guid="99f5aabc-3c3a-47a8-8b0a-d5aa373c33e4" Name="AzMan Global Group#1 Basic Application Group" Description="AzMan Global Group#1-Desc" GroupType="Basic">

<BizRuleLanguage></BizRuleLanguage>

</AzApplicationGroup>

<AzApplicationGroup Guid="2db22bd5-4395-4645-9950-5509eb9d83b1" Name="AzMan Global Group#2 LDAP Query Application Group" Description="AzMan Global Group#2-Desc" GroupType="LdapQuery">

<BizRuleLanguage></BizRuleLanguage>

<LdapQuery>This is the query</LdapQuery>

</AzApplicationGroup>

<AzApplicationGroup Guid="f2f3e0f1-4334-4736-b27d-b996240714ae" Name="AzMan Global Group#3 Business Rule Application Group" Description="AzMan Global Group#3-Desc" GroupType="Bizrule">

<BizRuleLanguage>VBScript</BizRuleLanguage>

</AzApplicationGroup>

</AzAdminManager>

<a id="Section_4"></a>
# 4 Security Considerations

<a id="Section_4.1"></a>
## 4.1 Security Considerations for Implementers

None.

<a id="Section_5"></a>
# 5 Appendix A: Full XML Schema

For ease of implementation, the following is the full XML schema for this protocol.

<?xml version="1.0" encoding="utf-8"?>

<xs:schema id="NewDataSet" xmlns="" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:msdata="urn:schemas-microsoft-com:xml-msdata">

<xs:element name="AzApplicationGroup">

<xs:complexType>

<xs:sequence>

<xs:element name="BizRuleLanguage" type="xs:string" minOccurs="0" />

<xs:element name="LdapQuery" type="xs:string" minOccurs="0" />

<xs:element name="BizRule" type="xs:string" minOccurs="0" />

<xs:element name="BizRuleImportedPath" type="xs:string" minOccurs="0" />

<xs:element name="AppMemberLink" type="xs:string" minOccurs="0" />

<xs:element name="Member" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent >

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

<xs:element name="NonMember" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent >

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="GroupType" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element name="AzTask">

<xs:complexType>

<xs:sequence>

<xs:element name="TaskLink" type="xs:string" minOccurs="0" />

<xs:element name="OperationLink" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent >

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="BizRuleImportedPath" type="xs:string" />

<xs:attribute name="RoleDefinition" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element name="AzRole">

<xs:complexType>

<xs:sequence>

<xs:element name="TaskLink" type="xs:string" minOccurs="0" />

<xs:element name="Member" type="xs:string" minOccurs="0" />

<xs:element name="AppMemberLink" nillable="true" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:simpleContent >

<xs:extension base="xs:string">

</xs:extension>

</xs:simpleContent>

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element name="AzAdminManager">

<xs:complexType>

<xs:sequence>

<xs:element name="AzApplication" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzTask" minOccurs="0" maxOccurs="unbounded" />

<xs:element name="AzOperation" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element name="OperationID" type="xs:string" minOccurs="0" />

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element ref="AzRole" minOccurs="0" maxOccurs="unbounded" />

<xs:element name="AzScope" minOccurs="0" maxOccurs="unbounded">

<xs:complexType>

<xs:sequence>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzTask" minOccurs="0" maxOccurs="unbounded" />

<xs:element ref="AzRole" minOccurs="0" maxOccurs="unbounded" />

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

</xs:sequence>

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Name" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

<xs:attribute name="ApplicationVersion" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element ref="AzApplicationGroup" minOccurs="0" maxOccurs="unbounded" />

</xs:sequence>

<xs:attribute name="MajorVersion" type="xs:string" />

<xs:attribute name="MinorVersion" type="xs:string" />

<xs:attribute name="Guid" type="xs:string" />

<xs:attribute name="Description" type="xs:string" />

</xs:complexType>

</xs:element>

<xs:element name="NewDataSet" >

<xs:complexType>

<xs:choice minOccurs="0" maxOccurs="unbounded">

<xs:element ref="AzApplicationGroup" />

<xs:element ref="AzTask" />

<xs:element ref="AzRole" />

<xs:element ref="AzAdminManager" />

</xs:choice>

</xs:complexType>

</xs:element>

</xs:schema>

<a id="Section_6"></a>
# 6 Appendix B: Product Behavior

The information in this specification is applicable to the following Microsoft products or supplemental software. References to product versions include updates to those products.

- Windows XP operating system
- Windows Server 2003 operating system
- Windows Server 2003 R2 operating system
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

<1> Section 1.6: Windows XP, Windows Server 2003, Windows Server 2003 R2, and Windows Vista do not support the version 2.0 schema.

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

