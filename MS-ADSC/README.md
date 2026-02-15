# [MS-ADSC]: Active Directory Schema Classes

Last updated: 4/23/2024

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 References](#Section_1.1)
</details>

<details>
<summary>2 Classes</summary>

- [2 Classes](#Section_2)
  - [2.1 Class account](#Section_2.1)
  - [2.2 Class aCSPolicy](#Section_2.2)
  - [2.3 Class aCSResourceLimits](#Section_2.3)
  - [2.4 Class aCSSubnet](#Section_2.4)
  - [2.5 Class addressBookContainer](#Section_2.5)
  - [2.6 Class addressTemplate](#Section_2.6)
  - [2.7 Class applicationEntity](#Section_2.7)
  - [2.8 Class applicationProcess](#Section_2.8)
  - [2.9 Class applicationSettings](#Section_2.9)
  - [2.10 Class applicationSiteSettings](#Section_2.10)
  - [2.11 Class applicationVersion](#Section_2.11)
  - [2.12 Class attributeSchema](#Section_2.12)
  - [2.13 Class bootableDevice](#Section_2.13)
  - [2.14 Class builtinDomain](#Section_2.14)
  - [2.15 Class categoryRegistration](#Section_2.15)
  - [2.16 Class certificationAuthority](#Section_2.16)
  - [2.17 Class classRegistration](#Section_2.17)
  - [2.18 Class classSchema](#Section_2.18)
  - [2.19 Class classStore](#Section_2.19)
  - [2.20 Class comConnectionPoint](#Section_2.20)
  - [2.21 Class computer](#Section_2.21)
  - [2.22 Class configuration](#Section_2.22)
  - [2.23 Class connectionPoint](#Section_2.23)
  - [2.24 Class contact](#Section_2.24)
  - [2.25 Class container](#Section_2.25)
  - [2.26 Class controlAccessRight](#Section_2.26)
  - [2.27 Class country](#Section_2.27)
  - [2.28 Class cRLDistributionPoint](#Section_2.28)
  - [2.29 Class crossRef](#Section_2.29)
  - [2.30 Class crossRefContainer](#Section_2.30)
  - [2.31 Class device](#Section_2.31)
  - [2.32 Class dfsConfiguration](#Section_2.32)
  - [2.33 Class dHCPClass](#Section_2.33)
  - [2.34 Class displaySpecifier](#Section_2.34)
  - [2.35 Class displayTemplate](#Section_2.35)
  - [2.36 Class dMD](#Section_2.36)
  - [2.37 Class dnsNode](#Section_2.37)
  - [2.38 Class dnsZone](#Section_2.38)
  - [2.39 Class dnsZoneScope](#Section_2.39)
  - [2.40 Class dnsZoneScopeContainer](#Section_2.40)
  - [2.41 Class document](#Section_2.41)
  - [2.42 Class documentSeries](#Section_2.42)
  - [2.43 Class domain](#Section_2.43)
  - [2.44 Class domainDNS](#Section_2.44)
  - [2.45 Class domainPolicy](#Section_2.45)
  - [2.46 Class domainRelatedObject](#Section_2.46)
  - [2.47 Class dSA](#Section_2.47)
  - [2.48 Class dSUISettings](#Section_2.48)
  - [2.49 Class dynamicObject](#Section_2.49)
  - [2.50 Class fileLinkTracking](#Section_2.50)
  - [2.51 Class fileLinkTrackingEntry](#Section_2.51)
  - [2.52 Class foreignSecurityPrincipal](#Section_2.52)
  - [2.53 Class friendlyCountry](#Section_2.53)
  - [2.54 Class fTDfs](#Section_2.54)
  - [2.55 Class group](#Section_2.55)
  - [2.56 Class groupOfNames](#Section_2.56)
  - [2.57 Class groupOfUniqueNames](#Section_2.57)
  - [2.58 Class groupPolicyContainer](#Section_2.58)
  - [2.59 Class ieee802Device](#Section_2.59)
  - [2.60 Class indexServerCatalog](#Section_2.60)
  - [2.61 Class inetOrgPerson](#Section_2.61)
  - [2.62 Class infrastructureUpdate](#Section_2.62)
  - [2.63 Class intellimirrorGroup](#Section_2.63)
  - [2.64 Class intellimirrorSCP](#Section_2.64)
  - [2.65 Class interSiteTransport](#Section_2.65)
  - [2.66 Class interSiteTransportContainer](#Section_2.66)
  - [2.67 Class ipHost](#Section_2.67)
  - [2.68 Class ipNetwork](#Section_2.68)
  - [2.69 Class ipProtocol](#Section_2.69)
  - [2.70 Class ipsecBase](#Section_2.70)
  - [2.71 Class ipsecFilter](#Section_2.71)
  - [2.72 Class ipsecISAKMPPolicy](#Section_2.72)
  - [2.73 Class ipsecNegotiationPolicy](#Section_2.73)
  - [2.74 Class ipsecNFA](#Section_2.74)
  - [2.75 Class ipsecPolicy](#Section_2.75)
  - [2.76 Class ipService](#Section_2.76)
  - [2.77 Class leaf](#Section_2.77)
  - [2.78 Class licensingSiteSettings](#Section_2.78)
  - [2.79 Class linkTrackObjectMoveTable](#Section_2.79)
  - [2.80 Class linkTrackOMTEntry](#Section_2.80)
  - [2.81 Class linkTrackVolEntry](#Section_2.81)
  - [2.82 Class linkTrackVolumeTable](#Section_2.82)
  - [2.83 Class locality](#Section_2.83)
  - [2.84 Class lostAndFound](#Section_2.84)
  - [2.85 Class mailRecipient](#Section_2.85)
  - [2.86 Class meeting](#Section_2.86)
  - [2.87 Class ms-net-ieee-80211-GroupPolicy](#Section_2.87)
  - [2.88 Class ms-net-ieee-8023-GroupPolicy](#Section_2.88)
  - [2.89 Class mS-SQL-OLAPCube](#Section_2.89)
  - [2.90 Class mS-SQL-OLAPDatabase](#Section_2.90)
  - [2.91 Class mS-SQL-OLAPServer](#Section_2.91)
  - [2.92 Class mS-SQL-SQLDatabase](#Section_2.92)
  - [2.93 Class mS-SQL-SQLPublication](#Section_2.93)
  - [2.94 Class mS-SQL-SQLRepository](#Section_2.94)
  - [2.95 Class mS-SQL-SQLServer](#Section_2.95)
  - [2.96 Class msAuthz-CentralAccessPolicies](#Section_2.96)
  - [2.97 Class msAuthz-CentralAccessPolicy](#Section_2.97)
  - [2.98 Class msAuthz-CentralAccessRule](#Section_2.98)
  - [2.99 Class msAuthz-CentralAccessRules](#Section_2.99)
  - [2.100 Class msCOM-Partition](#Section_2.100)
  - [2.101 Class msCOM-PartitionSet](#Section_2.101)
  - [2.102 Class msDFS-DeletedLinkv2](#Section_2.102)
  - [2.103 Class msDFS-Linkv2](#Section_2.103)
  - [2.104 Class msDFS-NamespaceAnchor](#Section_2.104)
  - [2.105 Class msDFS-Namespacev2](#Section_2.105)
  - [2.106 Class msDFSR-Connection](#Section_2.106)
  - [2.107 Class msDFSR-Content](#Section_2.107)
  - [2.108 Class msDFSR-ContentSet](#Section_2.108)
  - [2.109 Class msDFSR-GlobalSettings](#Section_2.109)
  - [2.110 Class msDFSR-LocalSettings](#Section_2.110)
  - [2.111 Class msDFSR-Member](#Section_2.111)
  - [2.112 Class msDFSR-ReplicationGroup](#Section_2.112)
  - [2.113 Class msDFSR-Subscriber](#Section_2.113)
  - [2.114 Class msDFSR-Subscription](#Section_2.114)
  - [2.115 Class msDFSR-Topology](#Section_2.115)
  - [2.116 Class msDNS-ServerSettings](#Section_2.116)
  - [2.117 Class msDS-App-Configuration](#Section_2.117)
  - [2.118 Class msDS-AppData](#Section_2.118)
  - [2.119 Class msDS-AuthNPolicies](#Section_2.119)
  - [2.120 Class msDS-AuthNPolicy](#Section_2.120)
  - [2.121 Class msDS-AuthNPolicySilo](#Section_2.121)
  - [2.122 Class msDS-AuthNPolicySilos](#Section_2.122)
  - [2.123 Class msDS-AzAdminManager](#Section_2.123)
  - [2.124 Class msDS-AzApplication](#Section_2.124)
  - [2.125 Class msDS-AzOperation](#Section_2.125)
  - [2.126 Class msDS-AzRole](#Section_2.126)
  - [2.127 Class msDS-AzScope](#Section_2.127)
  - [2.128 Class msDS-AzTask](#Section_2.128)
  - [2.129 Class msDS-ClaimsTransformationPolicies](#Section_2.129)
  - [2.130 Class msDS-ClaimsTransformationPolicyType](#Section_2.130)
  - [2.131 Class msDS-ClaimType](#Section_2.131)
  - [2.132 Class msDS-ClaimTypePropertyBase](#Section_2.132)
  - [2.133 Class msDS-ClaimTypes](#Section_2.133)
  - [2.134 Class msDS-CloudExtensions](#Section_2.134)
  - [2.135 Class msDS-DelegatedManagedServiceAccount](#Section_2.135)
  - [2.136 Class msDS-Device](#Section_2.136)
  - [2.137 Class msDS-DeviceContainer](#Section_2.137)
  - [2.138 Class msDS-DeviceRegistrationService](#Section_2.138)
  - [2.139 Class msDS-DeviceRegistrationServiceContainer](#Section_2.139)
  - [2.140 Class msDS-GroupManagedServiceAccount](#Section_2.140)
  - [2.141 Class msDS-KeyCredential](#Section_2.141)
  - [2.142 Class msDS-ManagedServiceAccount](#Section_2.142)
  - [2.143 Class msDS-OptionalFeature](#Section_2.143)
  - [2.144 Class msDS-PasswordSettings](#Section_2.144)
  - [2.145 Class msDS-PasswordSettingsContainer](#Section_2.145)
  - [2.146 Class msDS-QuotaContainer](#Section_2.146)
  - [2.147 Class msDS-QuotaControl](#Section_2.147)
  - [2.148 Class msDS-ResourceProperties](#Section_2.148)
  - [2.149 Class msDS-ResourceProperty](#Section_2.149)
  - [2.150 Class msDS-ResourcePropertyList](#Section_2.150)
  - [2.151 Class msDS-ShadowPrincipal](#Section_2.151)
  - [2.152 Class msDS-ShadowPrincipalContainer](#Section_2.152)
  - [2.153 Class msDS-ValueType](#Section_2.153)
  - [2.154 Class msExchConfigurationContainer](#Section_2.154)
  - [2.155 Class msFVE-RecoveryInformation](#Section_2.155)
  - [2.156 Class msieee80211-Policy](#Section_2.156)
  - [2.157 Class msImaging-PostScanProcess](#Section_2.157)
  - [2.158 Class msImaging-PSPs](#Section_2.158)
  - [2.159 Class msKds-ProvRootKey](#Section_2.159)
  - [2.160 Class msKds-ProvServerConfiguration](#Section_2.160)
  - [2.161 Class msMQ-Custom-Recipient](#Section_2.161)
  - [2.162 Class msMQ-Group](#Section_2.162)
  - [2.163 Class mSMQConfiguration](#Section_2.163)
  - [2.164 Class mSMQEnterpriseSettings](#Section_2.164)
  - [2.165 Class mSMQMigratedUser](#Section_2.165)
  - [2.166 Class mSMQQueue](#Section_2.166)
  - [2.167 Class mSMQSettings](#Section_2.167)
  - [2.168 Class mSMQSiteLink](#Section_2.168)
  - [2.169 Class msPKI-Enterprise-Oid](#Section_2.169)
  - [2.170 Class msPKI-Key-Recovery-Agent](#Section_2.170)
  - [2.171 Class msPKI-PrivateKeyRecoveryAgent](#Section_2.171)
  - [2.172 Class msPrint-ConnectionPolicy](#Section_2.172)
  - [2.173 Class msSFU30DomainInfo](#Section_2.173)
  - [2.174 Class msSFU30MailAliases](#Section_2.174)
  - [2.175 Class msSFU30NetId](#Section_2.175)
  - [2.176 Class msSFU30NetworkUser](#Section_2.176)
  - [2.177 Class msSFU30NISMapConfig](#Section_2.177)
  - [2.178 Class msSPP-ActivationObject](#Section_2.178)
  - [2.179 Class msSPP-ActivationObjectsContainer](#Section_2.179)
  - [2.180 Class msTAPI-RtConference](#Section_2.180)
  - [2.181 Class msTAPI-RtPerson](#Section_2.181)
  - [2.182 Class msTPM-InformationObject](#Section_2.182)
  - [2.183 Class msTPM-InformationObjectsContainer](#Section_2.183)
  - [2.184 Class msWMI-IntRangeParam](#Section_2.184)
  - [2.185 Class msWMI-IntSetParam](#Section_2.185)
  - [2.186 Class msWMI-MergeablePolicyTemplate](#Section_2.186)
  - [2.187 Class msWMI-ObjectEncoding](#Section_2.187)
  - [2.188 Class msWMI-PolicyTemplate](#Section_2.188)
  - [2.189 Class msWMI-PolicyType](#Section_2.189)
  - [2.190 Class msWMI-RangeParam](#Section_2.190)
  - [2.191 Class msWMI-RealRangeParam](#Section_2.191)
  - [2.192 Class msWMI-Rule](#Section_2.192)
  - [2.193 Class msWMI-ShadowObject](#Section_2.193)
  - [2.194 Class msWMI-SimplePolicyTemplate](#Section_2.194)
  - [2.195 Class msWMI-Som](#Section_2.195)
  - [2.196 Class msWMI-StringSetParam](#Section_2.196)
  - [2.197 Class msWMI-UintRangeParam](#Section_2.197)
  - [2.198 Class msWMI-UintSetParam](#Section_2.198)
  - [2.199 Class msWMI-UnknownRangeParam](#Section_2.199)
  - [2.200 Class msWMI-WMIGPO](#Section_2.200)
  - [2.201 Class nisMap](#Section_2.201)
  - [2.202 Class nisNetgroup](#Section_2.202)
  - [2.203 Class nisObject](#Section_2.203)
  - [2.204 Class nTDSConnection](#Section_2.204)
  - [2.205 Class nTDSDSA](#Section_2.205)
  - [2.206 Class nTDSDSARO](#Section_2.206)
  - [2.207 Class nTDSService](#Section_2.207)
  - [2.208 Class nTDSSiteSettings](#Section_2.208)
  - [2.209 Class nTFRSMember](#Section_2.209)
  - [2.210 Class nTFRSReplicaSet](#Section_2.210)
  - [2.211 Class nTFRSSettings](#Section_2.211)
  - [2.212 Class nTFRSSubscriber](#Section_2.212)
  - [2.213 Class nTFRSSubscriptions](#Section_2.213)
  - [2.214 Class oncRpc](#Section_2.214)
  - [2.215 Class organization](#Section_2.215)
  - [2.216 Class organizationalPerson](#Section_2.216)
  - [2.217 Class organizationalRole](#Section_2.217)
  - [2.218 Class organizationalUnit](#Section_2.218)
  - [2.219 Class packageRegistration](#Section_2.219)
  - [2.220 Class person](#Section_2.220)
  - [2.221 Class physicalLocation](#Section_2.221)
  - [2.222 Class pKICertificateTemplate](#Section_2.222)
  - [2.223 Class pKIEnrollmentService](#Section_2.223)
  - [2.224 Class posixAccount](#Section_2.224)
  - [2.225 Class posixGroup](#Section_2.225)
  - [2.226 Class printQueue](#Section_2.226)
  - [2.227 Class queryPolicy](#Section_2.227)
  - [2.228 Class remoteMailRecipient](#Section_2.228)
  - [2.229 Class remoteStorageServicePoint](#Section_2.229)
  - [2.230 Class residentialPerson](#Section_2.230)
  - [2.231 Class rFC822LocalPart](#Section_2.231)
  - [2.232 Class rIDManager](#Section_2.232)
  - [2.233 Class rIDSet](#Section_2.233)
  - [2.234 Class room](#Section_2.234)
  - [2.235 Class rpcContainer](#Section_2.235)
  - [2.236 Class rpcEntry](#Section_2.236)
  - [2.237 Class rpcGroup](#Section_2.237)
  - [2.238 Class rpcProfile](#Section_2.238)
  - [2.239 Class rpcProfileElement](#Section_2.239)
  - [2.240 Class rpcServer](#Section_2.240)
  - [2.241 Class rpcServerElement](#Section_2.241)
  - [2.242 Class rRASAdministrationConnectionPoint](#Section_2.242)
  - [2.243 Class rRASAdministrationDictionary](#Section_2.243)
  - [2.244 Class samDomain](#Section_2.244)
  - [2.245 Class samDomainBase](#Section_2.245)
  - [2.246 Class samServer](#Section_2.246)
  - [2.247 Class secret](#Section_2.247)
  - [2.248 Class securityObject](#Section_2.248)
  - [2.249 Class securityPrincipal](#Section_2.249)
  - [2.250 Class server](#Section_2.250)
  - [2.251 Class serversContainer](#Section_2.251)
  - [2.252 Class serviceAdministrationPoint](#Section_2.252)
  - [2.253 Class serviceClass](#Section_2.253)
  - [2.254 Class serviceConnectionPoint](#Section_2.254)
  - [2.255 Class serviceInstance](#Section_2.255)
  - [2.256 Class shadowAccount](#Section_2.256)
  - [2.257 Class simpleSecurityObject](#Section_2.257)
  - [2.258 Class site](#Section_2.258)
  - [2.259 Class siteLink](#Section_2.259)
  - [2.260 Class siteLinkBridge](#Section_2.260)
  - [2.261 Class sitesContainer](#Section_2.261)
  - [2.262 Class storage](#Section_2.262)
  - [2.263 Class subnet](#Section_2.263)
  - [2.264 Class subnetContainer](#Section_2.264)
  - [2.265 Class subSchema](#Section_2.265)
  - [2.266 Class top](#Section_2.266)
  - [2.267 Class trustedDomain](#Section_2.267)
  - [2.268 Class typeLibrary](#Section_2.268)
  - [2.269 Class user](#Section_2.269)
  - [2.270 Class volume](#Section_2.270)
</details>

<details>
<summary>3 Change Tracking</summary>

- [3 Change Tracking](#Section_3)
</details>
<a id="Section_1"></a>
# 1 Introduction

Active Directory Schema Classes contains a list of the objects of type "class" that exist in the Active Directory schema for **Active Directory Domain Services (AD DS)**. Active Directory and all associated terms and concepts are described in [MS-ADTS](../MS-ADTS/MS-ADTS.md).

**Note**: This document is not intended to stand on its own; it is intended to act as an appendix to the Active Directory Technical Specification. For details about the Active Directory schema, see [MS-ADTS] section 3.1.1.2 (Active Directory Schema).

**Note**: The object definitions in this document are also available for download in LDAP Data Interchange Format (LDIF) at the following location: [[MSFT-ADSCHEMA]](https://go.microsoft.com/fwlink/?LinkId=212555).

**Note**: The object definitions in this document contain information about the product in which the objects were first implemented in the Active Directory schema. Unless otherwise specified, objects continue to be available in the Active Directory schema in all subsequent versions of the product according to the list of products in [MS-ADTS] section 1.

<a id="Section_1.1"></a>
## 1.1 References

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MSFT-ADSCHEMA] Microsoft Corporation, "Combined Active Directory Schema Classes and Attributes for Windows Server", December 2013, [https://www.microsoft.com/en-us/download/details.aspx?id=23782](https://go.microsoft.com/fwlink/?LinkId=212555)

[RFC1035] Mockapetris, P., "Domain Names - Implementation and Specification", STD 13, RFC 1035, November 1987, [https://www.rfc-editor.org/info/rfc1035](https://go.microsoft.com/fwlink/?LinkId=90264)

[RFC1831] Srinivasan, R., "RPC: Remote Procedure Call Protocol Specification Version 2", RFC 1831, August 1995, [https://www.rfc-editor.org/info/rfc1831](https://go.microsoft.com/fwlink/?LinkId=90295)

[RFC2181] Elz, R., and Bush, R., "Clarifications to the DNS Specification", RFC 2181, July 1997, [https://www.rfc-editor.org/info/rfc2181](https://go.microsoft.com/fwlink/?LinkId=127732)

[RFC2849] Good, G., "The LDAP Data Interchange Format (LDIF) - Technical Specification", RFC 2849, June 2000, [https://www.rfc-editor.org/info/rfc2849](https://go.microsoft.com/fwlink/?LinkId=90389)

[RFC4524] Zeilenga, K., Ed., "COSINE LDAP/X.500 Schema", RFC 4524, June 2006, [https://www.rfc-editor.org/info/rfc4524](https://go.microsoft.com/fwlink/?LinkId=196119)

<a id="Section_2"></a>
# 2 Classes

The following sections specify the classes in the Active Directory schema.

These sections normatively specify the schema definition of each class and version-specific behavior of those schema definitions (such as when the class was added to the schema). Additionally, as an aid to the reader some of the sections include informative notes about how the class can be used.

**Note**: In the following class definitions, "<SchemaNCDN>" is the DN of the schema NC. For more information, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.7.

**Note**: Lines of text in the class definitions that are excessively long have been "folded" in accordance with [[RFC2849]](https://go.microsoft.com/fwlink/?LinkId=90389) Note 2.

<a id="Section_2.1"></a>
## 2.1 Class account

This class is not used. It is included for compatibility with [[RFC4524]](https://go.microsoft.com/fwlink/?LinkId=196119) section 3.1.

cn: account

ldapDisplayName: account

governsId: 0.9.2342.19200300.100.4.5

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: uid, host, ou, o, l, seeAlso, description

possSuperiors: organizationalUnit, container

schemaIdGuid: 2628a46a-a6ad-4ae0-b854-2b12d9fe6f9e

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=account,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 operating system.

<a id="Section_2.2"></a>
## 2.2 Class aCSPolicy

The Admission Control Service (ACS) bandwidth allocation policy for a user or profile.

cn: ACS-Policy

ldapDisplayName: aCSPolicy

governsId: 1.2.840.113556.1.5.137

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: aCSTotalNoOfFlows, aCSTimeOfDay, aCSServiceType,

aCSPriority, aCSPermissionBits, aCSMinimumDelayVariation,

aCSMinimumLatency, aCSMaximumSDUSize, aCSMinimumPolicedSize,

aCSMaxTokenRatePerFlow, aCSMaxTokenBucketPerFlow,

aCSMaxPeakBandwidthPerFlow, aCSMaxDurationPerFlow,

aCSMaxAggregatePeakRatePerUser, aCSIdentityName, aCSDirection,

aCSAggregateTokenRatePerUser

systemPossSuperiors: container

schemaIdGuid: 7f561288-5301-11d1-a9c5-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ACS-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server operating system.

<a id="Section_2.3"></a>
## 2.3 Class aCSResourceLimits

Contains reservable resource limits for a subnet. These limits can be for each ACS service type or for all service types.

cn: ACS-Resource-Limits

ldapDisplayName: aCSResourceLimits

governsId: 1.2.840.113556.1.5.191

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: aCSMaxTokenRatePerFlow, aCSServiceType,

aCSMaxPeakBandwidthPerFlow, aCSMaxPeakBandwidth,

aCSAllocableRSVPBandwidth

systemPossSuperiors: container

schemaIdGuid: 2e899b04-2834-11d3-91d4-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ACS-Resource-Limits,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.4"></a>
## 2.4 Class aCSSubnet

Contains configuration parameters for an ACS server.

cn: ACS-Subnet

ldapDisplayName: aCSSubnet

governsId: 1.2.840.113556.1.5.138

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: aCSServerList, aCSRSVPLogFilesLocation,

aCSRSVPAccountFilesLocation, aCSNonReservedTxSize,

aCSNonReservedTxLimit, aCSNonReservedTokenSize,

aCSNonReservedPeakRate, aCSNonReservedMinPolicedSize,

aCSNonReservedMaxSDUSize, aCSMaxTokenRatePerFlow,

aCSMaxSizeOfRSVPLogFile, aCSMaxSizeOfRSVPAccountFile,

aCSMaxPeakBandwidthPerFlow, aCSMaxPeakBandwidth, aCSMaxNoOfLogFiles,

aCSMaxNoOfAccountFiles, aCSMaxDurationPerFlow, aCSEventLogLevel,

aCSEnableRSVPMessageLogging, aCSEnableRSVPAccounting,

aCSEnableACSService, aCSDSBMRefresh, aCSDSBMPriority,

aCSDSBMDeadTime, aCSCacheTimeout, aCSAllocableRSVPBandwidth

systemPossSuperiors: container

schemaIdGuid: 7f561289-5301-11d1-a9c5-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ACS-Subnet,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.5"></a>
## 2.5 Class addressBookContainer

A container for holding members of an address-book view.

cn: Address-Book-Container

ldapDisplayName: addressBookContainer

governsId: 1.2.840.113556.1.5.125

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: displayName

systemMayContain: purportedSearch

systemPossSuperiors: addressBookContainer, configuration

schemaIdGuid: 3e74f60f-3e73-11d1-a9c0-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(OA;;CR;a1990816-4298-11d1-ade2-00c04fd8d5cd;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Address-Book-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.6"></a>
## 2.6 Class addressTemplate

Specifies information for a display template.

cn: Address-Template

ldapDisplayName: addressTemplate

governsId: 1.2.840.113556.1.3.58

objectClassCategory: 1

rdnAttId: cn

subClassOf: displayTemplate

systemMustContain: displayName

systemMayContain: proxyGenerationEnabled, perRecipDialogDisplayTable,

perMsgDialogDisplayTable, addressType, addressSyntax

systemPossSuperiors: container

schemaIdGuid: 5fd4250a-1262-11d0-a060-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Address-Template,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.7"></a>
## 2.7 Class applicationEntity

The X.500 base class for applicationEntity.

cn: Application-Entity

ldapDisplayName: applicationEntity

governsId: 2.5.6.12

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: presentationAddress, cn

systemMayContain: supportedApplicationContext, seeAlso, ou, o, l

systemPossSuperiors: applicationProcess, organizationalUnit,

container

schemaIdGuid: 3fdfee4f-47f4-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Entity,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.8"></a>
## 2.8 Class applicationProcess

The X.500 base class for applicationProcess.

cn: Application-Process

ldapDisplayName: applicationProcess

governsId: 2.5.6.11

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: seeAlso, ou, l

systemPossSuperiors: organizationalUnit, organization, container,

computer

schemaIdGuid: 5fd4250b-1262-11d0-a060-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Application-Process,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.9"></a>
## 2.9 Class applicationSettings

A base class for server-specific application settings.

cn: Application-Settings

ldapDisplayName: applicationSettings

governsId: 1.2.840.113556.1.5.7000.49

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMayContain: notificationList, msDS-Settings, applicationName

systemPossSuperiors: server

schemaIdGuid: f780acc1-56f0-11d1-a9c6-0000f80367c1

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.10"></a>
## 2.10 Class applicationSiteSettings

The container that holds all site-specific settings.

cn: Application-Site-Settings

ldapDisplayName: applicationSiteSettings

governsId: 1.2.840.113556.1.5.68

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMayContain: notificationList, applicationName

systemPossSuperiors: site

schemaIdGuid: 19195a5c-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Site-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.11"></a>
## 2.11 Class applicationVersion

Stores versioning information for an application and its schema.

cn: Application-Version

ldapDisplayName: applicationVersion

governsId: 1.2.840.113556.1.5.216

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

mayContain: owner, managedBy, keywords, versionNumberLo,

versionNumberHi, versionNumber, vendor, appSchemaVersion

possSuperiors: organizationalUnit, computer, container

schemaIdGuid: ddc790ac-af4d-442a-8f0f-a1d4caa7dd92

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Version,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.12"></a>
## 2.12 Class attributeSchema

Defines an attribute object in the schema.

cn: Attribute-Schema

ldapDisplayName: attributeSchema

governsId: 1.2.840.113556.1.3.14

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: schemaIDGUID, oMSyntax, lDAPDisplayName,

isSingleValued, cn, attributeSyntax, attributeID

systemMayContain: systemOnly, searchFlags, schemaFlagsEx, rangeUpper,

rangeLower, oMObjectClass, msDs-Schema-Extensions, msDS-IntId,

mAPIID, linkID, isMemberOfPartialAttributeSet, isEphemeral,

isDefunct, extendedCharsAllowed, classDisplayName,

attributeSecurityGUID

systemPossSuperiors: dMD

schemaIdGuid: bf967a80-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Attribute-Schema,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.13"></a>
## 2.13 Class bootableDevice

Represents a device that has boot parameters.

cn: BootableDevice

ldapDisplayName: bootableDevice

governsId: 1.3.6.1.1.1.2.12

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: cn, bootParameter, bootFile

schemaIdGuid: 4bcb2477-4bb3-4545-a9fc-fb66e136b435

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=BootableDevice,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2 operating system.

<a id="Section_2.14"></a>
## 2.14 Class builtinDomain

The container that holds the default groups for a domain.

cn: Builtin-Domain

ldapDisplayName: builtinDomain

governsId: 1.2.840.113556.1.5.4

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemAuxiliaryClass: samDomainBase

systemPossSuperiors: domainDNS

schemaIdGuid: bf967a81-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Builtin-Domain,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.15"></a>
## 2.15 Class categoryRegistration

The registration information for a component category.

cn: Category-Registration

ldapDisplayName: categoryRegistration

governsId: 1.2.840.113556.1.5.74

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: managedBy, localizedDescription, localeID,

categoryId

systemPossSuperiors: classStore

schemaIdGuid: 7d6c0e9d-7e20-11d0-afd6-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Category-Registration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.16"></a>
## 2.16 Class certificationAuthority

Represents a process that issues public key certificates, for example, Active Directory Certificate Services (AD CS).

cn: Certification-Authority

ldapDisplayName: certificationAuthority

governsId: 2.5.6.16

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

systemMustContain: cn, certificateRevocationList, cACertificate,

authorityRevocationList

systemMayContain: teletexTerminalIdentifier,

supportedApplicationContext, signatureAlgorithms, searchGuide,

previousParentCA, previousCACertificates, pendingParentCA,

pendingCACertificates, parentCACertificateChain, parentCA,

enrollmentProviders, domainPolicyObject, domainID, dNSHostName,

deltaRevocationList, currentParentCA, crossCertificatePair,

cRLObject, certificateTemplates, cAWEBURL, cAUsages, cAConnect,

cACertificateDN

systemPossSuperiors: container

schemaIdGuid: 3fdfee50-47f4-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Certification-Authority,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.17"></a>
## 2.17 Class classRegistration

The registration information for a Component Object Model (COM) object.

cn: Class-Registration

ldapDisplayName: classRegistration

governsId: 1.2.840.113556.1.5.10

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: requiredCategories, managedBy,

implementedCategories, cOMTreatAsClassId, cOMProgID,

cOMOtherProgId, cOMInterfaceID, cOMCLSID

systemPossSuperiors: classStore

schemaIdGuid: bf967a82-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Class-Registration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.18"></a>
## 2.18 Class classSchema

Defines a class object in the schema.

cn: Class-Schema

ldapDisplayName: classSchema

governsId: 1.2.840.113556.1.3.13

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: subClassOf, schemaIDGUID, objectClassCategory,

governsID, defaultObjectCategory, cn

systemMayContain: systemPossSuperiors, systemOnly, systemMustContain,

systemMayContain, systemAuxiliaryClass, schemaFlagsEx, rDNAttID,

possSuperiors, mustContain, msDs-Schema-Extensions, msDS-IntId,

mayContain, lDAPDisplayName, isDefunct, defaultSecurityDescriptor,

defaultHidingValue, classDisplayName, auxiliaryClass

systemPossSuperiors: dMD

schemaIdGuid: bf967a83-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Class-Schema,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.19"></a>
## 2.19 Class classStore

Used to create the class store container, which provides the framework for deploying application resources in Active Directory Domain Services (on Windows Server 2008 operating system, Windows Server 2008 R2 operating system, and Windows Server 2012 operating system) and in the Active Directory directory service (on Windows Server 2003 R2, Windows Server 2003, and Windows 2000 Server). This class makes the deployment policy available to policy recipients; that is, to users and machines. Access and administration privileges are controlled by standard access control properties on the class store container object.

cn: Class-Store

ldapDisplayName: classStore

governsId: 1.2.840.113556.1.5.44

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: versionNumber, nextLevelStore, lastUpdateSequence,

appSchemaVersion

systemPossSuperiors: domainPolicy, computer, group, user, classStore,

organizationalUnit, domainDNS, container

schemaIdGuid: bf967a84-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Class-Store,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.20"></a>
## 2.20 Class comConnectionPoint

The binding for running the COM or DCOM service.

cn: Com-Connection-Point

ldapDisplayName: comConnectionPoint

governsId: 1.2.840.113556.1.5.11

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMustContain: cn

systemMayContain: monikerDisplayName, moniker, marshalledInterface

systemPossSuperiors: container

schemaIdGuid: bf967a85-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Com-Connection-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.21"></a>
## 2.21 Class computer

A class that represents a computer account in the domain.

cn: Computer

ldapDisplayName: computer

governsId: 1.2.840.113556.1.3.30

objectClassCategory: 1

rdnAttId: cn

subClassOf: user

auxiliaryClass: ipHost

mayContain: msSFU30Aliases, msSFU30NisDomain, nisMapName,

msSFU30Name

systemMayContain: msTSSecondaryDesktopBL, msTSPrimaryDesktopBL,

msTSEndpointData, msTSEndpointType,

msTSEndpointPlugin, msDS-HostServiceAccount,

msDS-IsUserCachableAtRodc, msTSProperty02,

msTSProperty01, msTPM-OwnerInformation, msDS-RevealOnDemandGroup,

msDS-NeverRevealGroup, msDS-PromotionSettings, msDS-SiteName,

msDS-isRODC, msDS-isGC, msDS-AuthenticatedAtDC, msDS-RevealedList,

msDS-RevealedUsers, msDS-ExecuteScriptPassword, msDS-KrbTgtLink,

volumeCount, siteGUID, rIDSetReferences, policyReplicationFlags,

physicalLocationObject, operatingSystemVersion,

operatingSystemServicePack, operatingSystemHotfix, operatingSystem,

networkAddress, netbootDUID, netbootSIFFile, netbootMirrorDataFile,

netbootMachineFilePath, netbootInitialization, netbootGUID,

msDS-AdditionalSamAccountName, msDS-AdditionalDnsHostName,

managedBy, machineRole, location, localPolicyFlags, dNSHostName,

defaultLocalPolicyObject, cn, catalogs, msTPM-TpmInformationForComputer,

msDS-GenerationId, msImaging-ThumbprintHash, msImaging-HashAlgorithm

systemPossSuperiors: container, organizationalUnit, domainDNS

schemaIdGuid: bf967a86-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCRLCLORCSDDT;;;CO)

(OA;;WP;4c164200-20c0-11d0-a768-00aa006e0529;;CO)(A;;RPLCLORC;;;AU)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;WD)(A;;CCDC;;;PS)

(OA;;CCDC;bf967aa8-0de6-11d0-a285-00aa003049e2;;PO)

(OA;;RPWP;bf967a7f-0de6-11d0-a285-00aa003049e2;;CA)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;PS)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;CO)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;CO)

(OA;;WP;3e0abfd0-126a-11d0-a060-00aa006c33ed;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;bf967950-0de6-11d0-a285-00aa003049e2;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;bf967953-0de6-11d0-a285-00aa003049e2;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Computer,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.22"></a>
## 2.22 Class configuration

A container that holds the configuration information for a domain.

cn: Configuration

ldapDisplayName: configuration

governsId: 1.2.840.113556.1.5.12

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: msDS-USNLastSyncSuccess, gPOptions, gPLink

systemPossSuperiors: domainDNS

schemaIdGuid: bf967a87-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Configuration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.23"></a>
## 2.23 Class connectionPoint

The base class from which all connectible objects are derived.

cn: Connection-Point

ldapDisplayName: connectionPoint

governsId: 1.2.840.113556.1.5.14

objectClassCategory: 2

rdnAttId: cn

subClassOf: leaf

systemMustContain: cn

systemMayContain: msDS-Settings, managedBy, keywords

systemPossSuperiors: container, computer

schemaIdGuid: 5cb41ecf-0e4c-11d0-a286-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Connection-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.24"></a>
## 2.24 Class contact

A class that contains information about a person or company that users might often contact.

cn: Contact

ldapDisplayName: contact

governsId: 1.2.840.113556.1.5.15

objectClassCategory: 1

rdnAttId: cn

subClassOf: organizationalPerson

systemAuxiliaryClass: mailRecipient

systemMustContain: cn

mayContain: msDS-SourceObjectDN

systemMayContain: notes, msDS-preferredDataLocation

systemPossSuperiors: organizationalUnit, domainDNS

schemaIdGuid: 5cb41ed0-0e4c-11d0-a286-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.25"></a>
## 2.25 Class container

A class that is used to hold other classes.

cn: Container

ldapDisplayName: container

governsId: 1.2.840.113556.1.3.23

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

mayContain: msDS-ObjectReference

systemMayContain: schemaVersion, defaultClassStore

systemPossSuperiors: msDS-AzScope, msDS-AzApplication,

msDS-AzAdminManager, subnet, server, nTDSService, domainDNS,

organization, configuration, container, organizationalUnit

schemaIdGuid: bf967a8b-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.26"></a>
## 2.26 Class controlAccessRight

Identifies an extended right that can be granted or revoked by means of an access control list (ACL).

cn: Control-Access-Right

ldapDisplayName: controlAccessRight

governsId: 1.2.840.113556.1.5.77

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: validAccesses, rightsGuid, localizationDisplayId,

appliesTo

systemPossSuperiors: container

schemaIdGuid: 8297931e-86d3-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Control-Access-Right,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.27"></a>
## 2.27 Class country

The country/region in the address of the user. This class specifies the full name of the country/region.

cn: Country

ldapDisplayName: country

governsId: 2.5.6.2

objectClassCategory: 0

rdnAttId: c

subClassOf: top

systemMustContain: c

systemMayContain: co, searchGuide

systemPossSuperiors: domainDNS, organization

schemaIdGuid: bf967a8c-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Country,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.28"></a>
## 2.28 Class cRLDistributionPoint

The object that holds the certificate, authority, and delta revocation lists.

cn: CRL-Distribution-Point

ldapDisplayName: cRLDistributionPoint

governsId: 2.5.6.19

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: deltaRevocationList, cRLPartitionedRevocationList,

certificateRevocationList, certificateAuthorityObject,

authorityRevocationList

systemPossSuperiors: container

schemaIdGuid: 167758ca-47f3-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=CRL-Distribution-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.29"></a>
## 2.29 Class crossRef

Holds knowledge information about all directory service (DS) naming contexts and all external directories to which referrals can be generated.

cn: Cross-Ref

ldapDisplayName: crossRef

governsId: 1.2.840.113556.1.3.11

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: nCName, dnsRoot, cn

systemMayContain: msDS-NC-RO-Replica-Locations, trustParent,

superiorDNSRoot, rootTrust, nTMixedDomain, nETBIOSName, Enabled,

msDS-SDReferenceDomain,

msDS-Replication-Notify-Subsequent-DSA-Delay,

msDS-Replication-Notify-First-DSA-Delay, msDS-NC-Replica-Locations,

msDS-DnsRootAlias, msDS-Behavior-Version

systemPossSuperiors: crossRefContainer

schemaIdGuid: bf967a8d-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Cross-Ref,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.30"></a>
## 2.30 Class crossRefContainer

Holds the cross-reference objects for all naming contexts.

cn: Cross-Ref-Container

ldapDisplayName: crossRefContainer

governsId: 1.2.840.113556.1.5.7000.53

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-EnabledFeature, msDS-SPNSuffixes, uPNSuffixes,

msDS-UpdateScript, msDS-ExecuteScriptPassword, msDS-Behavior-Version

systemPossSuperiors: configuration

schemaIdGuid: ef9e60e0-56f7-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;GA;;;SY)

defaultHidingValue: FALSE

systemOnly: TRUE

defaultObjectCategory: CN=Cross-Ref-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.31"></a>
## 2.31 Class device

A generic base class for physical devices.

cn: Device

ldapDisplayName: device

governsId: 2.5.6.14

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

auxiliaryClass: ipHost, ieee802Device, bootableDevice

systemMustContain: cn

mayContain: msSFU30Name, msSFU30NisDomain, nisMapName, msSFU30Aliases

systemMayContain: serialNumber, seeAlso, owner, ou, o, l

systemPossSuperiors: domainDNS, organizationalUnit, organization,

container

schemaIdGuid: bf967a8e-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Device,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.32"></a>
## 2.32 Class dfsConfiguration

Holds all fault-tolerant Distributed File System (DFS) configurations.

cn: Dfs-Configuration

ldapDisplayName: dfsConfiguration

governsId: 1.2.840.113556.1.5.42

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container, domainDNS

schemaIdGuid: 8447f9f2-1027-11d0-a05f-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dfs-Configuration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.33"></a>
## 2.33 Class dHCPClass

Represents a Dynamic Host Configuration Protocol (DHCP) server or set of servers.

cn: DHCP-Class

ldapDisplayName: dHCPClass

governsId: 1.2.840.113556.1.5.132

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: dhcpUniqueKey, dhcpType, dhcpIdentification,

dhcpFlags

systemMayContain: superScopes, superScopeDescription,

optionsLocation, optionDescription, networkAddress, mscopeId,

dhcpUpdateTime, dhcpSubnets, dhcpState, dhcpSites, dhcpServers,

dhcpReservations, dhcpRanges, dhcpProperties, dhcpOptions,

dhcpObjName, dhcpObjDescription, dhcpMaxKey, dhcpMask, dhcpClasses

systemPossSuperiors: container

schemaIdGuid: 963d2756-48be-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=DHCP-Class,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.34"></a>
## 2.34 Class displaySpecifier

Describes the context menus and property pages to use with an object in the directory.

cn: Display-Specifier

ldapDisplayName: displaySpecifier

governsId: 1.2.840.113556.1.5.84

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: treatAsLeaf, shellPropertyPages, shellContextMenu,

scopeFlags, queryFilter, iconPath, extraColumns, creationWizard,

createWizardExt, createDialog, contextMenu, classDisplayName,

attributeDisplayNames, adminPropertyPages,

adminMultiselectPropertyPages, adminContextMenu

systemPossSuperiors: container

schemaIdGuid: e0fa1e8a-9b45-11d0-afdd-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Display-Specifier,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.35"></a>
## 2.35 Class displayTemplate

Specifies information for an address template.

cn: Display-Template

ldapDisplayName: displayTemplate

governsId: 1.2.840.113556.1.3.59

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: originalDisplayTableMSDOS, originalDisplayTable,

helpFileName, helpData32, helpData16, addressEntryDisplayTableMSDOS,

addressEntryDisplayTable

systemPossSuperiors: container

schemaIdGuid: 5fd4250c-1262-11d0-a060-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Display-Template,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.36"></a>
## 2.36 Class dMD

Holds the schema for Active Directory Domain Services (AD DS) and the Active Directory directory service. The Lightweight Directory Access Protocol (LDAP) name dMD stands for Directory Management Domain.

cn: DMD

ldapDisplayName: dMD

governsId: 1.2.840.113556.1.3.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: msDS-USNLastSyncSuccess, schemaUpdate, schemaInfo,

prefixMap, msDs-Schema-Extensions, msDS-IntId, dmdName

systemPossSuperiors: configuration

schemaIdGuid: bf967a8f-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=DMD,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.37"></a>
## 2.37 Class dnsNode

Holds the domain name system (DNS) resource records for a single host.

cn: Dns-Node

ldapDisplayName: dnsNode

governsId: 1.2.840.113556.1.5.86

objectClassCategory: 1

rdnAttId: dc

subClassOf: top

systemMustContain: dc

systemMayContain: dNSTombstoned, dnsRecord, dNSProperty

systemPossSuperiors: dnsZone, dnsZoneScope

schemaIdGuid: e0fa1e8c-9b45-11d0-afdd-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;ED)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)(A;;RPLCLORC;;;WD)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dns-Node,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.38"></a>
## 2.38 Class dnsZone

The container for DNS nodes. This class holds zone metadata.

cn: Dns-Zone

ldapDisplayName: dnsZone

governsId: 1.2.840.113556.1.5.85

objectClassCategory: 1

rdnAttId: dc

subClassOf: top

systemMustContain: dc

systemMayContain: managedBy, dnsSecureSecondaries, dNSProperty,

dnsNotifySecondaries, dnsAllowXFR, dnsAllowDynamic, msDNS-IsSigned,

msDNS-SignWithNSEC3, msDNS-NSEC3OptOut, msDNS-MaintainTrustAnchor,

msDNS-DSRecordAlgorithms, msDNS-RFC5011KeyRollovers,

msDNS-NSEC3HashAlgorithm, msDNS-NSEC3RandomSaltLength,

msDNS-NSEC3Iterations, msDNS-DNSKEYRecordSetTTL, msDNS-DSRecordSetTTL,

msDNS-SignatureInceptionOffset, msDNS-SecureDelegationPollingPeriod,

msDNS-SigningKeyDescriptors, msDNS-SigningKeys, msDNS-DNSKEYRecords,

msDNS-ParentHasSecureDelegation, msDNS-PropagationTime,

msDNS-NSEC3UserSalt, msDNS-NSEC3CurrentSalt

systemPossSuperiors: container

schemaIdGuid: e0fa1e8b-9b45-11d0-afdd-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;ED)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;CC;;;AU)(A;;RPLCLORC;;;WD)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dns-Zone,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.39"></a>
## 2.39 Class dnsZoneScope

A copy of a zone, but with a different set of resource records.

cn: Dns-Zone-Scope

ldapDisplayName: dnsZoneScope

governsId: 1.2.840.113556.1.5.301

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemPossSuperiors: dnsZoneScopeContainer

systemMustContain: dc

systemMayContain: dNSProperty, managedBy

schemaIdGuid: 696f8a61-2d3f-40ce-a4b3-e275dfcc49c5

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;ED)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;CC;;;AU)(A;;RPLCLORC;;;WD)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dns-Zone-Scope,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2016 operating system.

<a id="Section_2.40"></a>
## 2.40 Class dnsZoneScopeContainer

The container for DNS Zone Scope objects.

cn: Dns-Zone-Scope-Container

ldapDisplayName: dnsZoneScopeContainer

governsId: 1.2.840.113556.1.5.300

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemPossSuperiors: dnsZone

schemaIdGuid: f2699093-f25a-4220-9deb-03df4cc4a9c5

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;ED)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;CC;;;AU)(A;;RPLCLORC;;;WD)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dns-Zone-Scope-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2016.

<a id="Section_2.41"></a>
## 2.41 Class document

Defines entries that represent documents.

cn: document

ldapDisplayName: document

governsId: 0.9.2342.19200300.100.4.6

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: documentIdentifier, documentPublisher, documentLocation,

documentAuthor, documentVersion, documentTitle, ou, o, l, seeAlso,

description, cn

possSuperiors: organizationalUnit, container

schemaIdGuid: 39bad96d-c2d6-4baf-88ab-7e4207600117

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=document,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.42"></a>
## 2.42 Class documentSeries

Defines an entry that represents a series of documents.

cn: documentSeries

ldapDisplayName: documentSeries

governsId: 0.9.2342.19200300.100.4.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn

mayContain: telephoneNumber, ou, o, l, seeAlso, description

possSuperiors: organizationalUnit, container

schemaIdGuid: 7a2be07c-302f-4b96-bc90-0795d66885f8

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=documentSeries,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.43"></a>
## 2.43 Class domain

Contains information about a domain.

cn: Domain

ldapDisplayName: domain

governsId: 1.2.840.113556.1.5.66

objectClassCategory: 2

rdnAttId: dc

subClassOf: top

systemMustContain: dc

systemPossSuperiors: domain, organization

schemaIdGuid: 19195a5a-6da0-11d0-afd3-00c04fd930c9

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Domain-DNS,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.44"></a>
## 2.44 Class domainDNS

A Windows NT operating system domain that has DNS-based (DC=) naming.

cn: Domain-DNS

ldapDisplayName: domainDNS

governsId: 1.2.840.113556.1.5.67

objectClassCategory: 1

rdnAttId: dc

subClassOf: domain

systemAuxiliaryClass: samDomain

systemMayContain: msDS-EnabledFeature, msDS-USNLastSyncSuccess,

msDS-Behavior-Version, msDS-AllowedDNSSuffixes, managedBy,

msDS-ExpirePasswordsOnSmartCardOnlyAccounts

systemPossSuperiors: domainDNS

schemaIdGuid: 19195a5b-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;RO)(A;;RP;;;WD)

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ab-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ac-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;1131f6ab-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;1131f6ac-9c07-11d1-f79f-00c04fc2dcd2;;BA)(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCRCWDWOSW;;;DA)(A;CI;RPWPCRLCLOCCRCWDWOSDSW;;;BA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

(A;CI;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;EA)(A;CI;LC;;;RU)

(OA;CIIO;RP;037088f8-0ae1-11d2-b422-00a0c968f939;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;4c164200-20c0-11d0-a768-00aa006e0529;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;;RP;c7407360-20bf-11d0-a768-00aa006e0529;;RU)

(OA;CIIO;RPLCLORC;;bf967a9c-0de6-11d0-a285-00aa003049e2;RU)

(A;;RPRC;;;RU)

(OA;CIIO;RPLCLORC;;bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(A;;LCRPLORC;;;ED)(OA;CIIO;RP;037088f8-0ae1-11d2-b422-00a0c968f939;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;4c164200-20c0-11d0-a768-00aa006e0529;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RPLCLORC;;4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;;RP;b8119fd0-04f6-4762-ab7a-4986c76b3f9a;;RU)

(OA;;RP;b8119fd0-04f6-4762-ab7a-4986c76b3f9a;;AU)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967aba-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967a9c-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967a86-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;WP;ea1b7b93-5e48-46d5-bc6c-4df4fda78a35;

bf967a86-0de6-11d0-a285-00aa003049e2;PS)

(OA;;CR;1131f6ad-9c07-11d1-f79f-00c04fc2dcd2;;DD)

(OA;;CR;89e95b76-444d-4c62-991a-0facbeda640c;;ED)

(OA;;CR;1131f6ad-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;89e95b76-444d-4c62-991a-0facbeda640c;;BA)

(OA;;CR;e2a36dc9-ae17-47c3-b58b-be34c55ba633;;S-1-5-32-557)

(OA;;CR;280f369c-67c7-438e-ae98-1d46f3c6f541;;AU)

(OA;;CR;ccc2dc7d-a6ad-4a7a-8846-c04e3cc53501;;AU)

(OA;;CR;05c74c5e-4deb-43b4-bd9f-86664c2a7fd5;;AU)

(OA;;CR;1131f6ae-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ae-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;CIIO;CRRPWP;91e647de-d96f-4b70-9557-d63ff4f3ccd8;;PS)

(OA;CIOI;RPWP;3f78c3e5-f79a-46bd-a0b8-9d18116ddc79;;PS)

S:(AU;SA;WDWOWP;;;WD)(AU;SA;CR;;;BA)(AU;SA;CR;;;DU)

(OU;CISA;WP;f30e3bbe-9ff0-11d1-b603-0000f80367c1;

bf967aa5-0de6-11d0-a285-00aa003049e2;WD)

(OU;CISA;WP;f30e3bbf-9ff0-11d1-b603-0000f80367c1;

bf967aa5-0de6-11d0-a285-00aa003049e2;WD)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Domain-DNS,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.45"></a>
## 2.45 Class domainPolicy

Defines the Local Security Authority (LSA) policy for one or more domains.

cn: Domain-Policy

ldapDisplayName: domainPolicy

governsId: 1.2.840.113556.1.5.18

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: qualityOfService, pwdProperties, pwdHistoryLength,

publicKeyPolicy, proxyLifetime, minTicketAge, minPwdLength,

minPwdAge, maxTicketAge, maxRenewAge, maxPwdAge, managedBy,

lockoutThreshold, lockoutDuration, lockOutObservationWindow,

ipsecPolicyReference, forceLogoff, eFSPolicy, domainWidePolicy,

domainPolicyReference, domainCAs, defaultLocalPolicyObject,

authenticationOptions

systemPossSuperiors: organizationalUnit, domainDNS, container

schemaIdGuid: bf967a99-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Domain-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.46"></a>
## 2.46 Class domainRelatedObject

Defines an entry that represents a list of fully qualified domain names (FQDN) (see definition (2) for fully qualified domain name in [MS-ADTS](../MS-ADTS/MS-ADTS.md), and also see [[RFC1035]](https://go.microsoft.com/fwlink/?LinkId=90264) section 3.1 and [[RFC2181]](https://go.microsoft.com/fwlink/?LinkId=127732) section 11).

cn: domainRelatedObject

ldapDisplayName: domainRelatedObject

governsId: 0.9.2342.19200300.100.4.17

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: associatedDomain

schemaIdGuid: 8bfd2d3d-efda-4549-852c-f85e137aedc6

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=domainRelatedObject,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.47"></a>
## 2.47 Class dSA

The X.500 base class for dSA.

cn: DSA

ldapDisplayName: dSA

governsId: 2.5.6.13

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationEntity

systemMayContain: knowledgeInformation

systemPossSuperiors: server, computer

schemaIdGuid: 3fdfee52-47f4-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=DSA,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.48"></a>
## 2.48 Class dSUISettings

Stores configuration settings that are used by the Active Directory Users and Computers snap-in.

cn: DS-UI-Settings

ldapDisplayName: dSUISettings

governsId: 1.2.840.113556.1.5.183

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-Non-Security-Group-Extra-Classes,

msDS-Security-Group-Extra-Classes, msDS-FilterContainers,

dSUIShellMaximum, dSUIAdminNotification, dSUIAdminMaximum

systemPossSuperiors: container

schemaIdGuid: 09b10f14-6f93-11d2-9905-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=DS-UI-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.49"></a>
## 2.49 Class dynamicObject

If present in an entry, this class indicates that this entry has a limited lifetime and can disappear automatically when its Time to Live (TTL) reaches 0. If the client has not supplied a value for the entryTtl attribute, the server provides one.

cn: Dynamic-Object

ldapDisplayName: dynamicObject

governsId: 1.3.6.1.4.1.1466.101.119.2

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-Entry-Time-To-Die, entryTTL

schemaIdGuid: 66d51249-3355-4c1f-b24e-81f252aca23b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dynamic-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.50"></a>
## 2.50 Class fileLinkTracking

The container for [fileLinkTrackingEntry](#Section_aeaae7136db242feb45854810712496b) objects.

cn: File-Link-Tracking

ldapDisplayName: fileLinkTracking

governsId: 1.2.840.113556.1.5.52

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: dd712229-10e4-11d0-a05f-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=File-Link-Tracking,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.51"></a>
## 2.51 Class fileLinkTrackingEntry

Holds the GUID and the current machine information for a link-tracked file. GUID is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.

cn: File-Link-Tracking-Entry

ldapDisplayName: fileLinkTrackingEntry

governsId: 1.2.840.113556.1.5.59

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: fileLinkTracking

schemaIdGuid: 8e4eb2ed-4712-11d0-a1a0-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=File-Link-Tracking-Entry,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.52"></a>
## 2.52 Class foreignSecurityPrincipal

Defines an entry that represents a security principal that is external to the forest.

cn: Foreign-Security-Principal

ldapDisplayName: foreignSecurityPrincipal

governsId: 1.2.840.113556.1.5.76

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: objectSid

systemMayContain: foreignIdentifier

systemPossSuperiors: container

schemaIdGuid: 89e31c12-8530-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)(A;;RPLCLORC;;;PS)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a54-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a56-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B2-9455-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B3-9455-11d1-AEBD-0000F80367C1;;PS)(A;;RC;;;AU)

(OA;;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;;AU)

(OA;;RP;77B5B886-944A-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;E45795B3-9455-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;e48d0154-bcf8-11d1-8702-00c04fb96050;;AU)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;WD)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Foreign-Security-Principal,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.53"></a>
## 2.53 Class friendlyCountry

Defines country entries in the directory information tree.

cn: friendlyCountry

ldapDisplayName: friendlyCountry

governsId: 0.9.2342.19200300.100.4.18

objectClassCategory: 1

rdnAttId: cn

subClassOf: country

mustContain: co

schemaIdGuid: c498f152-dc6b-474a-9f52-7cdba3d7d351

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=friendlyCountry,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.54"></a>
## 2.54 Class fTDfs

Defines a single fault-tolerant DFS configuration.

cn: FT-Dfs

ldapDisplayName: fTDfs

governsId: 1.2.840.113556.1.5.43

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: remoteServerName, pKTGuid, pKT

systemMayContain: uNCName, managedBy, keywords

systemPossSuperiors: dfsConfiguration

schemaIdGuid: 8447f9f3-1027-11d0-a05f-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=FT-Dfs,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.55"></a>
## 2.55 Class group

Stores a list of user names. This class is used to apply security principals on resources.

cn: Group

ldapDisplayName: group

governsId: 1.2.840.113556.1.5.8

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

auxiliaryClass: posixGroup

systemAuxiliaryClass: mailRecipient, securityPrincipal

systemMustContain: groupType

mayContain: msSFU30Name, msSFU30NisDomain, msSFU30PosixMember

systemMayContain: msDS-AzApplicationData,

msDS-AzLastImportedBizRulePath, msDS-AzBizRuleLanguage,

msDS-AzBizRule, msDS-AzGenericData, msDS-AzObjectGuid,

primaryGroupToken, operatorCount, nTGroupMembers, nonSecurityMember,

msDS-NonMembers, msDS-AzLDAPQuery, member, managedBy,

groupMembershipSAM, groupAttributes, mail, desktopProfile,

controlAccessRights, adminCount, msDS-PrimaryComputer,

msDS-preferredDataLocation

systemPossSuperiors: msDS-AzScope, msDS-AzApplication,

msDS-AzAdminManager, container, builtinDomain, organizationalUnit,

domainDNS

schemaIdGuid: bf967a9c-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)(A;;RPLCLORC;;;PS)

(OA;;CR;ab721a55-1e2f-11d0-9819-00aa0040529b;;AU)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Group,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.56"></a>
## 2.56 Class groupOfNames

Used to define entries that represent an unordered set of names, which represent individual objects or other groups of names.

cn: Group-Of-Names

ldapDisplayName: groupOfNames

governsId: 2.5.6.9

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

systemMustContain: member, cn

systemMayContain: seeAlso, owner, ou, o, businessCategory

systemPossSuperiors: organizationalUnit, locality, organization,

container

schemaIdGuid: bf967a9d-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Group-Of-Names,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.57"></a>
## 2.57 Class groupOfUniqueNames

Defines the entries for a group of unique names.

cn: groupOfUniqueNames

ldapDisplayName: groupOfUniqueNames

governsId: 2.5.6.17

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: uniqueMember, cn

mayContain: seeAlso, owner, ou, o, description, businessCategory

possSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: 0310a911-93a3-4e21-a7a3-55d85ab2c48b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)(A;;RPLCLORC;;;PS)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=groupOfUniqueNames,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.58"></a>
## 2.58 Class groupPolicyContainer

Represents the Group Policy Object (GPO). This class is used to define Group Policy settings.

cn: Group-Policy-Container

ldapDisplayName: groupPolicyContainer

governsId: 1.2.840.113556.1.5.157

objectClassCategory: 1

rdnAttId: cn

subClassOf: container

systemMayContain: versionNumber, gPCWQLFilter, gPCUserExtensionNames,

gPCMachineExtensionNames, gPCFunctionalityVersion, gPCFileSysPath,

flags

schemaIdGuid: f30e3bc2-9ff0-11d1-b603-0000f80367c1

defaultSecurityDescriptor: D:P(A;CI;RPWPCCDCLCLOLORCWOWDSDDTSW;;;DA)

(A;CI;RPWPCCDCLCLOLORCWOWDSDDTSW;;;EA)

(A;CI;RPWPCCDCLCLOLORCWOWDSDDTSW;;;CO)

(A;CI;RPWPCCDCLCLORCWOWDSDDTSW;;;SY)(A;CI;RPLCLORC;;;AU)

(OA;CI;CR;edacfd8f-ffb3-11d1-b41d-00a0c968f939;;AU)

(A;CI;LCRPLORC;;;ED)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Group-Policy-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.59"></a>
## 2.59 Class ieee802Device

A device that has a media access control (MAC) address.

cn: IEEE802Device

ldapDisplayName: ieee802Device

governsId: 1.3.6.1.1.1.2.11

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: cn, macAddress

schemaIdGuid: a699e529-a637-4b7d-a0fb-5dc466a0b8a7

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=IEEE802Device,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.60"></a>
## 2.60 Class indexServerCatalog

Holds the information for an Index Server catalog.

cn: Index-Server-Catalog

ldapDisplayName: indexServerCatalog

governsId: 1.2.840.113556.1.5.130

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMustContain: creator

systemMayContain: uNCName, queryPoint, indexedScopes, friendlyNames

systemPossSuperiors: organizationalUnit, container

schemaIdGuid: 7bfdcb8a-4807-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Index-Server-Catalog,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.61"></a>
## 2.61 Class inetOrgPerson

Represents people who are associated with an organization.

cn: inetOrgPerson

ldapDisplayName: inetOrgPerson

governsId: 2.16.840.1.113730.3.2.2

objectClassCategory: 1

rdnAttId: cn

subClassOf: user

mayContain: x500uniqueIdentifier, userSMIMECertificate, userPKCS12,

userCertificate, uid, secretary, roomNumber, preferredLanguage,

photo, pager, o, mobile, manager, mail, labeledURI, jpegPhoto,

initials, homePostalAddress, homePhone, givenName, employeeType,

employeeNumber, displayName, departmentNumber, carLicense,

businessCategory, audio

possSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: 4828cc14-1437-45bc-9b07-ad6f015e5f28

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)(A;;RPLCLORC;;;PS)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a54-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a56-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B2-9455-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B3-9455-11d1-AEBD-0000F80367C1;;PS)

(OA;;RP;037088f8-0ae1-11d2-b422-00a0c968f939;;RS)

(OA;;RP;4c164200-20c0-11d0-a768-00aa006e0529;;RS)

(OA;;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;;RS)(A;;RC;;;AU)

(OA;;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;;AU)

(OA;;RP;77B5B886-944A-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;E45795B3-9455-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;e48d0154-bcf8-11d1-8702-00c04fb96050;;AU)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;WD)

(OA;;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;;RS)

(OA;;RPWP;bf967a7f-0de6-11d0-a285-00aa003049e2;;CA)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

(OA;;WPRP;6db69a1c-9422-11d1-aebd-0000f80367c1;;S-1-5-32-561)

(OA;;WPRP;5805bc62-bdc9-4428-a5e2-856a0f4c185e;;S-1-5-32-561)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.62"></a>
## 2.62 Class infrastructureUpdate

Represents the infrastructure master for a domain.

cn: Infrastructure-Update

ldapDisplayName: infrastructureUpdate

governsId: 1.2.840.113556.1.5.175

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: dNReferenceUpdate

systemPossSuperiors: infrastructureUpdate, domain

schemaIdGuid: 2df90d89-009f-11d2-aa4c-00c04fd7d83a

defaultSecurityDescriptor: D:(A;;GA;;;SY)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Infrastructure-Update,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.63"></a>
## 2.63 Class intellimirrorGroup

Remote boot legacy for managing groups of server machines.

cn: Intellimirror-Group

ldapDisplayName: intellimirrorGroup

governsId: 1.2.840.113556.1.5.152

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: 07383086-91df-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;CCDC;;;CO)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Intellimirror-Group,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.64"></a>
## 2.64 Class intellimirrorSCP

Contains configuration information for the service that responds to Remote Boot clients that are requesting attention from a Remote Install Server.

cn: Intellimirror-SCP

ldapDisplayName: intellimirrorSCP

governsId: 1.2.840.113556.1.5.151

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceAdministrationPoint

systemMayContain: netbootTools, netbootServer, netbootNewMachineOU,

netbootNewMachineNamingPolicy, netbootMaxClients,

netbootMachineFilePath, netbootLocallyInstalledOSes,

netbootLimitClients, netbootIntelliMirrorOSes,

netbootCurrentClientCount, netbootAnswerRequests,

netbootAnswerOnlyValidClients, netbootAllowNewClients

systemPossSuperiors: computer, intellimirrorGroup

schemaIdGuid: 07383085-91df-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Intellimirror-SCP,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.65"></a>
## 2.65 Class interSiteTransport

Contains information about the transport used for intersite replication. Objects of this class can contain information about IP or Simple Mail Transfer Protocol (SMTP) transport.

cn: Inter-Site-Transport

ldapDisplayName: interSiteTransport

governsId: 1.2.840.113556.1.5.141

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: transportDLLName, transportAddressAttribute

systemMayContain: replInterval, options

systemPossSuperiors: interSiteTransportContainer

schemaIdGuid: 26d97376-6070-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Inter-Site-Transport,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.66"></a>
## 2.66 Class interSiteTransportContainer

Holds [interSiteTransport](#Section_299e17d34d05445fae8c9d5abf598873) objects.

cn: Inter-Site-Transport-Container

ldapDisplayName: interSiteTransportContainer

governsId: 1.2.840.113556.1.5.140

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: sitesContainer

schemaIdGuid: 26d97375-6070-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Inter-Site-Transport-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.67"></a>
## 2.67 Class ipHost

An abstraction of a host; an IP device.

cn: IpHost

ldapDisplayName: ipHost

governsId: 1.3.6.1.1.1.2.6

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: manager, cn, description, ipHostNumber, uid, l

schemaIdGuid: ab911646-8827-4f95-8780-5a8f008eb68f

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=IpHost,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.68"></a>
## 2.68 Class ipNetwork

An abstraction of a network. The distinguished value of the cn attribute denotes the canonical name of the network.

cn: IpNetwork

ldapDisplayName: ipNetwork

governsId: 1.3.6.1.1.1.2.7

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn, ipNetworkNumber

mayContain: manager, description, ipNetmaskNumber, uid, l,

msSFU30Name, msSFU30NisDomain, nisMapName, msSFU30Aliases

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: d95836c3-143e-43fb-992a-b057f1ecadf9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=IpNetwork,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.69"></a>
## 2.69 Class ipProtocol

An abstraction of an IP protocol.

cn: IpProtocol

ldapDisplayName: ipProtocol

governsId: 1.3.6.1.1.1.2.4

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn, ipProtocolNumber

mayContain: description, msSFU30Name, msSFU30NisDomain, nisMapName,

msSFU30Aliases

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: 9c2dcbd2-fbf0-4dc7-ace0-8356dcd0f013

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=IpProtocol,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.70"></a>
## 2.70 Class ipsecBase

An Internet Protocol security (IPsec) base class from which all IPsec classes are derived.

cn: Ipsec-Base

ldapDisplayName: ipsecBase

governsId: 1.2.840.113556.1.5.7000.56

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMayContain: ipsecOwnersReference, ipsecName, ipsecID,

ipsecDataType, ipsecData

schemaIdGuid: b40ff825-427a-11d1-a9c2-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-Base,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.71"></a>
## 2.71 Class ipsecFilter

A filter expression for applying security.

cn: Ipsec-Filter

ldapDisplayName: ipsecFilter

governsId: 1.2.840.113556.1.5.118

objectClassCategory: 1

rdnAttId: cn

subClassOf: ipsecBase

systemPossSuperiors: organizationalUnit, computer, container

schemaIdGuid: b40ff826-427a-11d1-a9c2-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-Filter,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.72"></a>
## 2.72 Class ipsecISAKMPPolicy

This class is for internal use only.

cn: Ipsec-ISAKMP-Policy

ldapDisplayName: ipsecISAKMPPolicy

governsId: 1.2.840.113556.1.5.120

objectClassCategory: 1

rdnAttId: cn

subClassOf: ipsecBase

systemPossSuperiors: container, computer, organizationalUnit

schemaIdGuid: b40ff828-427a-11d1-a9c2-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-ISAKMP-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.73"></a>
## 2.73 Class ipsecNegotiationPolicy

This class is for internal use only.

cn: Ipsec-Negotiation-Policy

ldapDisplayName: ipsecNegotiationPolicy

governsId: 1.2.840.113556.1.5.119

objectClassCategory: 1

rdnAttId: cn

subClassOf: ipsecBase

systemMayContain: iPSECNegotiationPolicyType,

iPSECNegotiationPolicyAction

systemPossSuperiors: organizationalUnit, computer, container

schemaIdGuid: b40ff827-427a-11d1-a9c2-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-Negotiation-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.74"></a>
## 2.74 Class ipsecNFA

This class is for internal use only.

cn: Ipsec-NFA

ldapDisplayName: ipsecNFA

governsId: 1.2.840.113556.1.5.121

objectClassCategory: 1

rdnAttId: cn

subClassOf: ipsecBase

systemMayContain: ipsecNegotiationPolicyReference,

ipsecFilterReference

systemPossSuperiors: container, computer, organizationalUnit

schemaIdGuid: b40ff829-427a-11d1-a9c2-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-NFA,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.75"></a>
## 2.75 Class ipsecPolicy

This class is for internal use only.

cn: Ipsec-Policy

ldapDisplayName: ipsecPolicy

governsId: 1.2.840.113556.1.5.98

objectClassCategory: 1

rdnAttId: cn

subClassOf: ipsecBase

systemMayContain: ipsecNFAReference, ipsecISAKMPReference

systemPossSuperiors: organizationalUnit, computer, container

schemaIdGuid: b7b13121-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Ipsec-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.76"></a>
## 2.76 Class ipService

An abstraction of an IP service.

cn: IpService

ldapDisplayName: ipService

governsId: 1.3.6.1.1.1.2.3

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: ipServiceProtocol, ipServicePort, cn

mayContain: description, msSFU30Name, msSFU30NisDomain,

msSFU30Aliases, nisMapName

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: 2517fadf-fa97-48ad-9de6-79ac5721f864

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=IpService,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.77"></a>
## 2.77 Class leaf

A base class for leaf objects.

cn: Leaf

ldapDisplayName: leaf

governsId: 1.2.840.113556.1.5.20

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

schemaIdGuid: bf967a9e-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Leaf,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.78"></a>
## 2.78 Class licensingSiteSettings

Points to the licensing server for a site.

cn: Licensing-Site-Settings

ldapDisplayName: licensingSiteSettings

governsId: 1.2.840.113556.1.5.78

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSiteSettings

systemMayContain: siteServer

systemPossSuperiors: site

schemaIdGuid: 1be8f17d-a9ff-11d0-afe2-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Licensing-Site-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.79"></a>
## 2.79 Class linkTrackObjectMoveTable

A container for [linkTrackOMTEntry](#Section_ebc5931047b64a2b9728e1be2219a2e1) objects.

cn: Link-Track-Object-Move-Table

ldapDisplayName: linkTrackObjectMoveTable

governsId: 1.2.840.113556.1.5.91

objectClassCategory: 1

rdnAttId: cn

subClassOf: fileLinkTracking

systemPossSuperiors: fileLinkTracking

schemaIdGuid: ddac0cf5-af8f-11d0-afeb-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Link-Track-Object-Move-Table,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.80"></a>
## 2.80 Class linkTrackOMTEntry

Tracks the link for objects that have moved.

cn: Link-Track-OMT-Entry

ldapDisplayName: linkTrackOMTEntry

governsId: 1.2.840.113556.1.5.93

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: timeRefresh, oMTIndxGuid, oMTGuid, currentLocation,

birthLocation

systemPossSuperiors: linkTrackObjectMoveTable

schemaIdGuid: ddac0cf7-af8f-11d0-afeb-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Link-Track-OMT-Entry,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.81"></a>
## 2.81 Class linkTrackVolEntry

The entry for a link to a file on a volume.

cn: Link-Track-Vol-Entry

ldapDisplayName: linkTrackVolEntry

governsId: 1.2.840.113556.1.5.92

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: volTableIdxGUID, volTableGUID, timeVolChange,

timeRefresh, seqNotification, objectCount, linkTrackSecret,

currMachineId

systemPossSuperiors: linkTrackVolumeTable

schemaIdGuid: ddac0cf6-af8f-11d0-afeb-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Link-Track-Vol-Entry,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.82"></a>
## 2.82 Class linkTrackVolumeTable

A container for [linkTrackVolEntry](#Section_64461075558648219262dbd3927622e3) objects.

cn: Link-Track-Volume-Table

ldapDisplayName: linkTrackVolumeTable

governsId: 1.2.840.113556.1.5.90

objectClassCategory: 1

rdnAttId: cn

subClassOf: fileLinkTracking

systemPossSuperiors: fileLinkTracking

schemaIdGuid: ddac0cf4-af8f-11d0-afeb-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Link-Track-Volume-Table,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.83"></a>
## 2.83 Class locality

Contains a locality, such as a street address, city, and state.

cn: Locality

ldapDisplayName: locality

governsId: 2.5.6.3

objectClassCategory: 1

rdnAttId: l

subClassOf: top

systemMustContain: l

systemMayContain: street, st, seeAlso, searchGuide

systemPossSuperiors: domainDNS, country, organizationalUnit,

organization, locality

schemaIdGuid: bf967aa0-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Locality,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.84"></a>
## 2.84 Class lostAndFound

A special container for orphaned objects.

cn: Lost-And-Found

ldapDisplayName: lostAndFound

governsId: 1.2.840.113556.1.5.139

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: moveTreeState

systemPossSuperiors: configuration, domainDNS, dMD

schemaIdGuid: 52ab8671-5709-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Lost-And-Found,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.85"></a>
## 2.85 Class mailRecipient

Stores email configuration information.

cn: Mail-Recipient

ldapDisplayName: mailRecipient

governsId: 1.2.840.113556.1.3.46

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMustContain: cn

mayContain: msDS-PhoneticDisplayName, userSMIMECertificate,

secretary, msExchLabeledURI, msExchAssistantName, labeledURI,

msDS-GeoCoordinatesAltitude, msDS-GeoCoordinatesLatitude,

msDS-GeoCoordinatesLongitude, msDS-ExternalDirectoryObjectId

systemMayContain: userCertificate, userCert, textEncodedORAddress,

telephoneNumber, showInAddressBook, legacyExchangeDN,

garbageCollPeriod, info

systemPossSuperiors: container

schemaIdGuid: bf967aa1-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Mail-Recipient,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.86"></a>
## 2.86 Class meeting

Stores information for setting up a meeting.

cn: Meeting

ldapDisplayName: meeting

governsId: 1.2.840.113556.1.5.104

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: meetingName

systemMayContain: meetingURL, meetingType, meetingStartTime,

meetingScope, meetingRecurrence, meetingRating, meetingProtocol,

meetingOwner, meetingOriginator, meetingMaxParticipants,

meetingLocation, meetingLanguage, meetingKeyword,

meetingIsEncrypted, meetingIP, meetingID, meetingEndTime,

meetingDescription, meetingContactInfo, meetingBlob,

meetingBandwidth, meetingApplication, meetingAdvertiseScope

systemPossSuperiors: container

schemaIdGuid: 11b6cc94-48c4-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Meeting,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.87"></a>
## 2.87 Class ms-net-ieee-80211-GroupPolicy

This class represents an 802.11 wireless network Group Policy Object and contains identifiers and configuration data relevant to an 802.11 wireless network.

cn: ms-net-ieee-80211-GroupPolicy

lDAPDisplayName: ms-net-ieee-80211-GroupPolicy

governsID: 1.2.840.113556.1.5.251

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemMayContain: ms-net-ieee-80211-GP-PolicyReserved,

ms-net-ieee-80211-GP-PolicyData, ms-net-ieee-80211-GP-PolicyGUID

systemPossSuperiors: computer, container, person

schemaIDGUID: 1cb81863-b822-4379-9ea2-5ff7bdc6386d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-net-ieee-80211-GroupPolicy,

<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.88"></a>
## 2.88 Class ms-net-ieee-8023-GroupPolicy

This class represents an 802.3 wired network GPO and contains identifiers and configuration data that are relevant to an 802.3 wired network.

cn: ms-net-ieee-8023-GroupPolicy

lDAPDisplayName: ms-net-ieee-8023-GroupPolicy

governsID: 1.2.840.113556.1.5.252

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemMayContain: ms-net-ieee-8023-GP-PolicyReserved,

ms-net-ieee-8023-GP-PolicyData, ms-net-ieee-8023-GP-PolicyGUID

systemPossSuperiors: computer, container, person

schemaIDGUID: 99a03a6a-ab19-4446-9350-0cb878ed2d9b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-net-ieee-8023-GroupPolicy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.89"></a>
## 2.89 Class mS-SQL-OLAPCube

Stores Microsoft SQL Server online analytical processing (OLAP) cube properties.

cn: MS-SQL-OLAPCube

ldapDisplayName: mS-SQL-OLAPCube

governsId: 1.2.840.113556.1.5.190

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mS-SQL-Keywords, mS-SQL-PublicationURL,

mS-SQL-InformationURL, mS-SQL-Status, mS-SQL-LastUpdatedDate,

mS-SQL-Size, mS-SQL-Description, mS-SQL-Contact, mS-SQL-Name

systemPossSuperiors: mS-SQL-OLAPDatabase

schemaIdGuid: 09f0506a-cd28-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-OLAPCube,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.90"></a>
## 2.90 Class mS-SQL-OLAPDatabase

A container that stores [mS-SQL-OLAPCube](../mS-SQL-OLAPCube/mS-SQL-OLAPCube.md) objects.

cn: MS-SQL-OLAPDatabase

ldapDisplayName: mS-SQL-OLAPDatabase

governsId: 1.2.840.113556.1.5.189

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mS-SQL-Keywords, mS-SQL-PublicationURL,

mS-SQL-ConnectionURL, mS-SQL-InformationURL, mS-SQL-Status,

mS-SQL-Applications, mS-SQL-LastBackupDate, mS-SQL-LastUpdatedDate,

mS-SQL-Size, mS-SQL-Type, mS-SQL-Description, mS-SQL-Contact,

mS-SQL-Name

systemPossSuperiors: mS-SQL-OLAPServer

schemaIdGuid: 20af031a-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-OLAPDatabase,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.91"></a>
## 2.91 Class mS-SQL-OLAPServer

A container that stores [mS-SQL-OLAPDatabase](../mS-SQL-OLAPDatabase/mS-SQL-OLAPDatabase.md) objects.

cn: MS-SQL-OLAPServer

ldapDisplayName: mS-SQL-OLAPServer

governsId: 1.2.840.113556.1.5.185

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceConnectionPoint

systemMayContain: mS-SQL-Keywords, mS-SQL-PublicationURL,

mS-SQL-InformationURL, mS-SQL-Status, mS-SQL-Language,

mS-SQL-ServiceAccount, mS-SQL-Contact, mS-SQL-RegisteredOwner,

mS-SQL-Build, mS-SQL-Version, mS-SQL-Name

systemPossSuperiors: serviceConnectionPoint

schemaIdGuid: 0c7e18ea-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-OLAPServer,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.92"></a>
## 2.92 Class mS-SQL-SQLDatabase

Stores SQL Server database properties.

cn: MS-SQL-SQLDatabase

ldapDisplayName: mS-SQL-SQLDatabase

governsId: 1.2.840.113556.1.5.188

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mS-SQL-Keywords, mS-SQL-InformationURL,

mS-SQL-Status, mS-SQL-Applications, mS-SQL-LastDiagnosticDate,

mS-SQL-LastBackupDate, mS-SQL-CreationDate, mS-SQL-Size,

mS-SQL-Contact, mS-SQL-Alias, mS-SQL-Description, mS-SQL-Name

systemPossSuperiors: mS-SQL-SQLServer

schemaIdGuid: 1d08694a-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-SQLDatabase,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.93"></a>
## 2.93 Class mS-SQL-SQLPublication

Stores SQL Server publication properties. This class permits the user to browse the publications that are available for subscription.

cn: MS-SQL-SQLPublication

ldapDisplayName: mS-SQL-SQLPublication

governsId: 1.2.840.113556.1.5.187

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mS-SQL-ThirdParty,

mS-SQL-AllowSnapshotFilesFTPDownloading,

mS-SQL-AllowQueuedUpdatingSubscription,

mS-SQL-AllowImmediateUpdatingSubscription,

mS-SQL-AllowKnownPullSubscription, mS-SQL-Publisher,

mS-SQL-AllowAnonymousSubscription, mS-SQL-Database, mS-SQL-Type,

mS-SQL-Status, mS-SQL-Description, mS-SQL-Name

systemPossSuperiors: mS-SQL-SQLServer

schemaIdGuid: 17c2f64e-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-SQLPublication,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.94"></a>
## 2.94 Class mS-SQL-SQLRepository

Stores SQL Server repository properties.

cn: MS-SQL-SQLRepository

ldapDisplayName: mS-SQL-SQLRepository

governsId: 1.2.840.113556.1.5.186

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mS-SQL-InformationDirectory, mS-SQL-Version,

mS-SQL-Description, mS-SQL-Status, mS-SQL-Build, mS-SQL-Contact,

mS-SQL-Name

systemPossSuperiors: mS-SQL-SQLServer

schemaIdGuid: 11d43c5c-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-SQLRepository,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.95"></a>
## 2.95 Class mS-SQL-SQLServer

A container that stores [mS-SQL-SQLDatabase](../mS-SQL-SQLDatabase/mS-SQL-SQLDatabase.md), [mS-SQL-SQLPublication](../mS-SQL-SQLPublication/mS-SQL-SQLPublication.md), and [mS-SQL-SQLRepository](../mS-SQL-SQLRepository/mS-SQL-SQLRepository.md) objects.

cn: MS-SQL-SQLServer

ldapDisplayName: mS-SQL-SQLServer

governsId: 1.2.840.113556.1.5.184

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceConnectionPoint

systemMayContain: mS-SQL-Keywords, mS-SQL-GPSHeight,

mS-SQL-GPSLongitude, mS-SQL-GPSLatitude, mS-SQL-InformationURL,

mS-SQL-LastUpdatedDate, mS-SQL-Status, mS-SQL-Vines,

mS-SQL-AppleTalk, mS-SQL-TCPIP, mS-SQL-SPX, mS-SQL-MultiProtocol,

mS-SQL-NamedPipe, mS-SQL-Clustered, mS-SQL-UnicodeSortOrder,

mS-SQL-SortOrder, mS-SQL-CharacterSet, mS-SQL-ServiceAccount,

mS-SQL-Build, mS-SQL-Memory, mS-SQL-Location, mS-SQL-Contact,

mS-SQL-RegisteredOwner, mS-SQL-Name

systemPossSuperiors: serviceConnectionPoint

schemaIdGuid: 05f6c878-ccef-11d2-9993-0000f87a57d4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MS-SQL-SQLServer,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.96"></a>
## 2.96 Class msAuthz-CentralAccessPolicies

A container of this class can contain Central Access Policy objects.

cn: ms-Authz-Central-Access-Policies

ldapDisplayName: msAuthz-CentralAccessPolicies

governsId: 1.2.840.113556.1.4.2161

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 555c21c3-a136-455a-9397-796bbd358e25

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Authz-Central-Access-Policies,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.97"></a>
## 2.97 Class msAuthz-CentralAccessPolicy

A class that defines Central Access Policy objects.

cn: ms-Authz-Central-Access-Policy

ldapDisplayName: msAuthz-CentralAccessPolicy

governsId: 1.2.840.113556.1.4.2164

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msAuthz-MemberRulesInCentralAccessPolicy,

msAuthz-CentralAccessPolicyID

systemPossSuperiors: msAuthz-CentralAccessPolicies

schemaIdGuid: a5679cb0-6f9d-432c-8b75-1e3e834f02aa

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Authz-Central-Access-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.98"></a>
## 2.98 Class msAuthz-CentralAccessRule

A class that defines central access rules used to construct a central access policy.

cn: ms-Authz-Central-Access-Rule

ldapDisplayName: msAuthz-CentralAccessRule

governsId: 1.2.840.113556.1.4.2163

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msAuthz-ResourceCondition,

msAuthz-MemberRulesInCentralAccessPolicyBL, msAuthz-LastEffectiveSecurityPolicy,

msAuthz-ProposedSecurityPolicy, msAuthz-EffectiveSecurityPolicy, Enabled

systemPossSuperiors: msAuthz-CentralAccessRules

schemaIdGuid: 5b4a06dc-251c-4edb-8813-0bdd71327226

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Authz-Central-Access-Rule,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.99"></a>
## 2.99 Class msAuthz-CentralAccessRules

A container of this class can contain Central Access Policy Entry objects.

cn: ms-Authz-Central-Access-Rules

ldapDisplayName: msAuthz-CentralAccessRules

governsId: 1.2.840.113556.1.4.2162

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 99bb1b7a-606d-4f8b-800e-e15be554ca8d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Authz-Central-Access-Rules,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.100"></a>
## 2.100 Class msCOM-Partition

A namespace that is used by COM+ to allow multiple versions of the same COM+ application to exist on the same physical machine.

cn: ms-COM-Partition

ldapDisplayName: msCOM-Partition

governsId: 1.2.840.113556.1.5.193

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msCOM-ObjectId

systemPossSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: c9010e74-4e58-49f7-8a89-5e3e2340fcf8

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-COM-Partition,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.101"></a>
## 2.101 Class msCOM-PartitionSet

A conceptual collection of COM+ partitions.

cn: ms-COM-PartitionSet

ldapDisplayName: msCOM-PartitionSet

governsId: 1.2.840.113556.1.5.194

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msCOM-PartitionLink, msCOM-DefaultPartitionLink,

msCOM-ObjectId

systemPossSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: 250464ab-c417-497a-975a-9e0d459a7ca1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-COM-PartitionSet,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.102"></a>
## 2.102 Class msDFS-DeletedLinkv2

A DFS link in the DFS namespace.

cn: ms-DFS-Deleted-Link-v2

ldapDisplayName: msDFS-DeletedLinkv2

governsId: 1.2.840.113556.1.5.260

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDFS-NamespaceIdentityGUIDv2,

msDFS-LinkIdentityGUIDv2, msDFS-LastModifiedv2, msDFS-LinkPathv2

systemMayContain: msDFS-Commentv2, msDFS-ShortNameLinkPathv2

systemPossSuperiors: msDFS-Namespacev2

schemaIdGuid: 25173408-04ca-40e8-865e-3f9ce9bf1bd3

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFS-Deleted-Link-v2,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.103"></a>
## 2.103 Class msDFS-Linkv2

A DFS link in the DFS namespace.

cn: ms-DFS-Link-v2

ldapDisplayName: msDFS-Linkv2

governsId: 1.2.840.113556.1.5.259

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDFS-GenerationGUIDv2,

msDFS-NamespaceIdentityGUIDv2, msDFS-LinkIdentityGUIDv2,

msDFS-LastModifiedv2, msDFS-Ttlv2, msDFS-TargetListv2,

msDFS-Propertiesv2, msDFS-LinkPathv2

systemMayContain: msDFS-Commentv2, msDFS-LinkSecurityDescriptorv2,

msDFS-ShortNameLinkPathv2

systemPossSuperiors: msDFS-Namespacev2

schemaIdGuid: 7769fb7a-1159-4e96-9ccd-68bc487073eb

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFS-Link-v2,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.104"></a>
## 2.104 Class msDFS-NamespaceAnchor

A DFS namespace anchor.

cn: ms-DFS-Namespace-Anchor

ldapDisplayName: msDFS-NamespaceAnchor

governsId: 1.2.840.113556.1.5.257

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDFS-SchemaMajorVersion

systemPossSuperiors: dfsConfiguration

schemaIdGuid: da73a085-6e64-4d61-b064-015d04164795

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFS-Namespace-Anchor,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.105"></a>
## 2.105 Class msDFS-Namespacev2

A DFS namespace.

cn: ms-DFS-Namespace-v2

ldapDisplayName: msDFS-Namespacev2

governsId: 1.2.840.113556.1.5.258

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDFS-SchemaMajorVersion,

msDFS-SchemaMinorVersion, msDFS-GenerationGUIDv2,

msDFS-NamespaceIdentityGUIDv2, msDFS-LastModifiedv2, msDFS-Ttlv2,

msDFS-TargetListv2, msDFS-Propertiesv2

systemMayContain: msDFS-Commentv2

systemPossSuperiors: msDFS-NamespaceAnchor

schemaIdGuid: 21cb8628-f3c3-4bbf-bff6-060b2d8f299a

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFS-Namespace-v2,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.106"></a>
## 2.106 Class msDFSR-Connection

A directional connection between two members.

cn: ms-DFSR-Connection

ldapDisplayName: msDFSR-Connection

governsId: 1.2.840.113556.1.6.13.4.10

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: fromServer

mayContain: msDFSR-Options2, msDFSR-DisablePacketPrivacy,

msDFSR-Priority, msDFSR-Enabled, msDFSR-RdcEnabled,

msDFSR-RdcMinFileSizeInKb, msDFSR-Keywords, msDFSR-Schedule,

msDFSR-Flags, msDFSR-Options, msDFSR-Extension

possSuperiors: msDFSR-Member

schemaIdGuid: e58f972e-64b5-46ef-8d8b-bbc3e1897eab

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Connection,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.107"></a>
## 2.107 Class msDFSR-Content

A container for [msDFSR-ContentSet](#Section_1137785be2204f64b8d88536dafd589d) objects.

cn: ms-DFSR-Content

ldapDisplayName: msDFSR-Content

governsId: 1.2.840.113556.1.6.13.4.6

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDFSR-Options2, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: msDFSR-ReplicationGroup

schemaIdGuid: 64759b35-d3a1-42e4-b5f1-a3de162109b3

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Content,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.108"></a>
## 2.108 Class msDFSR-ContentSet

A Distributed File System Replication (DFSR) content set.

cn: ms-DFSR-ContentSet

ldapDisplayName: msDFSR-ContentSet

governsId: 1.2.840.113556.1.6.13.4.7

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDFSR-Options2, msDFSR-OnDemandExclusionDirectoryFilter,

msDFSR-OnDemandExclusionFileFilter,

msDFSR-DefaultCompressionExclusionFilter, msDFSR-DeletedSizeInMb,

msDFSR-Priority, msDFSR-ConflictSizeInMb, msDFSR-StagingSizeInMb,

msDFSR-RootSizeInMb, description, msDFSR-DfsPath, msDFSR-FileFilter,

msDFSR-DirectoryFilter, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: msDFSR-Content

schemaIdGuid: 4937f40d-a6dc-4d48-97ca-06e5fbfd3f16

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-ContentSet,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.109"></a>
## 2.109 Class msDFSR-GlobalSettings

The global settings that are applicable to all replication group members.

cn: ms-DFSR-GlobalSettings

ldapDisplayName: msDFSR-GlobalSettings

governsId: 1.2.840.113556.1.6.13.4.4

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDFSR-Options2, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: container

schemaIdGuid: 7b35dbad-b3ec-486a-aad4-2fec9d6ea6f6

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-GlobalSettings,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.110"></a>
## 2.110 Class msDFSR-LocalSettings

The DFSR settings that are applicable to a local computer.

cn: ms-DFSR-LocalSettings

ldapDisplayName: msDFSR-LocalSettings

governsId: 1.2.840.113556.1.6.13.4.1

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDFSR-StagingCleanupTriggerInPercent,

msDFSR-CommonStagingSizeInMb, msDFSR-CommonStagingPath,

msDFSR-Options2, msDFSR-Version, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: computer

schemaIdGuid: fa85c591-197f-477e-83bd-ea5a43df2239

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-LocalSettings,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.111"></a>
## 2.111 Class msDFSR-Member

A replication group member.

cn: ms-DFSR-Member

ldapDisplayName: msDFSR-Member

governsId: 1.2.840.113556.1.6.13.4.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: msDFSR-ComputerReference

mayContain: msDFSR-Options2, serverReference, msDFSR-Keywords,

msDFSR-Flags, msDFSR-Options, msDFSR-Extension

possSuperiors: msDFSR-Topology

schemaIdGuid: 4229c897-c211-437c-a5ae-dbf705b696e5

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Member,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.112"></a>
## 2.112 Class msDFSR-ReplicationGroup

A replication group container.

cn: ms-DFSR-ReplicationGroup

ldapDisplayName: msDFSR-ReplicationGroup

governsId: 1.2.840.113556.1.6.13.4.5

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: msDFSR-ReplicationGroupType

mayContain: msDFSR-Options2, msDFSR-OnDemandExclusionDirectoryFilter,

msDFSR-OnDemandExclusionFileFilter,

msDFSR-DefaultCompressionExclusionFilter, msDFSR-DeletedSizeInMb,

msDFSR-DirectoryFilter, msDFSR-FileFilter, msDFSR-ConflictSizeInMb,

msDFSR-StagingSizeInMb, msDFSR-RootSizeInMb, description,

msDFSR-TombstoneExpiryInMin, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension, msDFSR-Schedule, msDFSR-Version

possSuperiors: msDFSR-GlobalSettings

schemaIdGuid: 1c332fe0-0c2a-4f32-afca-23c5e45a9e77

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-ReplicationGroup,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.113"></a>
## 2.113 Class msDFSR-Subscriber

Represents local computer membership of a replication group.

cn: ms-DFSR-Subscriber

ldapDisplayName: msDFSR-Subscriber

governsId: 1.2.840.113556.1.6.13.4.2

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: msDFSR-MemberReference, msDFSR-ReplicationGroupGuid

mayContain: msDFSR-Options2, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: msDFSR-LocalSettings

schemaIdGuid: e11505d7-92c4-43e7-bf5c-295832ffc896

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Subscriber,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.114"></a>
## 2.114 Class msDFSR-Subscription

Represents local computer participation of a content set.

cn: ms-DFSR-Subscription

ldapDisplayName: msDFSR-Subscription

governsId: 1.2.840.113556.1.6.13.4.3

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: msDFSR-ContentSetGuid, msDFSR-ReplicationGroupGuid

mayContain: msDFSR-StagingCleanupTriggerInPercent, msDFSR-Options2,

msDFSR-OnDemandExclusionDirectoryFilter,

msDFSR-OnDemandExclusionFileFilter, msDFSR-MaxAgeInCacheInMin,

msDFSR-MinDurationCacheInMin, msDFSR-CachePolicy, msDFSR-ReadOnly,

msDFSR-DeletedSizeInMb, msDFSR-DeletedPath, msDFSR-RootPath,

msDFSR-RootSizeInMb, msDFSR-StagingPath, msDFSR-StagingSizeInMb,

msDFSR-ConflictPath, msDFSR-ConflictSizeInMb, msDFSR-Enabled,

msDFSR-RootFence, msDFSR-DfsLinkTarget, msDFSR-Flags,

msDFSR-Options, msDFSR-Extension

possSuperiors: msDFSR-Subscriber

schemaIdGuid: 67212414-7bcc-4609-87e0-088dad8abdee

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Subscription,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.115"></a>
## 2.115 Class msDFSR-Topology

A container for objects that form the replication topology.

cn: ms-DFSR-Topology

ldapDisplayName: msDFSR-Topology

governsId: 1.2.840.113556.1.6.13.4.8

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDFSR-Options2, msDFSR-Flags, msDFSR-Options,

msDFSR-Extension

possSuperiors: msDFSR-ReplicationGroup

schemaIdGuid: 04828aa9-6e42-4e80-b962-e2fe00754d17

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DFSR-Topology,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.116"></a>
## 2.116 Class msDNS-ServerSettings

Stores state information for DNS. The msDNS-KeymasterZones attribute is used to store values.

cn: ms-DNS-Server-Settings

ldapDisplayName: msDNS-ServerSettings

governsId: 1.2.840.113556.1.4.2129

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDNS-KeymasterZones

systemPossSuperiors: server

schemaIdGuid: ef2fc3ed-6e18-415b-99e4-3114a8cb124b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DNS-Server-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.117"></a>
## 2.117 Class msDS-App-Configuration

Stores the settings information for an application. The msDS-Settings attribute is used to store the actual values.

cn: ms-DS-App-Configuration

ldapDisplayName: msDS-App-Configuration

governsId: 1.2.840.113556.1.5.220

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

mayContain: owner, msDS-ObjectReference, msDS-Integer, msDS-DateTime,

msDS-ByteArray, managedBy, keywords

possSuperiors: organizationalUnit, computer, container

schemaIdGuid: 90df3c3e-1854-4455-a5d7-cad40d56657a

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-App-Configuration,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.118"></a>
## 2.118 Class msDS-AppData

Stores data that is used by an object. For example, stores profile information for a user object.

cn: ms-DS-App-Data

ldapDisplayName: msDS-AppData

governsId: 1.2.840.113556.1.5.241

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

mayContain: owner, msDS-ObjectReference, msDS-Integer, msDS-DateTime,

msDS-ByteArray, managedBy, keywords

possSuperiors: organizationalUnit, computer, container

schemaIdGuid: 9e67d761-e327-4d55-bc95-682f875e2f8e

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-App-Data,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.119"></a>
## 2.119 Class msDS-AuthNPolicies

A container of this class can contain authentication policy objects.

cn: ms-DS-AuthN-Policies

ldapDisplayName: msDS-AuthNPolicies

governsId: 1.2.840.113556.1.5.293

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 3a9adf5d-7b97-4f7e-abb4-e5b55c1c06b4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-AuthN-Policies,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2 operating system.

<a id="Section_2.120"></a>
## 2.120 Class msDS-AuthNPolicy

An instance of this class defines authentication policy behaviors for assigned principals.

cn: ms-DS-AuthN-Policy

ldapDisplayName: msDS-AuthNPolicy

governsId: 1.2.840.113556.1.5.294

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-UserAllowedToAuthenticateTo,

msDS-UserAllowedToAuthenticateFrom, msDS-UserTGTLifetime,

msDS-ComputerAllowedToAuthenticateTo, msDS-ComputerTGTLifetime,

msDS-ServiceAllowedToAuthenticateTo, msDS-ServiceAllowedToAuthenticateFrom,

msDS-ServiceTGTLifetime, msDS-UserAuthNPolicyBL, msDS-ComputerAuthNPolicyBL,

msDS-ServiceAuthNPolicyBL, msDS-AssignedAuthNPolicyBL,

msDS-AuthNPolicyEnforced, msDS-UserAllowedNTLMNetworkAuthentication,

msDS-ServiceAllowedNTLMNetworkAuthentication, msDS-StrongNTLMPolicy

systemPossSuperiors: msDS-AuthNPolicies

schemaIdGuid: ab6a1156-4dc7-40f5-9180-8e4ce42fe5cd

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-AuthN-Policy,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.121"></a>
## 2.121 Class msDS-AuthNPolicySilo

An instance of this class defines authentication policies and related behaviors for assigned users, computers, and services.

cn: ms-DS-AuthN-Policy-Silo

ldapDisplayName: msDS-AuthNPolicySilo

governsId: 1.2.840.113556.1.5.292

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: msDS-AuthNPolicySilos

systemMayContain: msDS-AuthNPolicySiloMembers, msDS-UserAuthNPolicy,

msDS-ComputerAuthNPolicy, msDS-ServiceAuthNPolicy,

msDS-AssignedAuthNPolicySiloBL, msDS-AuthNPolicySiloEnforced

schemaIdGuid: f9f0461e-697d-4689-9299-37e61d617b0d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-AuthN-Policy-Silo,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.122"></a>
## 2.122 Class msDS-AuthNPolicySilos

A container of this class can contain authentication policy silo objects.

cn: ms-DS-AuthN-Policy-Silos

ldapDisplayName: msDS-AuthNPolicySilos

governsId: 1.2.840.113556.1.5.291

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: d2b1470a-8f84-491e-a752-b401ee00fe5c

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-AuthN-Policy-Silos,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.123"></a>
## 2.123 Class msDS-AzAdminManager

The root of an authorization policy store instance.

cn: ms-DS-Az-Admin-Manager

ldapDisplayName: msDS-AzAdminManager

governsId: 1.2.840.113556.1.5.234

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzMinorVersion, msDS-AzMajorVersion, msDS-AzApplicationData,

msDS-AzGenerateAudits, msDS-AzScriptTimeout,

msDS-AzScriptEngineCacheMax, msDS-AzDomainTimeout, description

systemPossSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: cfee1051-5f28-4bae-a863-5d0cc18a8ed1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Admin-Manager,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.124"></a>
## 2.124 Class msDS-AzApplication

Defines an installed instance of an application that is bound to a particular policy store.

cn: ms-DS-Az-Application

ldapDisplayName: msDS-AzApplication

governsId: 1.2.840.113556.1.5.235

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzApplicationData, msDS-AzGenerateAudits,

msDS-AzApplicationVersion, msDS-AzClassId, msDS-AzApplicationName,

description

systemPossSuperiors: msDS-AzAdminManager

schemaIdGuid: ddf8de9b-cba5-4e12-842e-28d8b66f75ec

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Application,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.125"></a>
## 2.125 Class msDS-AzOperation

Describes a particular operation that is supported by an application.

cn: ms-DS-Az-Operation

ldapDisplayName: msDS-AzOperation

governsId: 1.2.840.113556.1.5.236

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-AzOperationID

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzApplicationData, description

systemPossSuperiors: container, msDS-AzApplication

schemaIdGuid: 860abe37-9a9b-4fa4-b3d2-b8ace5df9ec5

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Operation,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.126"></a>
## 2.126 Class msDS-AzRole

Defines a set of operations that can be performed by a particular set of users within a particular scope.

cn: ms-DS-Az-Role

ldapDisplayName: msDS-AzRole

governsId: 1.2.840.113556.1.5.239

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzApplicationData, msDS-TasksForAzRole,

msDS-OperationsForAzRole, msDS-MembersForAzRole, description

systemPossSuperiors: container, msDS-AzScope, msDS-AzApplication

schemaIdGuid: 8213eac9-9d55-44dc-925c-e9a52b927644

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Role,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.127"></a>
## 2.127 Class msDS-AzScope

Describes a set of objects that are managed by an application.

cn: ms-DS-Az-Scope

ldapDisplayName: msDS-AzScope

governsId: 1.2.840.113556.1.5.237

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-AzScopeName

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzApplicationData, description

systemPossSuperiors: msDS-AzApplication

schemaIdGuid: 4feae054-ce55-47bb-860e-5b12063a51de

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Scope,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.128"></a>
## 2.128 Class msDS-AzTask

Describes a set of operations.

cn: ms-DS-Az-Task

ldapDisplayName: msDS-AzTask

governsId: 1.2.840.113556.1.5.238

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-TasksForAzTask, msDS-OperationsForAzTask,

msDS-AzApplicationData, msDS-AzTaskIsRoleDefinition,

msDS-AzLastImportedBizRulePath, msDS-AzBizRuleLanguage,

msDS-AzBizRule, description

systemPossSuperiors: container, msDS-AzScope, msDS-AzApplication

schemaIdGuid: 1ed3a473-9b1b-418a-bfa0-3a37b95a5306

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Task,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.129"></a>
## 2.129 Class msDS-ClaimsTransformationPolicies

An object of this class holds the one set of claims transformation policies for cross-forest claims transformation.

cn: ms-DS-Claims-Transformation-Policies

ldapDisplayName: msDS-ClaimsTransformationPolicies

governsId: 1.2.840.113556.1.5.281

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: c8fca9b1-7d88-bb4f-827a-448927710762

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Claims-Transformation-Policies,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.130"></a>
## 2.130 Class msDS-ClaimsTransformationPolicyType

An object of this class holds the one set of claims transformation policies for cross-forest claims transformation.

cn: ms-DS-Claims-Transformation-Policy-Type

ldapDisplayName: msDS-ClaimsTransformationPolicyType

governsId: 1.2.840.113556.1.5.280

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-TransformationRulesCompiled, msDS-TransformationRules

systemPossSuperiors: msDS-ClaimsTransformationPolicies

schemaIdGuid: 2eeb62b3-1373-fe45-8101-387f1676edc7

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Claims-Transformation-Policy-Type,

<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.131"></a>
## 2.131 Class msDS-ClaimType

An instance of this class holds the definition of a claim type that can be defined on security principals.

cn: ms-DS-Claim-Type

ldapDisplayName: msDS-ClaimType

governsId: 1.2.840.113556.1.5.272

objectClassCategory: 1

rdnAttId: cn

subClassOf: msDS-ClaimTypePropertyBase

systemMayContain: msDS-ClaimIsSingleValued, msDS-ClaimIsValueSpaceRestricted,

msDS-ClaimValueType, msDS-ClaimSourceType, msDS-ClaimSource,

msDS-ClaimTypeAppliesToClass, msDS-ClaimAttributeSource

systemPossSuperiors: msDS-ClaimTypes

schemaIdGuid: 81a3857c-5469-4d8f-aae6-c27699762604

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Claim-Type,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.132"></a>
## 2.132 Class msDS-ClaimTypePropertyBase

An abstract class that defines the base class for claim type or resource property classes.

cn: ms-DS-Claim-Type-Property-Base

ldapDisplayName: msDS-ClaimTypePropertyBase

governsId: 1.2.840.113556.1.5.269

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-ClaimSharesPossibleValuesWith, Enabled,

msDS-ClaimPossibleValues

schemaIdGuid: b8442f58-c490-4487-8a9d-d80b883271ad

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Claim-Type-Property-Base,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.133"></a>
## 2.133 Class msDS-ClaimTypes

A container of this class can contain claim type objects.

cn: ms-DS-Claim-Types

ldapDisplayName: msDS-ClaimTypes

governsId: 1.2.840.113556.1.5.270

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 36093235-c715-4821-ab6a-b56fb2805a58

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Claim-Types,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.134"></a>
## 2.134 Class msDS-CloudExtensions

A collection of attributes that contains application-specific strings for cloud scenarios.

cn: ms-DS-Cloud-Extensions

ldapDisplayName: msDS-CloudExtensions

governsId: 1.2.840.113556.1.5.283

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

MayContain: msDS-cloudExtensionAttribute1, msDS-cloudExtensionAttribute2,

msDS-cloudExtensionAttribute3, msDS-cloudExtensionAttribute4,

msDS-cloudExtensionAttribute5, msDS-cloudExtensionAttribute6,

msDS-cloudExtensionAttribute7, msDS-cloudExtensionAttribute8,

msDS-cloudExtensionAttribute9, msDS-cloudExtensionAttribute10,

msDS-cloudExtensionAttribute11, msDS-cloudExtensionAttribute12,

msDS-cloudExtensionAttribute13, msDS-cloudExtensionAttribute14,

msDS-cloudExtensionAttribute15, msDS-cloudExtensionAttribute16,

msDS-cloudExtensionAttribute17, msDS-cloudExtensionAttribute18,

msDS-cloudExtensionAttribute19, msDS-cloudExtensionAttribute20

schemaIdGuid: 641e87a4-8326-4771-ba2d-c706df35e35a

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Cloud-Extensions,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.135"></a>
## 2.135 Class msDS-DelegatedManagedServiceAccount

The delegated managed service account class is used to create an account which can supersede a legacy service account and can be shared by different computers.

cn: ms-DS-Delegated-Managed-Service-Account

ldapDisplayName: msDS-DelegatedManagedServiceAccount

governsId: 1.2.840.113556.1.5.302

objectClassCategory: 1

rdnAttId: cn

subClassOf: computer

systemMustContain: msDS-ManagedPasswordInterval, msDS-DelegatedMSAState

systemMayContain: msDS-GroupMSAMembership, msDS-ManagedPasswordPreviousId,

msDS-ManagedPasswordId, msDS-ManagedPassword, msDS-ManagedAccountPrecededByLink;

systemPossSuperiors: container, organizationalUnit

schemaIdGuid: 0feb936f-47b3-49f2-9386-1dedc2c23765

defaultSecurityDescriptor: D:(OD;;CR;00299570-246d-11d0-a768-00aa006e0529;;WD)(OD;;RP;e362ed86-b728-0842-b27d-2dea7a9df218;;WD)(OA;;WP;5f202010-79a5-11d0-9020-00c04fc2d4cf;bf967a86-0de6-11d0-a285-00aa003049e2;CO)(OA;;WP;bf967950-0de6-11d0-a285-00aa003049e2;bf967a86-0de6-11d0-a285-00aa003049e2;CO)(OA;;WP;bf967953-0de6-11d0-a285-00aa003049e2;bf967a86-0de6-11d0-a285-00aa003049e2;CO)(OA;;WP;3e0abfd0-126a-11d0-a060-00aa006c33ed;bf967a86-0de6-11d0-a285-00aa003049e2;CO)(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;CO)(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;PS)(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;CO)(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;PS)(OA;;WP;4c164200-20c0-11d0-a768-00aa006e0529;;CO)(OA;;RPWP;77b5b886-944a-11d1-aebd-0000f80367c1;;PS)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;DA)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;AO)(A;;LCRPDTLOCRSDRC;;;CO)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;SY)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Delegated-Managed-Service-Account,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2025 operating system.

<a id="Section_2.136"></a>
## 2.136 Class msDS-Device

This class represents a registered device.

cn: ms-DS-Device

ldapDisplayName: msDS-Device

governsId: 1.2.840.113556.1.5.286

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemMustContain: altSecurityIdentities, displayName, msDS-DeviceID,

msDS-IsEnabled

systemMayContain: msDS-ApproximateLastLogonTimeStamp, msDS-CloudAnchor,

msDS-CloudIsManaged, msDS-DeviceObjectVersion, msDS-DeviceOSType,

msDS-DeviceOSVersion, msDS-DevicePhysicalIDs, msDS-IsManaged,

msDS-RegisteredOwner, msDS-RegisteredUsers, msDS-DeviceMDMStatus,

msDS-IsCompliant, msDS-DeviceTrustType, msDS-ComputerSID, msDS-KeyCredentialLink

systemPossSuperiors: msDS-DeviceContainer

schemaIdGuid: 5df2b673-6d41-4774-b3e8-d52e8ee9ff99

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-Device,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.137"></a>
## 2.137 Class msDS-DeviceContainer

The container used to hold device objects.

cn: ms-DS-Device-Container

ldapDisplayName: msDS-DeviceContainer

governsId: 1.2.840.113556.1.5.289

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemPossSuperiors: domainDNS

schemaIdGuid: 7c9e8c58-901b-4ea8-b6ec-4eb9e9fc0e11

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-Device-Container,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.138"></a>
## 2.138 Class msDS-DeviceRegistrationService

This class holds the registration service configuration that is used for devices.

cn: ms-DS-Device-Registration-Service

ldapDisplayName: msDS-DeviceRegistrationService

governsId: 1.2.840.113556.1.5.284

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemMustContain: msDS-DeviceLocation, msDS-IsEnabled

systemMayContain: msDS-CloudIsEnabled, msDS-CloudIssuerPublicCertificates,

msDS-IssuerCertificates, msDS-IssuerPublicCertificates,

msDS-MaximumRegistrationInactivityPeriod, msDS-RegistrationQuota

systemPossSuperiors: msDS-DeviceRegistrationServiceContainer

schemaIdGuid: 96bc3a1a-e3d2-49d3-af11-7b0df79d67f5

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-Device-Registration-Service,<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.139"></a>
## 2.139 Class msDS-DeviceRegistrationServiceContainer

The container used to house all enrollment services used for device registrations.

cn: ms-DS-Device-Registration-Service-Container

ldapDisplayName: msDS-DeviceRegistrationServiceContainer

governsId: 1.2.840.113556.1.5.287

objectClassCategory: 1

rDNAttID: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 310b55ce-3dcd-4392-a96d-c9e35397c24f

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

defaultObjectCategory: CN=ms-DS-Device-Registration-Service-Container,

<SchemaNCDN>

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.140"></a>
## 2.140 Class msDS-GroupManagedServiceAccount

The group managed service account class is used to create an account that can be shared by different computers in order to run Windows services.

cn: ms-DS-Group-Managed-Service-Account

ldapDisplayName: msDS-GroupManagedServiceAccount

governsId: 1.2.840.113556.1.5.282

objectClassCategory: 1

rdnAttId: cn

subClassOf: computer

systemMustContain: msDS-ManagedPasswordInterval

systemMayContain: msDS-GroupMSAMembership, msDS-ManagedPasswordPreviousId,

msDS-ManagedPasswordId, msDS-ManagedPassword

systemPossSuperiors: container, organizationalUnit, domainDNS

schemaIdGuid: 7b8b558a-93a5-4af7-adca-c017e67f1057

defaultSecurityDescriptor: D:

(OD;;CR;00299570-246d-11d0-a768-00aa006e0529;;WD)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCRLCLORCSDDT;;;CO)

(OA;;WP;4c164200-20c0-11d0-a768-00aa006e0529;;CO)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;CO)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;CO)

(OA;;WP;3e0abfd0-126a-11d0-a060-00aa006c33ed;bf967a86-0de6-11d0-a285-

00aa003049e2;CO)(OA;;WP;5f202010-79a5-11d0-9020-00c04fc2d4cf;bf967a86-

0de6-11d0-a285-00aa003049e2;CO)(OA;;WP;bf967950-0de6-11d0-a285-

00aa003049e2;bf967a86-0de6-11d0-a285-00aa003049e2;CO)(OA;;WP;bf967953-

0de6-11d0-a285-00aa003049e2;bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;PS)(A;;RPLCLORC;;;AU)

(OA;;RPWP;bf967a7f-0de6-11d0-a285-00aa003049e2;;CA)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

(OA;;RP;e362ed86-b728-0842-b27d-2dea7a9df218;;WD)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Group-Managed-Service-Account,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.141"></a>
## 2.141 Class msDS-KeyCredential

An instance of this class contains key material.

cn: ms-DS-Key-Credential

ldapDisplayName: msDS-KeyCredential

governsId: 1.2.840.113556.1.5.297

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-KeyId

systemMayContain: msDS-KeyMaterial, msDS-KeyUsage, msDS-KeyPrincipal, msDS-DeviceDN,

msDS-ComputerSID, msDS-CustomKeyInformation, msDS-KeyApproximateLastLogonTimeStamp,

msDS-DeviceID

systemPossSuperiors: Container

schemaIdGuid: ee1f5543-7c2e-476a-8b3f-e11f4af6c498

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Key-Credential,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2016.

<a id="Section_2.142"></a>
## 2.142 Class msDS-ManagedServiceAccount

The service account class is used to create accounts that are used for running Windows services.

cn: ms-DS-Managed-Service-Account

ldapDisplayName: msDS-ManagedServiceAccount

governsId: 1.2.840.113556.1.5.264

objectClassCategory: 1

rdnAttId: cn

subClassOf: computer

systemPossSuperiors: domainDNS, organizationalUnit, container

schemaIdGuid: ce206244-5827-4a86-ba1c-1c0c386c1b64

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCRLCLORCSDDT;;;CO)

(OA;;WP;4c164200-20c0-11d0-a768-00aa006e0529;;CO)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;CO)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;CO)

(OA;;WP;3e0abfd0-126a-11d0-a060-00aa006c33ed;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;bf967950-0de6-11d0-a285-00aa003049e2;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;WP;bf967953-0de6-11d0-a285-00aa003049e2;

bf967a86-0de6-11d0-a285-00aa003049e2;CO)

(OA;;SW;f3a64788-5306-11d1-a9c5-0000f80367c1;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;SW;72e39547-7b18-11d1-adef-00c04fd8d5cd;;PS)(A;;RPLCLORC;;;AU)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;WD)

(OA;;RPWP;bf967a7f-0de6-11d0-a285-00aa003049e2;;CA)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

(OA;;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;;ED)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Managed-Service-Account,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.143"></a>
## 2.143 Class msDS-OptionalFeature

The configuration object for an optional feature.

cn: ms-DS-Optional-Feature

ldapDisplayName: msDS-OptionalFeature

governsId: 1.2.840.113556.1.5.265

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-OptionalFeatureFlags,

msDS-OptionalFeatureGUID

systemMayContain: msDS-RequiredDomainBehaviorVersion,

msDS-RequiredForestBehaviorVersion

systemPossSuperiors: container

schemaIdGuid: 44f00041-35af-468b-b20a-6ce8737c580b

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;EA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=ms-DS-Optional-Feature,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.144"></a>
## 2.144 Class msDS-PasswordSettings

The password settings object for accounts.

cn: ms-DS-Password-Settings

ldapDisplayName: msDS-PasswordSettings

governsId: 1.2.840.113556.1.5.255

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-MaximumPasswordAge, msDS-MinimumPasswordAge,

msDS-MinimumPasswordLength, msDS-PasswordComplexityEnabled,

msDS-LockoutObservationWindow, msDS-LockoutDuration,

msDS-LockoutThreshold, msDS-PasswordReversibleEncryptionEnabled,

msDS-PasswordSettingsPrecedence, msDS-PasswordHistoryLength

systemMayContain: msDS-PSOAppliesTo

systemPossSuperiors: msDS-PasswordSettingsContainer

schemaIdGuid: 3bcd9db8-f84b-451c-952f-6c52b81f9ec6

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Password-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.145"></a>
## 2.145 Class msDS-PasswordSettingsContainer

A container for password settings objects.

cn: ms-DS-Password-Settings-Container

ldapDisplayName: msDS-PasswordSettingsContainer

governsId: 1.2.840.113556.1.5.256

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 5b06b06a-4cf3-44c0-bd16-43bc10a987da

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Password-Settings-Container,

<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.146"></a>
## 2.146 Class msDS-QuotaContainer

A special container that holds all quota specifications for the directory database.

cn: ms-DS-Quota-Container

ldapDisplayName: msDS-QuotaContainer

governsId: 1.2.840.113556.1.5.242

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: msDS-TopQuotaUsage, msDS-QuotaUsed,

msDS-QuotaEffective, msDS-TombstoneQuotaFactor, msDS-DefaultQuota

systemPossSuperiors: configuration, domainDNS

schemaIdGuid: da83fc4f-076f-4aea-b4dc-8f4dab9b5993

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPLCLORC;;;BA)(OA;;CR;4ecc03fe-ffc0-4947-b630-eb672a8a9dbc;;WD)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Quota-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.147"></a>
## 2.147 Class msDS-QuotaControl

Represents quota specifications for the directory database.

cn: ms-DS-Quota-Control

ldapDisplayName: msDS-QuotaControl

governsId: 1.2.840.113556.1.5.243

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-QuotaAmount, msDS-QuotaTrustee, cn

systemPossSuperiors: msDS-QuotaContainer

schemaIdGuid: de91fc26-bd02-4b52-ae26-795999e96fc7

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPLCLORC;;;BA)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Quota-Control,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.148"></a>
## 2.148 Class msDS-ResourceProperties

A container of this class can contain resource properties.

cn: ms-DS-Resource-Properties

ldapDisplayName: msDS-ResourceProperties

governsId: 1.2.840.113556.1.5.271

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: 7a4a4584-b350-478f-acd6-b4b852d82cc0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Resource-Properties,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.149"></a>
## 2.149 Class msDS-ResourceProperty

An instance of this class holds the definition of a property of resources.

cn: ms-DS-Resource-Property

ldapDisplayName: msDS-ResourceProperty

governsId: 1.2.840.113556.1.5.273

objectClassCategory: 1

rdnAttId: cn

subClassOf: msDS-ClaimTypePropertyBase

systemMustContain: msDS-ValueTypeReference

systemMayContain: msDS-AppliesToResourceTypes,

msDS-IsUsedAsResourceSecurityAttribute

systemPossSuperiors: msDS-ResourceProperties

schemaIdGuid: 5b283d5e-8404-4195-9339-8450188c501a

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Resource-Property,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.150"></a>
## 2.150 Class msDS-ResourcePropertyList

An object of this class contains a list of resource properties.

cn: ms-DS-Resource-Property-List

ldapDisplayName: msDS-ResourcePropertyList

governsId: 1.2.840.113556.1.5.274

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-MembersOfResourcePropertyList

systemPossSuperiors: container

schemaIdGuid: 72e3d47a-b342-4d45-8f56-baff803cabf9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Resource-Property-List,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

The **defaultHidingValue** attribute is set to TRUE in new domains running Windows Server 2012.

<a id="Section_2.151"></a>
## 2.151 Class msDS-ShadowPrincipal

This class represents a principal from an external forest.

cn: ms-DS-Shadow-Principal

ldapDisplayName: msDS-ShadowPrincipal

governsId: 1.2.840.113556.1.5.299

objectClassCategory: 1

rdnAttId: cn

schemaIdGuid: 770f4cb3-1643-469c-b766-edd77aa75e14

defaultHidingValue: FALSE

showInAdvancedViewOnly: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Shadow-Principal,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

subClassOf: top

systemPossSuperiors: msDS-ShadowPrincipalContainer

systemMayContain: member

systemMustContain: msDS-ShadowPrincipalSid

Version-Specific Behavior: First implemented on Windows Server 2016.

<a id="Section_2.152"></a>
## 2.152 Class msDS-ShadowPrincipalContainer

This class is the dedicated container for msDS-ShadowPrincipal objects.

cn: ms-DS-Shadow-Principal-Container

ldapDisplayName: msDS-ShadowPrincipalContainer

governsId: 1.2.840.113556.1.5.298

objectClassCategory: 1

rdnAttId: cn

schemaIdGuid: 11f95545-d712-4c50-b847-d2781537c633

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

showInAdvancedViewOnly: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Shadow-Principal-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

subClassOf: container

Version-Specific Behavior: First implemented on Windows Server 2016.

<a id="Section_2.153"></a>
## 2.153 Class msDS-ValueType

A value-type object holds value-type information for a resource property.

cn: ms-DS-Value-Type

ldapDisplayName: msDS-ValueType

governsId: 1.2.840.113556.1.5.279

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-IsPossibleValuesPresent, msDS-ClaimIsSingleValued,

msDS-ClaimIsValueSpaceRestricted, msDS-ClaimValueType

systemPossSuperiors: container

schemaIdGuid: e3c27fdf-b01d-4f4e-87e7-056eef0eb922

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Value-Type,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.154"></a>
## 2.154 Class msExchConfigurationContainer

Stores configuration information for a Microsoft Exchange Server.

cn: ms-Exch-Configuration-Container

ldapDisplayName: msExchConfigurationContainer

governsId: 1.2.840.113556.1.5.176

objectClassCategory: 1

rdnAttId: cn

subClassOf: container

systemMayContain: templateRoots, addressBookRoots, globalAddressList,

templateRoots2, addressBookRoots2, globalAddressList2

schemaIdGuid: d03d6858-06f4-11d2-aa53-00c04fd7d83a

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Exch-Configuration-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.155"></a>
## 2.155 Class msFVE-RecoveryInformation

Contains a full-volume encryption recovery password with its associated GUID.

cn: ms-FVE-RecoveryInformation

ldapDisplayName: msFVE-RecoveryInformation

governsId: 1.2.840.113556.1.5.253

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msFVE-RecoveryPassword, msFVE-RecoveryGuid

mayContain: msFVE-KeyPackage, msFVE-VolumeGuid

systemPossSuperiors: computer

schemaIdGuid: ea715d30-8f53-40d0-bd1e-6109186d782c

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-FVE-RecoveryInformation,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.156"></a>
## 2.156 Class msieee80211-Policy

Stores a Wireless Network Policy object.

cn: ms-ieee-80211-Policy

ldapDisplayName: msieee80211-Policy

governsId: 1.2.840.113556.1.5.240

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msieee80211-ID, msieee80211-DataType,

msieee80211-Data

systemPossSuperiors: organizationalUnit, container, computer

schemaIdGuid: 7b9a2d92-b7eb-4382-9772-c3e0f9baaf94

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-ieee-80211-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.157"></a>
## 2.157 Class msImaging-PostScanProcess

The container for all Business Scan Post Scan Process objects.

cn: ms-Imaging-PostScanProcess

ldapDisplayName: msImaging-PostScanProcess

governsId: 1.2.840.113556.1.5.263

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msImaging-PSPString, serverName

systemMustContain: displayName, msImaging-PSPIdentifier

systemPossSuperiors: msImaging-PSPs

schemaIdGuid: 1f7c257c-b8a3-4525-82f8-11ccc7bee36e

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Imaging-PostScanProcess,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.158"></a>
## 2.158 Class msImaging-PSPs

The container for all Business Scan Post Scan Process objects.

cn: ms-Imaging-PSPs

ldapDisplayName: msImaging-PSPs

governsId: 1.2.840.113556.1.5.262

objectClassCategory: 1

rdnAttId: cn

subClassOf: container

systemPossSuperiors: container

schemaIdGuid: a0ed2ac1-970c-4777-848e-ec63a0ec44fc

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Imaging-PSPs,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.159"></a>
## 2.159 Class msKds-ProvRootKey

Root keys for the Group Key Distribution Service.

cn: ms-Kds-Prov-RootKey

ldapDisplayName: msKds-ProvRootKey

governsId: 1.2.840.113556.1.5.278

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msKds-CreateTime, msKds-RootKeyData,

msKds-PrivateKeyLength, msKds-PublicKeyLength,

msKds-SecretAgreementAlgorithmID, msKds-KDFAlgorithmID,

msKds-UseStartTime, msKds-DomainID, msKds-Version, cn

systemMayContain: msKds-SecretAgreementParam, msKds-KDFParam

systemPossSuperiors: container

schemaIdGuid: aa02fd41-17e0-4f18-8687-b2239649736b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Kds-Prov-RootKey,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.160"></a>
## 2.160 Class msKds-ProvServerConfiguration

Configuration for the Group Key Distribution Service.

cn: ms-Kds-Prov-ServerConfiguration

ldapDisplayName: msKds-ProvServerConfiguration

governsId: 1.2.840.113556.1.5.277

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msKds-Version

systemMayContain: msKds-PrivateKeyLength, msKds-PublicKeyLength,

msKds-SecretAgreementParam, msKds-SecretAgreementAlgorithmID,

msKds-KDFParam, msKds-KDFAlgorithmID

systemPossSuperiors: container

schemaIdGuid: 5ef243a8-2a25-45a6-8b73-08a71ae677ce

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;EA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Kds-Prov-ServerConfiguration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.161"></a>
## 2.161 Class msMQ-Custom-Recipient

Defines a custom Microsoft Message Queuing (MSMQ) recipient; that is, an alias queue. This class defines an alias for an out-of-enterprise queue and contains the format name of that queue.

cn: MSMQ-Custom-Recipient

ldapDisplayName: msMQ-Custom-Recipient

governsId: 1.2.840.113556.1.5.218

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msMQ-Recipient-FormatName

systemPossSuperiors: organizationalUnit, domainDNS, container

schemaIdGuid: 876d6817-35cc-436c-acea-5ef7174dd9be

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Custom-Recipient,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.162"></a>
## 2.162 Class msMQ-Group

Defines a group of MSMQ queues; that is, a distribution list.

cn: MSMQ-Group

ldapDisplayName: msMQ-Group

governsId: 1.2.840.113556.1.5.219

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: member

systemPossSuperiors: organizationalUnit

schemaIdGuid: 46b27aac-aafa-4ffb-b773-e5bf621ee87b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Group,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.163"></a>
## 2.163 Class mSMQConfiguration

An object that contains MSMQ configuration parameters for a specific computer. The attributes of this class are MSMQ-specific and are used for MSMQ routing decisions.

cn: MSMQ-Configuration

ldapDisplayName: mSMQConfiguration

governsId: 1.2.840.113556.1.5.162

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mSMQSites, mSMQSignKey, mSMQServiceType,

mSMQRoutingServices, mSMQQuota, mSMQOwnerID, mSMQOutRoutingServers,

mSMQOSType, mSMQJournalQuota, mSMQInRoutingServers, mSMQForeign,

mSMQEncryptKey, mSMQDsServices, mSMQDependentClientServices,

mSMQComputerTypeEx, mSMQComputerType

systemPossSuperiors: computer

schemaIdGuid: 9a0dc344-c100-11d1-bbc5-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Configuration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.164"></a>
## 2.164 Class mSMQEnterpriseSettings

An object that has general MSMQ information. This object is placed under \configuration\Services and contains organization-wide configuration information for Message Queuing. A forest can have only one of these objects.

cn: MSMQ-Enterprise-Settings

ldapDisplayName: mSMQEnterpriseSettings

governsId: 1.2.840.113556.1.5.163

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mSMQVersion, mSMQNameStyle, mSMQLongLived,

mSMQInterval2, mSMQInterval1, mSMQCSPName

systemPossSuperiors: container

schemaIdGuid: 9a0dc345-c100-11d1-bbc5-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Enterprise-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.165"></a>
## 2.165 Class mSMQMigratedUser

An object that is associated with a migrated user. MSMQ 1.0 used a proprietary directory service that contained specific user information. As part of MSMQ integration with the Windows 2000 operating system directory service, MSMQ provides a migration tool. During migration, for each user that is not in the Windows 2000 domain, a migrated user is created.

cn: MSMQ-Migrated-User

ldapDisplayName: mSMQMigratedUser

governsId: 1.2.840.113556.1.5.179

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mSMQUserSid, mSMQSignCertificatesMig,

mSMQSignCertificates, mSMQDigestsMig, mSMQDigests, objectSid

systemPossSuperiors: organizationalUnit, domainDNS, builtinDomain

schemaIdGuid: 50776997-3c3d-11d2-90cc-00c04fd91ab1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Migrated-User,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.166"></a>
## 2.166 Class mSMQQueue

A queue that is associated with a specific computer and is placed under the MSMQ-Configuration of that computer. MSMQ users create queues according to their requirements by using the Microsoft Management Console (MMC) or the MSMQ API. There is no limit to the number of queues per computer.

cn: MSMQ-Queue

ldapDisplayName: mSMQQueue

governsId: 1.2.840.113556.1.5.161

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mSMQTransactional, MSMQ-SecuredSource,

mSMQQueueType, mSMQQueueQuota, mSMQQueueNameExt,

mSMQQueueJournalQuota, mSMQPrivacyLevel, mSMQOwnerID,

MSMQ-MulticastAddress, mSMQLabelEx, mSMQLabel, mSMQJournal,

mSMQBasePriority, mSMQAuthenticate

systemPossSuperiors: mSMQConfiguration

schemaIdGuid: 9a0dc343-c100-11d1-bbc5-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Queue,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.167"></a>
## 2.167 Class mSMQSettings

An object that enables fast query of MSMQ servers at a specific site. This object holds information such as Message Queuing services, which the server provides.

cn: MSMQ-Settings

ldapDisplayName: mSMQSettings

governsId: 1.2.840.113556.1.5.165

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mSMQSiteNameEx, mSMQSiteName, mSMQServices,

mSMQRoutingService, mSMQQMID, mSMQOwnerID, mSMQNt4Flags,

mSMQMigrated, mSMQDsService, mSMQDependentClientService

systemPossSuperiors: server

schemaIdGuid: 9a0dc347-c100-11d1-bbc5-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.168"></a>
## 2.168 Class mSMQSiteLink

Contains information about MSMQ routing connectivity between sites. This object is created for each routing link and contains connectivity information. An object of this type is contained by an MSMQ Services object.

cn: MSMQ-Site-Link

ldapDisplayName: mSMQSiteLink

governsId: 1.2.840.113556.1.5.164

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: mSMQSite2, mSMQSite1, mSMQCost

systemMayContain: mSMQSiteGatesMig, mSMQSiteGates

systemPossSuperiors: mSMQEnterpriseSettings

schemaIdGuid: 9a0dc346-c100-11d1-bbc5-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=MSMQ-Site-Link,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.169"></a>
## 2.169 Class msPKI-Enterprise-Oid

The value that is used when a certificate user interface (UI) displays a friendly name for a certificate template, enhanced key usage, application policy, and issuance policy. The UI component tries to locate a string in the attribute that matches the default language locale.

cn: ms-PKI-Enterprise-Oid

ldapDisplayName: msPKI-Enterprise-Oid

governsId: 1.2.840.113556.1.5.196

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-OIDToGroupLink, msPKI-OID-User-Notice,

msPKI-OIDLocalizedName, msPKI-OID-CPS, msPKI-OID-Attribute,

msPKI-Cert-Template-OID

systemPossSuperiors: msPKI-Enterprise-Oid, container

schemaIdGuid: 37cfd85c-6719-4ad8-8f9e-8678ba627563

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-PKI-Enterprise-Oid,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.170"></a>
## 2.170 Class msPKI-Key-Recovery-Agent

An object that is associated with a key recovery agent (KRA) instance. One KRA object instance is created for each installed Cert Server (with a unique common name) during Cert Server setup. If two certificate authorities (CAs) are given the same common name during CA setup, they share a single KRA object instance.

cn: ms-PKI-Key-Recovery-Agent

ldapDisplayName: msPKI-Key-Recovery-Agent

governsId: 1.2.840.113556.1.5.195

objectClassCategory: 1

rdnAttId: cn

subClassOf: user

systemPossSuperiors: container

schemaIdGuid: 26ccf238-a08e-4b86-9a82-a8c9ac7ee5cb

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-PKI-Key-Recovery-Agent,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.171"></a>
## 2.171 Class msPKI-PrivateKeyRecoveryAgent

Publishes the KRA certificate in the KRA container.

cn: ms-PKI-Private-Key-Recovery-Agent

ldapDisplayName: msPKI-PrivateKeyRecoveryAgent

governsId: 1.2.840.113556.1.5.223

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: userCertificate

systemPossSuperiors: container

schemaIdGuid: 1562a632-44b9-4a7e-a2d3-e426c96a3acc

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-PKI-Private-Key-Recovery-Agent,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.172"></a>
## 2.172 Class msPrint-ConnectionPolicy

Contains the printer connection policy.

cn: ms-Print-ConnectionPolicy

ldapDisplayName: msPrint-ConnectionPolicy

governsId: 1.2.840.113556.1.6.23.2

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn

mayContain: printerName, printAttributes, serverName, uNCName

possSuperiors: container

schemaIdGuid: a16f33c7-7fd6-4828-9364-435138fda08d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-Print-ConnectionPolicy,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.173"></a>
## 2.173 Class msSFU30DomainInfo

Represents an internal data structure that is used by the server for Network Information Service (NIS).

cn: msSFU-30-Domain-Info

ldapDisplayName: msSFU30DomainInfo

governsId: 1.2.840.113556.1.6.18.2.215

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msSFU30Domains, msSFU30YpServers, msSFU30SearchContainer,

msSFU30IsValidContainer, msSFU30MasterServerName,

msSFU30OrderNumber, msSFU30MaxGidNumber, msSFU30MaxUidNumber,

msSFU30CryptMethod

possSuperiors: container

schemaIdGuid: 36297dce-656b-4423-ab65-dabb2770819e

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=msSFU-30-Domain-Info,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.174"></a>
## 2.174 Class msSFU30MailAliases

Represents email file data for Windows Services for UNIX.

cn: msSFU-30-Mail-Aliases

ldapDisplayName: msSFU30MailAliases

governsId: 1.2.840.113556.1.6.18.2.211

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msSFU30Name, msSFU30NisDomain, msSFU30Aliases, nisMapName

possSuperiors: domainDNS, nisMap, container

schemaIdGuid: d6710785-86ff-44b7-85b5-f1f8689522ce

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=msSFU-30-Mail-Aliases,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.175"></a>
## 2.175 Class msSFU30NetId

Stores the network ID.

cn: msSFU-30-Net-Id

ldapDisplayName: msSFU30NetId

governsId: 1.2.840.113556.1.6.18.2.212

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msSFU30KeyValues, msSFU30Name, msSFU30NisDomain,

nisMapName

possSuperiors: domainDNS, nisMap, container

schemaIdGuid: e263192c-2a02-48df-9792-94f2328781a0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=msSFU-30-Net-Id,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.176"></a>
## 2.176 Class msSFU30NetworkUser

Represents network file data.

cn: msSFU-30-Network-User

ldapDisplayName: msSFU30NetworkUser

governsId: 1.2.840.113556.1.6.18.2.216

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msSFU30KeyValues, msSFU30Name, msSFU30NisDomain,

nisMapName

possSuperiors: domainDNS, nisMap, container

schemaIdGuid: e15334a3-0bf0-4427-b672-11f5d84acc92

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=msSFU-30-Network-User,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.177"></a>
## 2.177 Class msSFU30NISMapConfig

Represents an internal data structure that is used by the server for NIS.

cn: msSFU-30-NIS-Map-Config

ldapDisplayName: msSFU30NISMapConfig

governsId: 1.2.840.113556.1.6.18.2.217

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msSFU30KeyAttributes, msSFU30FieldSeparator,

msSFU30NSMAPFieldPosition, msSFU30IntraFieldSeparator,

msSFU30SearchAttributes, msSFU30ResultAttributes, msSFU30MapFilter

possSuperiors: container

schemaIdGuid: faf733d0-f8eb-4dcf-8d75-f1753af6a50b

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=msSFU-30-NIS-Map-Config,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.178"></a>
## 2.178 Class msSPP-ActivationObject

An activation object used in Active Directory Domain Services-based activation.

cn: ms-SPP-Activation-Object

ldapDisplayName: msSPP-ActivationObject

governsId: 1.2.840.113556.1.5.267

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msSPP-KMSIds, msSPP-CSVLKSkuId,

msSPP-CSVLKPartialProductKey, msSPP-CSVLKPid

systemMayContain: msSPP-IssuanceLicense, msSPP-ConfigLicense,

msSPP-PhoneLicense, msSPP-OnlineLicense, msSPP-ConfirmationId,

msSPP-InstallationId

systemPossSuperiors: msSPP-ActivationObjectsContainer

schemaIdGuid: 51a0e68c-0dc5-43ca-935d-c1c911bf2ee5

defaultSecurityDescriptor: O:BAG:BAD: (A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-SPP-Activation-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.179"></a>
## 2.179 Class msSPP-ActivationObjectsContainer

A container for activation objects used by Active Directory Domain Services-based activation.

cn: ms-SPP-Activation-Objects-Container

ldapDisplayName: msSPP-ActivationObjectsContainer

governsId: 1.2.840.113556.1.5.266

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: container

schemaIdGuid: b72f862b-bb25-4d5d-aa51-62c59bdf90ae

defaultSecurityDescriptor: O:BAG:BAD: (A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-SPP-Activation-Objects-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.180"></a>
## 2.180 Class msTAPI-RtConference

Publishes a real-time Telephony API (TAPI) multicast conference.

cn: ms-TAPI-Rt-Conference

ldapDisplayName: msTAPI-RtConference

governsId: 1.2.840.113556.1.5.221

objectClassCategory: 1

rdnAttId: msTAPI-uid

subClassOf: top

systemMustContain: msTAPI-uid

systemMayContain: msTAPI-ConferenceBlob, msTAPI-ProtocolId

systemPossSuperiors: organizationalUnit

schemaIdGuid: ca7b9735-4b2a-4e49-89c3-99025334dc94

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-TAPI-Rt-Conference,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.181"></a>
## 2.181 Class msTAPI-RtPerson

Maps a user to the IP address of the machine that the user is logged on to for use by TAPI multicast conferences.

cn: ms-TAPI-Rt-Person

ldapDisplayName: msTAPI-RtPerson

governsId: 1.2.840.113556.1.5.222

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msTAPI-uid, msTAPI-IpAddress

systemPossSuperiors: organization, organizationalUnit

schemaIdGuid: 53ea1cb5-b704-4df9-818f-5cb4ec86cac1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-TAPI-Rt-Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.182"></a>
## 2.182 Class msTPM-InformationObject

This class contains recovery information for a Trusted Platform Module (TPM) device.

cn: ms-TPM-Information-Object

ldapDisplayName: msTPM-InformationObject

governsId: 1.2.840.113556.1.5.275

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msTPM-OwnerInformation

systemMayContain: msTPM-OwnerInformationTemp, msTPM-SrkPubThumbprint

systemPossSuperiors: msTPM-InformationObjectsContainer

schemaIdGuid: 85045b6a-47a6-4243-a7cc-6890701f662c

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLO;;;DC)(A;;WP;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-TPM-Information-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.183"></a>
## 2.183 Class msTPM-InformationObjectsContainer

A container for Trusted Platform Module (TPM) objects.

cn: ms-TPM-Information-Objects-Container

ldapDisplayName: msTPM-InformationObjectsContainer

governsId: 1.2.840.113556.1.5.276

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemPossSuperiors: domainDNS, domain

schemaIdGuid: e027a8bd-6456-45de-90a3-38593877ee74

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;LOLCCCRP;;;DC)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-TPM-Information-Objects-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2012.

<a id="Section_2.184"></a>
## 2.184 Class msWMI-IntRangeParam

An object for a signed integer range parameter.

cn: ms-WMI-IntRangeParam

ldapDisplayName: msWMI-IntRangeParam

governsId: 1.2.840.113556.1.5.205

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-IntDefault

systemMayContain: msWMI-IntMax, msWMI-IntMin

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 50ca5d7d-5c8b-4ef3-b9df-5b66d491e526

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-IntRangeParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.185"></a>
## 2.185 Class msWMI-IntSetParam

An object for a signed integer set parameter.

cn: ms-WMI-IntSetParam

ldapDisplayName: msWMI-IntSetParam

governsId: 1.2.840.113556.1.5.206

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-IntDefault

systemMayContain: msWMI-IntValidValues

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 292f0d9a-cf76-42b0-841f-b650f331df62

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-IntSetParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.186"></a>
## 2.186 Class msWMI-MergeablePolicyTemplate

Provides a policy template that can be merged with other templates.

cn: ms-WMI-MergeablePolicyTemplate

ldapDisplayName: msWMI-MergeablePolicyTemplate

governsId: 1.2.840.113556.1.5.202

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-PolicyTemplate

systemPossSuperiors: container

schemaIdGuid: 07502414-fdca-4851-b04a-13645b11d226

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-MergeablePolicyTemplate,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.187"></a>
## 2.187 Class msWMI-ObjectEncoding

Holds encoding data for a Windows Managment Instrumentation (WMI) class or instance object and also holds other information about the object.

cn: ms-WMI-ObjectEncoding

ldapDisplayName: msWMI-ObjectEncoding

governsId: 1.2.840.113556.1.5.217

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-Class, msWMI-ScopeGuid, msWMI-Parm1,

msWMI-Parm2, msWMI-Parm3, msWMI-Parm4, msWMI-Genus, msWMI-intFlags1,

msWMI-intFlags2, msWMI-intFlags3, msWMI-intFlags4, msWMI-ID,

msWMI-TargetObject

systemPossSuperiors: container

schemaIdGuid: 55dd81c9-c312-41f9-a84d-c6adbdf1e8e1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-ObjectEncoding,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.188"></a>
## 2.188 Class msWMI-PolicyTemplate

Provides a template for creating a class instance in the target namespace.

cn: ms-WMI-PolicyTemplate

ldapDisplayName: msWMI-PolicyTemplate

governsId: 1.2.840.113556.1.5.200

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-NormalizedClass, msWMI-TargetPath,

msWMI-TargetClass, msWMI-TargetNameSpace, msWMI-Name, msWMI-ID

systemMayContain: msWMI-TargetType, msWMI-SourceOrganization,

msWMI-Parm4, msWMI-Parm3, msWMI-Parm2, msWMI-Parm1, msWMI-intFlags4,

msWMI-intFlags3, msWMI-intFlags2, msWMI-intFlags1,

msWMI-CreationDate, msWMI-ChangeDate, msWMI-Author

systemPossSuperiors: container

schemaIdGuid: e2bc80f1-244a-4d59-acc6-ca5c4f82e6e1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSW;;;DA)(A;;CC;;;PA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-PolicyTemplate,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.189"></a>
## 2.189 Class msWMI-PolicyType

Communicates schema for WMI policy objects.

cn: ms-WMI-PolicyType

ldapDisplayName: msWMI-PolicyType

governsId: 1.2.840.113556.1.5.211

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-TargetObject, msWMI-ID

systemMayContain: msWMI-SourceOrganization, msWMI-Parm4,

msWMI-Parm3, msWMI-Parm2, msWMI-Parm1, msWMI-intFlags4,

msWMI-intFlags3, msWMI-intFlags2, msWMI-intFlags1,

msWMI-CreationDate, msWMI-ChangeDate, msWMI-Author

systemPossSuperiors: container

schemaIdGuid: 595b2613-4109-4e77-9013-a3bb4ef277c7

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSW;;;DA)(A;;CC;;;PA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-PolicyType,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.190"></a>
## 2.190 Class msWMI-RangeParam

The range parameter class that is the basis of the [msWMI-PolicyTemplate](#Section_5d4206d3f5404f5d85566388c8402a5c) class. This class describes one target property that can be merged. Each subclass of this class implements a specific type. This class implements a merge method to support merging and implements a resolve method to generate the final target property.

cn: ms-WMI-RangeParam

ldapDisplayName: msWMI-RangeParam

governsId: 1.2.840.113556.1.5.203

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-TargetType, msWMI-TargetClass,

msWMI-PropertyName

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 45fb5a57-5018-4d0f-9056-997c8c9122d9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-RangeParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.191"></a>
## 2.191 Class msWMI-RealRangeParam

An object for a real number range parameter.

cn: ms-WMI-RealRangeParam

ldapDisplayName: msWMI-RealRangeParam

governsId: 1.2.840.113556.1.5.209

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-Int8Default

systemMayContain: msWMI-Int8Max, msWMI-Int8Min

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 6afe8fe2-70bc-4cce-b166-a96f7359c514

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-RealRangeParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.192"></a>
## 2.192 Class msWMI-Rule

Defines a single rule in a scope of management (SOM).

cn: ms-WMI-Rule

ldapDisplayName: msWMI-Rule

governsId: 1.2.840.113556.1.5.214

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-QueryLanguage, msWMI-TargetNameSpace,

msWMI-Query

systemPossSuperiors: msWMI-Som, container

schemaIdGuid: 3c7e6f83-dd0e-481b-a0c2-74cd96ef2a66

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-Rule,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.193"></a>
## 2.193 Class msWMI-ShadowObject

Holds a WMI-compiled object instance.

cn: ms-WMI-ShadowObject

ldapDisplayName: msWMI-ShadowObject

governsId: 1.2.840.113556.1.5.212

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-TargetObject

systemPossSuperiors: msWMI-PolicyType

schemaIdGuid: f1e44bdf-8dd3-4235-9c86-f91f31f5b569

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-ShadowObject,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.194"></a>
## 2.194 Class msWMI-SimplePolicyTemplate

Provides a type of template that cannot be merged. This class is used when the target object is not intended to be combined; that is, merged.

cn: ms-WMI-SimplePolicyTemplate

ldapDisplayName: msWMI-SimplePolicyTemplate

governsId: 1.2.840.113556.1.5.201

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-PolicyTemplate

systemMustContain: msWMI-TargetObject

systemPossSuperiors: container

schemaIdGuid: 6cc8b2b5-12df-44f6-8307-e74f5cdee369

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-SimplePolicyTemplate,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.195"></a>
## 2.195 Class msWMI-Som

Refines the SOM for a GPO. Adds a list of rules, expressed as WMI Query Language (WQL) queries, that are executed on the target machine. All queries have to return results in order for this SOM to be applicable to the target.

cn: ms-WMI-Som

ldapDisplayName: msWMI-Som

governsId: 1.2.840.113556.1.5.213

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-Name, msWMI-ID

systemMayContain: msWMI-SourceOrganization, msWMI-Parm4, msWMI-Parm3,

msWMI-Parm2, msWMI-Parm1, msWMI-intFlags4, msWMI-intFlags3,

msWMI-intFlags2, msWMI-intFlags1, msWMI-CreationDate,

msWMI-ChangeDate, msWMI-Author

systemPossSuperiors: container

schemaIdGuid: ab857078-0142-4406-945b-34c9b6b13372

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSW;;;DA)(A;;CC;;;PA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-Som,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.196"></a>
## 2.196 Class msWMI-StringSetParam

An object for a string set parameter.

cn: ms-WMI-StringSetParam

ldapDisplayName: msWMI-StringSetParam

governsId: 1.2.840.113556.1.5.210

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-StringDefault

systemMayContain: msWMI-StringValidValues

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 0bc579a2-1da7-4cea-b699-807f3b9d63a4

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-StringSetParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.197"></a>
## 2.197 Class msWMI-UintRangeParam

An object for an unsigned integer range parameter.

cn: ms-WMI-UintRangeParam

ldapDisplayName: msWMI-UintRangeParam

governsId: 1.2.840.113556.1.5.207

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-IntDefault

systemMayContain: msWMI-IntMax, msWMI-IntMin

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: d9a799b2-cef3-48b3-b5ad-fb85f8dd3214

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-UintRangeParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.198"></a>
## 2.198 Class msWMI-UintSetParam

An object for an unsigned integer set parameter.

cn: ms-WMI-UintSetParam

ldapDisplayName: msWMI-UintSetParam

governsId: 1.2.840.113556.1.5.208

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-IntDefault

systemMayContain: msWMI-IntValidValues

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: 8f4beb31-4e19-46f5-932e-5fa03c339b1d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPCCDCLCLODTRC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-UintSetParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.199"></a>
## 2.199 Class msWMI-UnknownRangeParam

Supports parameter types that are unknown. They are transported as compiled WMI objects.

cn: ms-WMI-UnknownRangeParam

ldapDisplayName: msWMI-UnknownRangeParam

governsId: 1.2.840.113556.1.5.204

objectClassCategory: 1

rdnAttId: cn

subClassOf: msWMI-RangeParam

systemMustContain: msWMI-TargetObject, msWMI-NormalizedClass

systemPossSuperiors: msWMI-MergeablePolicyTemplate

schemaIdGuid: b82ac26b-c6db-4098-92c6-49c18a3336e1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-UnknownRangeParam,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.200"></a>
## 2.200 Class msWMI-WMIGPO

Ties the objects that express the WMI extensions to the Group Policy infrastructure. This value is written to Active Directory in the path pointed to by the corresponding Group Policy Object.

cn: ms-WMI-WMIGPO

ldapDisplayName: msWMI-WMIGPO

governsId: 1.2.840.113556.1.5.215

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msWMI-TargetClass

systemMayContain: msWMI-Parm4, msWMI-Parm3, msWMI-Parm2, msWMI-Parm1,

msWMI-intFlags4, msWMI-intFlags3, msWMI-intFlags2, msWMI-intFlags1

systemPossSuperiors: container

schemaIdGuid: 05630000-3927-4ede-bf27-ca91f275c26f

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSW;;;DA)(A;;CC;;;PA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-WMI-WMIGPO,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.201"></a>
## 2.201 Class nisMap

A generic abstraction of a Network Information Service (NIS) map.

cn: NisMap

ldapDisplayName: nisMap

governsId: 1.3.6.1.1.1.2.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn, nisMapName

mayContain: description

possSuperiors: domainDNS, container, organizationalUnit

schemaIdGuid: 7672666c-02c1-4f33-9ecf-f649c1dd9b7c

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NisMap,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.202"></a>
## 2.202 Class nisNetgroup

An abstraction of a netgroup. This class can refer to other netgroups.

cn: NisNetgroup

ldapDisplayName: nisNetgroup

governsId: 1.3.6.1.1.1.2.8

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn

mayContain: description, memberNisNetgroup, nisNetgroupTriple,

msSFU30Name, msSFU30NisDomain, nisMapName,

msSFU30NetgroupHostAtDomain, msSFU30NetgroupUserAtDomain

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: 72efbf84-6e7b-4a5c-a8db-8a75a7cad254

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NisNetgroup,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.203"></a>
## 2.203 Class nisObject

An entry in an NIS map.

cn: NisObject

ldapDisplayName: nisObject

governsId: 1.3.6.1.1.1.2.10

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn, nisMapName, nisMapEntry

mayContain: description, msSFU30Name, msSFU30NisDomain

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: 904f8a93-4954-4c5f-b1e1-53c097a31e13

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NisObject,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.204"></a>
## 2.204 Class nTDSConnection

A connection from a remote domain controller.

cn: NTDS-Connection

ldapDisplayName: nTDSConnection

governsId: 1.2.840.113556.1.5.71

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMustContain: options, fromServer, enabledConnection

systemMayContain: transportType, schedule, mS-DS-ReplicatesNCReason,

generatedConnection

systemPossSuperiors: nTFRSMember, nTFRSReplicaSet, nTDSDSA

schemaIdGuid: 19195a60-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Connection,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.205"></a>
## 2.205 Class nTDSDSA

Represents the AD DS and Active Directory directory service agent (DSA) process on the server.

cn: NTDS-DSA

ldapDisplayName: nTDSDSA

governsId: 1.2.840.113556.1.5.7000.47

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

systemMayContain: msDS-EnabledFeature, msDS-IsUserCachableAtRodc, msDS-SiteName,

msDS-isRODC, msDS-isGC, msDS-RevealedUsers,

msDS-NeverRevealGroup, msDS-RevealOnDemandGroup,

msDS-hasFullReplicaNCs, serverReference,

msDS-RetiredReplNCSignatures, retiredReplDSASignatures,

queryPolicyObject, options, networkAddress, msDS-ReplicationEpoch,

msDS-HasInstantiatedNCs, msDS-hasMasterNCs, msDS-HasDomainNCs,

msDS-Behavior-Version, managedBy, lastBackupRestorationTime,

invocationId, hasPartialReplicaNCs, hasMasterNCs, fRSRootPath,

dMDLocation

systemPossSuperiors: organization, server

schemaIdGuid: f0f8ffab-1191-11d0-a060-00aa006c33ed

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=NTDS-DSA,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.206"></a>
## 2.206 Class nTDSDSARO

A subclass of the DSA, which is distinguished by its reduced privilege level.

cn: NTDS-DSA-RO

ldapDisplayName: nTDSDSARO

governsId: 1.2.840.113556.1.5.254

objectClassCategory: 1

rdnAttId: cn

subClassOf: nTDSDSA

systemPossSuperiors: server, organization

schemaIdGuid: 85d16ec1-0791-4bc8-8ab3-70980602ff8c

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=NTDS-DSA-RO,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.207"></a>
## 2.207 Class nTDSService

Used for an NTDS services object, which contains information about the configuration of the directory service forest. This object is kept in the CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,... container.

cn: NTDS-Service

ldapDisplayName: nTDSService

governsId: 1.2.840.113556.1.5.72

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-DeletedObjectLifetime, tombstoneLifetime,

sPNMappings, replTopologyStayOfExecution, msDS-Other-Settings,

garbageCollPeriod, dSHeuristics

systemPossSuperiors: container

schemaIdGuid: 19195a5f-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Service,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.208"></a>
## 2.208 Class nTDSSiteSettings

A container that holds all AD DS and Active Directory site-specific settings.

cn: NTDS-Site-Settings

ldapDisplayName: nTDSSiteSettings

governsId: 1.2.840.113556.1.5.69

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSiteSettings

systemMayContain: schedule, queryPolicyObject, options,

msDS-Preferred-GC-Site, managedBy, interSiteTopologyRenew,

interSiteTopologyGenerator, interSiteTopologyFailover

systemPossSuperiors: site

schemaIdGuid: 19195a5d-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Site-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.209"></a>
## 2.209 Class nTFRSMember

Identifies a File Replication Service (FRS) replica set member.

cn: NTFRS-Member

ldapDisplayName: nTFRSMember

governsId: 1.2.840.113556.1.5.153

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: serverReference, fRSUpdateTimeout,

fRSServiceCommand, fRSRootSecurity, fRSPartnerAuthLevel, fRSFlags,

fRSExtensions, fRSControlOutboundBacklog, fRSControlInboundBacklog,

fRSControlDataCreation, frsComputerReference

systemPossSuperiors: nTFRSReplicaSet

schemaIdGuid: 2a132586-9373-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTFRS-Member,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.210"></a>
## 2.210 Class nTFRSReplicaSet

Defines the replica set for the FRS.

cn: NTFRS-Replica-Set

ldapDisplayName: nTFRSReplicaSet

governsId: 1.2.840.113556.1.5.102

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: schedule, msFRS-Topology-Pref, msFRS-Hub-Member,

managedBy, fRSVersionGUID, fRSServiceCommand, fRSRootSecurity,

fRSReplicaSetType, fRSReplicaSetGUID, fRSPrimaryMember,

fRSPartnerAuthLevel, fRSLevelLimit, fRSFlags, fRSFileFilter,

fRSExtensions, fRSDSPoll, fRSDirectoryFilter

systemPossSuperiors: nTFRSSettings

schemaIdGuid: 5245803a-ca6a-11d0-afff-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

(OA;;CCDC;2a132586-9373-11d1-aebc-0000f80367c1;;ED)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTFRS-Replica-Set,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.211"></a>
## 2.211 Class nTFRSSettings

Identifies the specific settings for FRS.

cn: NTFRS-Settings

ldapDisplayName: nTFRSSettings

governsId: 1.2.840.113556.1.5.89

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

systemMayContain: managedBy, fRSExtensions

systemPossSuperiors: nTFRSSettings, container, organizationalUnit,

organization

schemaIdGuid: f780acc2-56f0-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTFRS-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.212"></a>
## 2.212 Class nTFRSSubscriber

Identifies a subscriber to a replica set.

cn: NTFRS-Subscriber

ldapDisplayName: nTFRSSubscriber

governsId: 1.2.840.113556.1.5.155

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: fRSStagingPath, fRSRootPath

systemMayContain: schedule, fRSUpdateTimeout,

fRSTimeLastConfigChange, fRSTimeLastCommand,

fRSServiceCommandStatus, fRSServiceCommand, fRSMemberReference,

fRSFlags, fRSFaultCondition, fRSExtensions

systemPossSuperiors: nTFRSSubscriptions

schemaIdGuid: 2a132588-9373-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTFRS-Subscriber,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.213"></a>
## 2.213 Class nTFRSSubscriptions

Holds a set of subscriptions to a replica set.

cn: NTFRS-Subscriptions

ldapDisplayName: nTFRSSubscriptions

governsId: 1.2.840.113556.1.5.154

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: fRSWorkingPath, fRSVersion, fRSExtensions

systemPossSuperiors: user, computer, nTFRSSubscriptions

schemaIdGuid: 2a132587-9373-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTFRS-Subscriptions,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.214"></a>
## 2.214 Class oncRpc

An abstraction of an Open Network Computing (ONC) remote procedure call (RPC) binding, as specified in [[RFC1831]](https://go.microsoft.com/fwlink/?LinkId=90295).

cn: OncRpc

ldapDisplayName: oncRpc

governsId: 1.3.6.1.1.1.2.5

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn, oncRpcNumber

mayContain: description, msSFU30Name, msSFU30NisDomain, nisMapName,

msSFU30Aliases

possSuperiors: domainDNS, nisMap, container, organizationalUnit

schemaIdGuid: cadd1e5e-fefc-4f3f-b5a9-70e994204303

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=OncRpc,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.215"></a>
## 2.215 Class organization

Stores information about a company or organization.

cn: Organization

ldapDisplayName: organization

governsId: 2.5.6.4

objectClassCategory: 1

rdnAttId: o

subClassOf: top

systemMustContain: o

systemMayContain: x121Address, userPassword, telexNumber,

teletexTerminalIdentifier, telephoneNumber, street, st, seeAlso,

searchGuide, registeredAddress, preferredDeliveryMethod, postalCode,

postalAddress, postOfficeBox, physicalDeliveryOfficeName, l,

internationalISDNNumber, facsimileTelephoneNumber,

destinationIndicator, businessCategory

systemPossSuperiors: locality, country, domainDNS

schemaIdGuid: bf967aa3-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Organization,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.216"></a>
## 2.216 Class organizationalPerson

Used for objects that contain organizational information about a user, such as the employee number, department, manager, title, office, or address.

cn: Organizational-Person

ldapDisplayName: organizationalPerson

governsId: 2.5.6.7

objectClassCategory: 0

rdnAttId: cn

subClassOf: person

mayContain: msDS-HABSeniorityIndex, msDS-PhoneticDisplayName,

msDS-PhoneticCompanyName, msDS-PhoneticDepartment,

msDS-PhoneticLastName, msDS-PhoneticFirstName, houseIdentifier,

msExchHouseIdentifier, homePostalAddress

systemMayContain: x121Address, comment, title, co,

primaryTelexNumber, telexNumber, teletexTerminalIdentifier, street,

st, registeredAddress, preferredDeliveryMethod, postalCode,

postalAddress, postOfficeBox, thumbnailPhoto,

physicalDeliveryOfficeName, pager, otherPager, otherTelephone,

mobile, otherMobile, primaryInternationalISDNNumber, ipPhone,

otherIpPhone, otherHomePhone, homePhone,

otherFacsimileTelephoneNumber, personalTitle, middleName,

otherMailbox, ou, o, mhsORAddress, msDS-AllowedToDelegateTo,

manager, thumbnailLogo, l, internationalISDNNumber, initials,

givenName, generationQualifier, facsimileTelephoneNumber,

employeeID, mail, division, destinationIndicator, department, c,

countryCode, company, assistant, streetAddress,

msDS-AllowedToActOnBehalfOfOtherIdentity

systemPossSuperiors: organizationalUnit, organization, container

schemaIdGuid: bf967aa4-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.217"></a>
## 2.217 Class organizationalRole

Used for objects that contain information that pertains to a position or role in an organization, such as a system administrator or manager. This class can also be used for a nonhuman identity in an organization.

cn: Organizational-Role

ldapDisplayName: organizationalRole

governsId: 2.5.6.8

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: x121Address, telexNumber,

teletexTerminalIdentifier, telephoneNumber, street, st, seeAlso,

roleOccupant, registeredAddress, preferredDeliveryMethod,

postalCode, postalAddress, postOfficeBox,

physicalDeliveryOfficeName, ou, l, internationalISDNNumber,

facsimileTelephoneNumber, destinationIndicator

systemPossSuperiors: organizationalUnit, organization, container

schemaIdGuid: a8df74bf-c5ea-11d1-bbcb-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Organizational-Role,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.218"></a>
## 2.218 Class organizationalUnit

A container for storing users, computers, and other account objects.

cn: Organizational-Unit

ldapDisplayName: organizationalUnit

governsId: 2.5.6.5

objectClassCategory: 1

rdnAttId: ou

subClassOf: top

systemMustContain: ou

systemMayContain: x121Address, userPassword, uPNSuffixes, co,

telexNumber, teletexTerminalIdentifier, telephoneNumber, street, st,

seeAlso, searchGuide, registeredAddress, preferredDeliveryMethod,

postalCode, postalAddress, postOfficeBox,

physicalDeliveryOfficeName, msCOM-UserPartitionSetLink, managedBy,

thumbnailLogo, l, internationalISDNNumber, gPOptions, gPLink,

facsimileTelephoneNumber, destinationIndicator, desktopProfile,

defaultGroup, countryCode, c, businessCategory

systemPossSuperiors: country, organization, organizationalUnit,

domainDNS

schemaIdGuid: bf967aa5-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(OA;;CCDC;bf967a86-0de6-11d0-a285-00aa003049e2;;AO)

(OA;;CCDC;bf967aba-0de6-11d0-a285-00aa003049e2;;AO)

(OA;;CCDC;bf967a9c-0de6-11d0-a285-00aa003049e2;;AO)

(OA;;CCDC;bf967aa8-0de6-11d0-a285-00aa003049e2;;PO)

(A;;RPLCLORC;;;AU)(A;;LCRPLORC;;;ED)

(OA;;CCDC;4828CC14-1437-45bc-9B07-AD6F015E5F28;;AO)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Organizational-Unit,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.219"></a>
## 2.219 Class packageRegistration

The registration information for an application.

cn: Package-Registration

ldapDisplayName: packageRegistration

governsId: 1.2.840.113556.1.5.49

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: versionNumberLo, versionNumberHi, vendor,

upgradeProductCode, setupCommand, productCode, packageType,

packageName, packageFlags, msiScriptSize, msiScriptPath,

msiScriptName, msiScript, msiFileList, managedBy,

machineArchitecture, localeID, lastUpdateSequence, installUiLevel,

iconPath, fileExtPriority, cOMTypelibId, cOMProgID, cOMInterfaceID,

cOMClassID, categories, canUpgradeScript

systemPossSuperiors: classStore

schemaIdGuid: bf967aa6-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Package-Registration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.220"></a>
## 2.220 Class person

Contains personal information about a user.

cn: Person

ldapDisplayName: person

governsId: 2.5.6.6

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

systemMustContain: cn

mayContain: attributeCertificateAttribute

systemMayContain: userPassword, telephoneNumber, sn, serialNumber,

seeAlso

systemPossSuperiors: organizationalUnit, container

schemaIdGuid: bf967aa7-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.221"></a>
## 2.221 Class physicalLocation

Stores physical address information.

cn: Physical-Location

ldapDisplayName: physicalLocation

governsId: 1.2.840.113556.1.5.97

objectClassCategory: 1

rdnAttId: cn

subClassOf: locality

systemMayContain: managedBy

systemPossSuperiors: physicalLocation, configuration

schemaIdGuid: b7b13122-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Physical-Location,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.222"></a>
## 2.222 Class pKICertificateTemplate

Contains information for certificates that are issued by Active Directory Certificate Services (AD CS).

cn: PKI-Certificate-Template

ldapDisplayName: pKICertificateTemplate

governsId: 1.2.840.113556.1.5.177

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: pKIOverlapPeriod, pKIMaxIssuingDepth, pKIKeyUsage,

pKIExtendedKeyUsage, pKIExpirationPeriod, pKIEnrollmentAccess,

pKIDefaultCSPs, pKIDefaultKeySpec, pKICriticalExtensions,

msPKI-RA-Signature, msPKI-RA-Policies,

msPKI-RA-Application-Policies, msPKI-Template-Schema-Version,

msPKI-Template-Minor-Revision, msPKI-Supersede-Templates,

msPKI-Private-Key-Flag, msPKI-Minimal-Key-Size,

msPKI-Enrollment-Flag, msPKI-Certificate-Policy,

msPKI-Certificate-Name-Flag, msPKI-Certificate-Application-Policy,

msPKI-Cert-Template-OID, flags, displayName

systemPossSuperiors: container

schemaIdGuid: e5209ca2-3bba-11d2-90cc-00c04fd91ab1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=PKI-Certificate-Template,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.223"></a>
## 2.223 Class pKIEnrollmentService

The certificate server that can process certificate requests and issue certificates.

cn: PKI-Enrollment-Service

ldapDisplayName: pKIEnrollmentService

governsId: 1.2.840.113556.1.5.178

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msPKI-Enrollment-Servers, msPKI-Site-Name,

signatureAlgorithms, enrollmentProviders, dNSHostName,

certificateTemplates, cACertificateDN, cACertificate

systemPossSuperiors: container

schemaIdGuid: ee4aa692-3bba-11d2-90cc-00c04fd91ab1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=PKI-Enrollment-Service,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.224"></a>
## 2.224 Class posixAccount

An abstraction of an account that has Portable Operating System Interface (POSIX) attributes.

cn: PosixAccount

ldapDisplayName: posixAccount

governsId: 1.3.6.1.1.1.2.0

objectClassCategory: 3

rdnAttId: uid

subClassOf: top

mayContain: uid, cn, uidNumber, gidNumber, unixHomeDirectory,

homeDirectory, userPassword, unixUserPassword, loginShell, gecos,

description

schemaIdGuid: ad44bb41-67d5-4d88-b575-7b20674e76d8

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=PosixAccount,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.225"></a>
## 2.225 Class posixGroup

An abstraction of a group of accounts.

cn: PosixGroup

ldapDisplayName: posixGroup

governsId: 1.3.6.1.1.1.2.2

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: cn, userPassword, unixUserPassword, description,

gidNumber, memberUid

schemaIdGuid: 2a9350b8-062c-4ed0-9903-dde10d06deba

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=PosixGroup,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.226"></a>
## 2.226 Class printQueue

Contains information about a print queue.

cn: Print-Queue

ldapDisplayName: printQueue

governsId: 1.2.840.113556.1.5.23

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMustContain: versionNumber, uNCName, shortServerName,

serverName, printerName

systemMayContain: priority, printStatus, printStartTime,

printStaplingSupported, printSpooling, printShareName,

printSeparatorFile, printRateUnit, printRate, printPagesPerMinute,

printOwner, printOrientationsSupported, printNumberUp, printNotify,

printNetworkAddress, printMinYExtent, printMinXExtent, printMemory,

printMediaSupported, printMediaReady, printMaxYExtent,

printMaxXExtent, printMaxResolutionSupported, printMaxCopies,

printMACAddress, printLanguage, printKeepPrintedJobs, printFormName,

printEndTime, printDuplexSupported, printColor, printCollate,

printBinNames, printAttributes, portName, physicalLocationObject,

operatingSystemVersion, operatingSystemServicePack,

operatingSystemHotfix, operatingSystem, location, driverVersion,

driverName, defaultPriority, bytesPerMinute, assetNumber

systemPossSuperiors: organizationalUnit, domainDNS, container,

computer

schemaIdGuid: bf967aa8-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;PO)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Print-Queue,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.227"></a>
## 2.227 Class queryPolicy

Holds administrative limits for LDAP server resources for sorted and paged results.

cn: Query-Policy

ldapDisplayName: queryPolicy

governsId: 1.2.840.113556.1.5.106

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: lDAPIPDenyList, lDAPAdminLimits

systemPossSuperiors: container

schemaIdGuid: 83cc7075-cca7-11d0-afff-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Query-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.228"></a>
## 2.228 Class remoteMailRecipient

An external mail recipient. This attribute is obsolete.

cn: Remote-Mail-Recipient

ldapDisplayName: remoteMailRecipient

governsId: 1.2.840.113556.1.5.24

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemAuxiliaryClass: mailRecipient

systemMayContain: remoteSourceType, remoteSource, managedBy

systemPossSuperiors: organizationalUnit, domainDNS

schemaIdGuid: bf967aa9-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(OA;;CR;ab721a55-1e2f-11d0-9819-00aa0040529b;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Remote-Mail-Recipient,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.229"></a>
## 2.229 Class remoteStorageServicePoint

Holds information about the remote storage location for files that are stored offline.

cn: Remote-Storage-Service-Point

ldapDisplayName: remoteStorageServicePoint

governsId: 1.2.840.113556.1.5.146

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceAdministrationPoint

systemMayContain: remoteStorageGUID

systemPossSuperiors: computer

schemaIdGuid: 2a39c5bd-8960-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Remote-Storage-Service-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.230"></a>
## 2.230 Class residentialPerson

Defines entries that represent a person in the residential environment.

cn: Residential-Person

ldapDisplayName: residentialPerson

governsId: 2.5.6.10

objectClassCategory: 1

rdnAttId: cn

subClassOf: person

systemMayContain: x121Address, title, telexNumber,

teletexTerminalIdentifier, street, st, registeredAddress,

preferredDeliveryMethod, postalCode, postalAddress, postOfficeBox,

physicalDeliveryOfficeName, ou, l, internationalISDNNumber,

facsimileTelephoneNumber, destinationIndicator, businessCategory

systemPossSuperiors: locality, container

schemaIdGuid: a8df74d6-c5ea-11d1-bbcb-0080c76670c0

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Residential-Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.231"></a>
## 2.231 Class rFC822LocalPart

Defines entries that represent the local part of mail addresses.

cn: rFC822LocalPart

ldapDisplayName: rFC822LocalPart

governsId: 0.9.2342.19200300.100.4.14

objectClassCategory: 1

rdnAttId: cn

subClassOf: domain

mayContain: x121Address, telexNumber, teletexTerminalIdentifier,

telephoneNumber, street, sn, seeAlso, registeredAddress,

preferredDeliveryMethod, postOfficeBox, postalCode, postalAddress,

physicalDeliveryOfficeName, internationalISDNNumber,

facsimileTelephoneNumber, destinationIndicator, description, cn

possSuperiors: organizationalUnit, container

schemaIdGuid: b93e3a78-cbae-485e-a07b-5ef4ae505686

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rFC822LocalPart,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.232"></a>
## 2.232 Class rIDManager

Contains the relative ID (RID) operations master (also known as flexible single master operations or FSMO) and the RID-Available-Pool location that is used by the RID Manager. The RID Manager is a component that runs on the domain controller and is responsible for allocating security identifiers.

cn: RID-Manager

ldapDisplayName: rIDManager

governsId: 1.2.840.113556.1.5.83

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: rIDAvailablePool

systemMayContain: msDS-RIDPoolAllocationEnabled

systemPossSuperiors: container

schemaIdGuid: 6617188d-8f3c-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

S:(AU;SA;CRWP;;;WD)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=RID-Manager,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.233"></a>
## 2.233 Class rIDSet

Holds the RID pools that were allocated by the domain controller. There is one rIDSet for each writable domain controller. Since read-only domain controllers cannot originate the creation of security principals (or other objects), they do not require RID pools or the rIDSet objects that maintain them.

cn: RID-Set

ldapDisplayName: rIDSet

governsId: 1.2.840.113556.1.5.129

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: rIDUsedPool, rIDPreviousAllocationPool,

rIDNextRID, rIDAllocationPool

systemPossSuperiors: user, container, computer

schemaIdGuid: 7bfdcb89-4807-11d1-a9c3-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=RID-Set,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.234"></a>
## 2.234 Class room

Defines entries that represent rooms.

cn: room

ldapDisplayName: room

governsId: 0.9.2342.19200300.100.4.7

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mustContain: cn

mayContain: location, telephoneNumber, seeAlso, description,

roomNumber

possSuperiors: organizationalUnit, container

schemaIdGuid: 7860e5d2-c8b0-4cbb-bd45-d9455beb9206

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=room,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.235"></a>
## 2.235 Class rpcContainer

The default container for RPC endpoints.

cn: Rpc-Container

ldapDisplayName: rpcContainer

governsId: 1.2.840.113556.1.5.136

objectClassCategory: 1

rdnAttId: cn

subClassOf: container

systemMayContain: nameServiceFlags

systemPossSuperiors: container

schemaIdGuid: 80212842-4bdc-11d1-a9c4-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Rpc-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.236"></a>
## 2.236 Class rpcEntry

An abstract class whose subclasses are used by the RPC Name Service (Ns), which is accessed through the RpcNs* functions in the Win32 API.

cn: rpc-Entry

ldapDisplayName: rpcEntry

governsId: 1.2.840.113556.1.5.27

objectClassCategory: 2

rdnAttId: cn

subClassOf: connectionPoint

systemPossSuperiors: container

schemaIdGuid: bf967aac-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Entry,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.237"></a>
## 2.237 Class rpcGroup

Represents an RPC group.

cn: rpc-Group

ldapDisplayName: rpcGroup

governsId: 1.2.840.113556.1.5.80

objectClassCategory: 1

rdnAttId: cn

subClassOf: rpcEntry

systemMayContain: rpcNsObjectID, rpcNsGroup

systemPossSuperiors: container

schemaIdGuid: 88611bdf-8cf4-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Group,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.238"></a>
## 2.238 Class rpcProfile

Represents an RPC profile.

cn: rpc-Profile

ldapDisplayName: rpcProfile

governsId: 1.2.840.113556.1.5.82

objectClassCategory: 1

rdnAttId: cn

subClassOf: rpcEntry

systemPossSuperiors: container

schemaIdGuid: 88611be1-8cf4-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Profile,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.239"></a>
## 2.239 Class rpcProfileElement

Holds an entry in an RPC profile.

cn: rpc-Profile-Element

ldapDisplayName: rpcProfileElement

governsId: 1.2.840.113556.1.5.26

objectClassCategory: 1

rdnAttId: cn

subClassOf: rpcEntry

systemMustContain: rpcNsPriority, rpcNsInterfaceID

systemMayContain: rpcNsProfileEntry, rpcNsAnnotation

systemPossSuperiors: rpcProfile

schemaIdGuid: f29653cf-7ad0-11d0-afd6-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Profile-Element,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.240"></a>
## 2.240 Class rpcServer

Represents a particular server that is holding one or more RPC interfaces.

cn: rpc-Server

ldapDisplayName: rpcServer

governsId: 1.2.840.113556.1.5.81

objectClassCategory: 1

rdnAttId: cn

subClassOf: rpcEntry

systemMayContain: rpcNsObjectID, rpcNsEntryFlags, rpcNsCodeset

systemPossSuperiors: container

schemaIdGuid: 88611be0-8cf4-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Server,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.241"></a>
## 2.241 Class rpcServerElement

Represents a single interface in a specified RPC server.

cn: rpc-Server-Element

ldapDisplayName: rpcServerElement

governsId: 1.2.840.113556.1.5.73

objectClassCategory: 1

rdnAttId: cn

subClassOf: rpcEntry

systemMustContain: rpcNsTransferSyntax, rpcNsInterfaceID,

rpcNsBindings

systemPossSuperiors: rpcServer

schemaIdGuid: f29653d0-7ad0-11d0-afd6-00c04fd930c9

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=rpc-Server-Element,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.242"></a>
## 2.242 Class rRASAdministrationConnectionPoint

Contains the connection point for the Routing and Remote Access service.

cn: RRAS-Administration-Connection-Point

ldapDisplayName: rRASAdministrationConnectionPoint

governsId: 1.2.840.113556.1.5.150

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceAdministrationPoint

systemMayContain: msRRASAttribute

systemPossSuperiors: computer

schemaIdGuid: 2a39c5be-8960-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;DA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;CO)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=RRAS-Administration-Connection-Point,

<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.243"></a>
## 2.243 Class rRASAdministrationDictionary

A dictionary object for translating vendor-specific routing attributes to names.

cn: RRAS-Administration-Dictionary

ldapDisplayName: rRASAdministrationDictionary

governsId: 1.2.840.113556.1.5.156

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msRRASVendorAttributeEntry

systemPossSuperiors: container

schemaIdGuid: f39b98ae-938d-11d1-aebd-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=RRAS-Administration-Dictionary,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.244"></a>
## 2.244 Class samDomain

An auxiliary class that holds common properties for Windows NT domains.

cn: Sam-Domain

ldapDisplayName: samDomain

governsId: 1.2.840.113556.1.5.3

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemAuxiliaryClass: samDomainBase

systemMayContain: treeName, rIDManagerReference, replicaSource,

pwdProperties, pwdHistoryLength, privateKey, pekList,

pekKeyChangeInterval, nTMixedDomain, nextRid, nETBIOSName,

msDS-PerUserTrustTombstonesQuota, msDS-PerUserTrustQuota,

ms-DS-MachineAccountQuota, msDS-LogonTimeSyncInterval,

msDS-AllUsersTrustQuota, modifiedCountAtLastProm, minPwdLength,

minPwdAge, maxPwdAge, lSAModifiedCount, lSACreationTime,

lockoutThreshold, lockoutDuration, lockOutObservationWindow,

gPOptions, gPLink, eFSPolicy, domainPolicyObject, desktopProfile,

description, defaultLocalPolicyObject, creationTime,

controlAccessRights, cACertificate, builtinModifiedCount,

builtinCreationTime, auditingPolicy

schemaIdGuid: bf967a90-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;RO)(A;;RP;;;WD)

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ab-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ac-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6aa-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;1131f6ab-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;1131f6ac-9c07-11d1-f79f-00c04fc2dcd2;;BA)(A;;RPLCLORC;;;AU)

(A;;RPWPCRLCLOCCRCWDWOSW;;;DA)(A;CI;RPWPCRLCLOCCRCWDWOSDSW;;;BA)

(A;;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;SY)

(A;CI;RPWPCRLCLOCCDCRCWDWOSDDTSW;;;EA)(A;CI;LC;;;RU)

(OA;CIIO;RP;037088f8-0ae1-11d2-b422-00a0c968f939;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;4c164200-20c0-11d0-a768-00aa006e0529;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;CIIO;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)

(OA;;RP;c7407360-20bf-11d0-a768-00aa006e0529;;RU)

(OA;CIIO;RPLCLORC;;bf967a9c-0de6-11d0-a285-00aa003049e2;RU)

(A;;RPRC;;;RU)(OA;CIIO;RPLCLORC;;

bf967aba-0de6-11d0-a285-00aa003049e2;RU)(A;;LCRPLORC;;;ED)

(OA;CIIO;RP;037088f8-0ae1-11d2-b422-00a0c968f939;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;4c164200-20c0-11d0-a768-00aa006e0529;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;

4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;CIIO;RPLCLORC;;4828CC14-1437-45bc-9B07-AD6F015E5F28;RU)

(OA;;RP;b8119fd0-04f6-4762-ab7a-4986c76b3f9a;;RU)

(OA;;RP;b8119fd0-04f6-4762-ab7a-4986c76b3f9a;;AU)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967aba-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967a9c-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;RP;b7c69e6d-2cc7-11d2-854e-00a0c983f608;

bf967a86-0de6-11d0-a285-00aa003049e2;ED)

(OA;CIIO;WP;ea1b7b93-5e48-46d5-bc6c-4df4fda78a35;

bf967a86-0de6-11d0-a285-00aa003049e2;PS)

(OA;;CR;1131f6ad-9c07-11d1-f79f-00c04fc2dcd2;;DD)

(OA;;CR;89e95b76-444d-4c62-991a-0facbeda640c;;ED)

(OA;;CR;1131f6ad-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;;CR;89e95b76-444d-4c62-991a-0facbeda640c;;BA)

(OA;;CR;e2a36dc9-ae17-47c3-b58b-be34c55ba633;;S-1-5-32-557)

(OA;;CR;280f369c-67c7-438e-ae98-1d46f3c6f541;;AU)

(OA;;CR;ccc2dc7d-a6ad-4a7a-8846-c04e3cc53501;;AU)

(OA;;CR;05c74c5e-4deb-43b4-bd9f-86664c2a7fd5;;AU)

(OA;;CR;1131f6ae-9c07-11d1-f79f-00c04fc2dcd2;;ED)

(OA;;CR;1131f6ae-9c07-11d1-f79f-00c04fc2dcd2;;BA)

(OA;CIIO;CRRPWP;91e647de-d96f-4b70-9557-d63ff4f3ccd8;;PS)

(OA;CIOI;RPWP;3f78c3e5-f79a-46bd-a0b8-9d18116ddc79;;PS)

(OA;CIIO;SW;9b026da6-0d3c-465c-8bee-5199d7165cba;bf967a86-0de6-11d0-a285-00aa003049e2;PS)

(OA;CIIO;SW;9b026da6-0d3c-465c-8bee-5199d7165cba;bf967a86-0de6-11d0-a285-00aa003049e2;CO)

S:(AU;SA;WDWOWP;;;WD)(AU;SA;CR;;;BA)(AU;SA;CR;;;DU)

(OU;CISA;WP;f30e3bbe-9ff0-11d1-b603-0000f80367c1;

bf967aa5-0de6-11d0-a285-00aa003049e2;WD)

(OU;CISA;WP;f30e3bbf-9ff0-11d1-b603-0000f80367c1;

bf967aa5-0de6-11d0-a285-00aa003049e2;WD)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Sam-Domain,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.245"></a>
## 2.245 Class samDomainBase

A base class for defining domains.

cn: Sam-Domain-Base

ldapDisplayName: samDomainBase

governsId: 1.2.840.113556.1.5.2

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMayContain: uASCompat, serverState, serverRole, revision,

pwdProperties, pwdHistoryLength, oEMInformation, objectSid,

nTSecurityDescriptor, nextRid, modifiedCountAtLastProm,

modifiedCount, minPwdLength, minPwdAge, maxPwdAge, lockoutThreshold,

lockoutDuration, lockOutObservationWindow, forceLogoff,

domainReplica, creationTime

schemaIdGuid: bf967a91-0de6-11d0-a285-00aa003049e2

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Sam-Domain-Base,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.246"></a>
## 2.246 Class samServer

Holds a revision level and a security descriptor that specifies who can make remote procedure calls (RPCs) through the Security Accounts Manager (SAM) interface.

cn: Sam-Server

ldapDisplayName: samServer

governsId: 1.2.840.113556.1.5.5

objectClassCategory: 1

rdnAttId: cn

subClassOf: securityObject

systemMayContain: samDomainUpdates

systemPossSuperiors: domainDNS

schemaIdGuid: bf967aad-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPLCLORC;;;RU)(OA;;CR;91d67418-0135-4acc-8d79-c08e857cfbec;;AU)

(OA;;CR;91d67418-0135-4acc-8d79-c08e857cfbec;;RU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Sam-Server,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.247"></a>
## 2.247 Class secret

A Local Security Authority secret that is used for trust relationships and to save service passwords.

cn: Secret

ldapDisplayName: secret

governsId: 1.2.840.113556.1.5.28

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: priorValue, priorSetTime, lastSetTime, currentValue

systemPossSuperiors: container

schemaIdGuid: bf967aae-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Secret,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.248"></a>
## 2.248 Class securityObject

An auxiliary class that identifies security principals.

cn: Security-Object

ldapDisplayName: securityObject

governsId: 1.2.840.113556.1.5.1

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemPossSuperiors: container

schemaIdGuid: bf967aaf-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Security-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.249"></a>
## 2.249 Class securityPrincipal

Contains the security information for an object.

cn: Security-Principal

ldapDisplayName: securityPrincipal

governsId: 1.2.840.113556.1.5.6

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMustContain: sAMAccountName, objectSid

systemMayContain: supplementalCredentials, sIDHistory,

securityIdentifier, sAMAccountType, rid, tokenGroupsNoGCAcceptable,

tokenGroupsGlobalAndUniversal, tokenGroups, nTSecurityDescriptor,

msDS-KeyVersionNumber, altSecurityIdentities, accountNameHistory,

msds-tokenGroupNames, msds-tokenGroupNamesGlobalAndUniversal,

msds-tokenGroupNamesNoGCAcceptable

schemaIdGuid: bf967ab0-0de6-11d0-a285-00aa003049e2

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Security-Principal,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.250"></a>
## 2.250 Class server

Represents a server computer within a site.

cn: Server

ldapDisplayName: server

governsId: 1.2.840.113556.1.5.17

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-IsUserCachableAtRodc, msDS-SiteName,

msDS-isRODC, msDS-isGC, mailAddress, serverReference, serialNumber,

managedBy, dNSHostName, bridgeheadTransportList

systemPossSuperiors: serversContainer

schemaIdGuid: bf967a92-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;CI;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Server,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.251"></a>
## 2.251 Class serversContainer

Holds server objects within a site.

cn: Servers-Container

ldapDisplayName: serversContainer

governsId: 1.2.840.113556.1.5.7000.48

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: site

schemaIdGuid: f780acc0-56f0-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:(A;;CC;;;BA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Servers-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.252"></a>
## 2.252 Class serviceAdministrationPoint

Holds binding information for connecting to a service in order to administer it.

cn: Service-Administration-Point

ldapDisplayName: serviceAdministrationPoint

governsId: 1.2.840.113556.1.5.94

objectClassCategory: 1

rdnAttId: cn

subClassOf: serviceConnectionPoint

systemPossSuperiors: computer

schemaIdGuid: b7b13123-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Service-Administration-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.253"></a>
## 2.253 Class serviceClass

Stores the properties of a Winsock service.

cn: Service-Class

ldapDisplayName: serviceClass

governsId: 1.2.840.113556.1.5.29

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMustContain: serviceClassID, displayName

systemMayContain: serviceClassInfo

systemPossSuperiors: container

schemaIdGuid: bf967ab1-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Service-Class,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.254"></a>
## 2.254 Class serviceConnectionPoint

Publishes information that client applications can use to bind to a service.

cn: Service-Connection-Point

ldapDisplayName: serviceConnectionPoint

governsId: 1.2.840.113556.1.5.126

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMayContain: versionNumberLo, versionNumberHi, versionNumber,

vendor, serviceDNSNameType, serviceDNSName, serviceClassName,

serviceBindingInformation, appSchemaVersion

systemPossSuperiors: organizationalUnit, container, computer

schemaIdGuid: 28630ec1-41d5-11d1-a9c1-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Service-Connection-Point,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.255"></a>
## 2.255 Class serviceInstance

A connection point object that is used by the Windows Sockets Registration and Resolution (RnR) name service. The serviceInstance object class is used by various namespace providers (such as DNS) to differentiate the type of data returned during service publication.

cn: Service-Instance

ldapDisplayName: serviceInstance

governsId: 1.2.840.113556.1.5.30

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMustContain: serviceClassID, displayName

systemMayContain: winsockAddresses, serviceInstanceVersion

systemPossSuperiors: container

schemaIdGuid: bf967ab2-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Service-Instance,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.256"></a>
## 2.256 Class shadowAccount

Provides additional attributes for shadow passwords.

cn: ShadowAccount

ldapDisplayName: shadowAccount

governsId: 1.3.6.1.1.1.2.1

objectClassCategory: 3

rdnAttId: uid

subClassOf: top

mayContain: uid, userPassword, description, shadowLastChange,

shadowMin, shadowMax, shadowWarning, shadowInactive, shadowExpire,

shadowFlag

schemaIdGuid: 5b6d8467-1a18-4174-b350-9cc6e7b4ac8d

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ShadowAccount,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003 R2.

<a id="Section_2.257"></a>
## 2.257 Class simpleSecurityObject

Allows an entry to have a userPassword attribute when the principal object classes of an entry do not allow userPassword as an attribute type.

cn: simpleSecurityObject

ldapDisplayName: simpleSecurityObject

governsId: 0.9.2342.19200300.100.4.19

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

mayContain: userPassword

schemaIdGuid: 5fe69b0b-e146-4f15-b0ab-c1e5d488e094

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLOLORCWOWDSDDTDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=simpleSecurityObject,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2003.

<a id="Section_2.258"></a>
## 2.258 Class site

A container for storing server objects. This class represents a physical location that contains computers. It is used to manage replication.

cn: Site

ldapDisplayName: site

governsId: 1.2.840.113556.1.5.31

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: notificationList, mSMQSiteID, mSMQSiteForeign,

mSMQNt4Stub, mSMQInterval2, mSMQInterval1, managedBy, location,

gPOptions, gPLink, msDS-BridgeHeadServersUsed

systemPossSuperiors: sitesContainer

schemaIdGuid: bf967ab3-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPLCLORC;;;AU)(A;;LCRPLORC;;;ED)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Site,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.259"></a>
## 2.259 Class siteLink

Represents the connection between two sites.

cn: Site-Link

ldapDisplayName: siteLink

governsId: 1.2.840.113556.1.5.147

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: siteList

systemMayContain: schedule, replInterval, options, cost

systemPossSuperiors: interSiteTransport

schemaIdGuid: d50c2cde-8951-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Site-Link,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.260"></a>
## 2.260 Class siteLinkBridge

An object that tracks the site links that are transitively connected.

cn: Site-Link-Bridge

ldapDisplayName: siteLinkBridge

governsId: 1.2.840.113556.1.5.148

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: siteLinkList

systemPossSuperiors: interSiteTransport

schemaIdGuid: d50c2cdf-8951-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Site-Link-Bridge,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.261"></a>
## 2.261 Class sitesContainer

A container that stores site objects. This class is located in the configuration naming context.

cn: Sites-Container

ldapDisplayName: sitesContainer

governsId: 1.2.840.113556.1.5.107

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: configuration

schemaIdGuid: 7a4117da-cd67-11d0-afff-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Sites-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.262"></a>
## 2.262 Class storage

A generic object that publishes Universal Naming Conventions (UNCs) for files.

cn: Storage

ldapDisplayName: storage

governsId: 1.2.840.113556.1.5.33

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMayContain: monikerDisplayName, moniker, iconPath

systemPossSuperiors: container

schemaIdGuid: bf967ab5-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Storage,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.263"></a>
## 2.263 Class subnet

Represents a specific network subnet to which servers and workstations are attached.

cn: Subnet

ldapDisplayName: subnet

governsId: 1.2.840.113556.1.5.96

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: siteObject, physicalLocationObject, location

systemPossSuperiors: subnetContainer

schemaIdGuid: b7b13124-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Subnet,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.264"></a>
## 2.264 Class subnetContainer

A container that holds all subnet objects.

cn: Subnet-Container

ldapDisplayName: subnetContainer

governsId: 1.2.840.113556.1.5.95

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: sitesContainer

schemaIdGuid: b7b13125-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Subnet-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.265"></a>
## 2.265 Class subSchema

Contains the schema definition.

cn: SubSchema

ldapDisplayName: subSchema

governsId: 2.5.20.1

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: objectClasses, modifyTimeStamp, extendedClassInfo,

extendedAttributeInfo, dITContentRules, attributeTypes

systemPossSuperiors: dMD

schemaIdGuid: 5a8b3261-c38d-11d1-bbc9-0080c76670c0

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=SubSchema,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.266"></a>
## 2.266 Class top

The top-level class from which all classes are derived.

cn: Top

ldapDisplayName: top

governsId: 2.5.6.0

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMustContain: objectClass, objectCategory, nTSecurityDescriptor,

instanceType

mayContain: msSFU30PosixMemberOf, msDFSR-ComputerReferenceBL,

msDFSR-MemberReferenceBL, msDS-ObjectReferenceBL

systemMayContain: msDS-EnabledFeatureBL, msDS-LastKnownRDN,

msDS-HostServiceAccountBL, msDS-CloudAnchor,

msDS-OIDToGroupLinkBl, msDS-LocalEffectiveRecycleTime,

msDS-LocalEffectiveDeletionTime, isRecycled, msDS-NcType,

msDS-PSOApplied, msDS-PrincipalName,

msDS-RevealedListBL, msDS-AuthenticatedToAccountlist,

msDS-IsPartialReplicaFor, msDS-IsDomainFor, msDS-IsFullReplicaFor,

msDS-RevealedDSAs, msDS-KrbTgtLinkBl, url, wWWHomePage, whenCreated,

whenChanged, wellKnownObjects, wbemPath, uSNSource, uSNLastObjRem,

USNIntersite, uSNDSALastObjRemoved, uSNCreated, uSNChanged,

systemFlags, subSchemaSubEntry, subRefs, structuralObjectClass,

siteObjectBL, serverReferenceBL, sDRightsEffective, revision,

repsTo, repsFrom, directReports, replUpToDateVector,

replPropertyMetaData, name, queryPolicyBL, proxyAddresses,

proxiedObjectName, possibleInferiors, partialAttributeSet,

partialAttributeDeletionList, otherWellKnownObjects, objectVersion,

objectGUID, distinguishedName, nonSecurityMemberBL, netbootSCPBL,

ownerBL, msDS-ReplValueMetaData, msDS-ReplAttributeMetaData,

msDS-NonMembersBL, msDS-NCReplOutboundNeighbors,

msDS-NCReplInboundNeighbors, msDS-NCReplCursors,

msDS-TasksForAzRoleBL, msDS-TasksForAzTaskBL,

msDS-OperationsForAzRoleBL, msDS-OperationsForAzTaskBL,

msDS-MembersForAzRoleBL, msDs-masteredBy, mS-DS-ConsistencyGuid,

mS-DS-ConsistencyChildCount, msDS-Approx-Immed-Subordinates,

msCOM-PartitionSetLink, msCOM-UserLink, modifyTimeStamp, masteredBy,

managedObjects, lastKnownParent, isPrivilegeHolder, memberOf,

isDeleted, isCriticalSystemObject, showInAdvancedViewOnly,

fSMORoleOwner, fRSMemberReferenceBL, frsComputerReferenceBL,

fromEntry, flags, extensionName, dSASignature,

dSCorePropagationData, displayNamePrintable, displayName,

description, createTimeStamp, cn, canonicalName,

bridgeheadServerListBL, allowedChildClassesEffective,

allowedChildClasses, allowedAttributesEffective, allowedAttributes,

adminDisplayName, adminDescription, msDS-NC-RO-Replica-Locations-BL,

msDS-ClaimSharesPossibleValuesWithBL, msDS-MembersOfResourcePropertyListBL,

msDS-IsPrimaryComputerFor, msDS-ValueTypeReferenceBL, msDS-TDOIngressBL,

msDS-TDOEgressBL, msds-memberTransitive, msds-memberOfTransitive,

msDS-parentdistname, msDS-ReplValueMetaDataExt, msDS-SourceAnchor,

msDS-ObjectSoa

systemPossSuperiors: lostAndFound

schemaIdGuid: bf967ab7-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Top,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.267"></a>
## 2.267 Class trustedDomain

An object that represents a domain that is trusted by, or trusting, the local domain.

cn: Trusted-Domain

ldapDisplayName: trustedDomain

governsId: 1.2.840.113556.1.5.34

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMayContain: msDS-SupportedEncryptionTypes, trustType,

trustPosixOffset, trustPartner, trustDirection, trustAuthOutgoing,

trustAuthIncoming, trustAttributes, securityIdentifier,

msDS-TrustForestTrustInfo, mS-DS-CreatorSID, initialAuthOutgoing,

initialAuthIncoming, flatName, domainIdentifier, domainCrossRef,

additionalTrustedServiceNames, msDS-IngressClaimsTransformationPolicy,

msDS-EgressClaimsTransformationPolicy

systemPossSuperiors: container

schemaIdGuid: bf967ab8-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(OA;;WP;736e4812-af31-11d2-b7df-00805f48caeb;

bf967ab8-0de6-11d0-a285-00aa003049e2;CO)(A;;SD;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Trusted-Domain,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.268"></a>
## 2.268 Class typeLibrary

Contains information about a type library.

cn: Type-Library

ldapDisplayName: typeLibrary

governsId: 1.2.840.113556.1.5.53

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: cOMUniqueLIBID, cOMInterfaceID, cOMClassID

systemPossSuperiors: classStore

schemaIdGuid: 281416e2-1968-11d0-a28f-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Type-Library,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.269"></a>
## 2.269 Class user

Stores information about an employee or contractor who works for an organization. It is also possible to apply this class to long-term visitors.

cn: User

ldapDisplayName: user

governsId: 1.2.840.113556.1.5.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: organizationalPerson

auxiliaryClass: shadowAccount, posixAccount

systemAuxiliaryClass: securityPrincipal, mailRecipient, msDS-CloudExtensions

mayContain: msSFU30NisDomain, msSFU30Name, msDS-SourceObjectDN,

x500uniqueIdentifier, userSMIMECertificate, userPKCS12, uid,

secretary, roomNumber, preferredLanguage, photo, labeledURI,

jpegPhoto, homePostalAddress, givenName, employeeType,

employeeNumber, displayName, departmentNumber, carLicense, audio

systemMayContain: msTSPrimaryDesktop, msTSSecondaryDesktops,

msPKI-CredentialRoamingTokens, msDS-ResultantPSO, msTSLSProperty01,

msTSLSProperty02, msTSManagingLS2, msTSManagingLS3, msTSManagingLS4,

msTSLicenseVersion2, msTSLicenseVersion3, msTSLicenseVersion4,

msTSExpireDate2, msTSExpireDate3, msTSExpireDate4,

msDS-AuthenticatedAtDC, msDS-UserPasswordExpiryTimeComputed,

msTSManagingLS, msTSLicenseVersion, msTSExpireDate, msTSProperty02,

msTSProperty01, msTSInitialProgram, msTSWorkDirectory,

msTSDefaultToMainPrinter, msTSConnectPrinterDrives,

msTSConnectClientDrives, msTSBrokenConnectionAction,

msTSReconnectionAction, msTSMaxIdleTime, msTSMaxConnectionTime,

msTSMaxDisconnectionTime, msTSRemoteControl, msTSAllowLogon,

msTSHomeDrive, msTSHomeDirectory, msTSProfilePath,

msDS-FailedInteractiveLogonCountAtLastSuccessfulLogon,

msDS-FailedInteractiveLogonCount,

msDS-LastFailedInteractiveLogonTime,

msDS-LastSuccessfulInteractiveLogonTime,

msRADIUS-SavedFramedIpv6Route, msRADIUS-FramedIpv6Route,

msRADIUS-SavedFramedIpv6Prefix, msRADIUS-FramedIpv6Prefix,

msRADIUS-SavedFramedInterfaceId, msRADIUS-FramedInterfaceId,

msPKIAccountCredentials, msPKIDPAPIMasterKeys,

msPKIRoamingTimeStamp, msDS-SupportedEncryptionTypes,

msDS-SecondaryKrbTgtNumber, pager, o, mobile, manager, mail,

initials, homePhone, businessCategory, userCertificate,

userWorkstations, userSharedFolderOther, userSharedFolder,

userPrincipalName, userParameters, userAccountControl, unicodePwd,

terminalServer, servicePrincipalName, scriptPath, pwdLastSet,

profilePath, primaryGroupID, preferredOU, otherLoginWorkstations,

operatorCount, ntPwdHistory, networkAddress, msRASSavedFramedRoute,

msRASSavedFramedIPAddress, msRASSavedCallbackNumber,

msRADIUSServiceType, msRADIUSFramedRoute, msRADIUSFramedIPAddress,

msRADIUSCallbackNumber, msNPSavedCallingStationID,

msNPCallingStationID, msNPAllowDialin, mSMQSignCertificatesMig,

mSMQSignCertificates, mSMQDigestsMig, mSMQDigests, msIIS-FTPRoot,

msIIS-FTPDir, msDS-User-Account-Control-Computed,

msDS-Site-Affinity, mS-DS-CreatorSID,

msDS-Cached-Membership-Time-Stamp, msDS-Cached-Membership,

msDRM-IdentityCertificate, msCOM-UserPartitionSetLink, maxStorage,

logonWorkstation, logonHours, logonCount, lockoutTime, localeID,

lmPwdHistory, lastLogonTimestamp, lastLogon, lastLogoff, homeDrive,

homeDirectory, groupsToIgnore, groupPriority, groupMembershipSAM,

dynamicLDAPServer, desktopProfile, defaultClassStore, dBCSPwd,

controlAccessRights, codePage, badPwdCount, badPasswordTime,

adminCount, aCSPolicyName, accountExpires, msDS-PrimaryComputer,

msDS-SyncServerUrl, msDS-AssignedAuthNPolicy, msDS-AssignedAuthNPolicySilo,

msDS-AuthNPolicySiloMembersBL, msDS-KeyPrincipalBL, msDS-KeyCredentialLink,

msDS-preferredDataLocation

schemaIdGuid: bf967aba-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;AO)(A;;RPLCLORC;;;PS)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a54-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;CR;ab721a56-1e2f-11d0-9819-00aa0040529b;;PS)

(OA;;RPWP;77B5B886-944A-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B2-9455-11d1-AEBD-0000F80367C1;;PS)

(OA;;RPWP;E45795B3-9455-11d1-AEBD-0000F80367C1;;PS)

(OA;;RP;037088f8-0ae1-11d2-b422-00a0c968f939;;RS)

(OA;;RP;4c164200-20c0-11d0-a768-00aa006e0529;;RS)

(OA;;RP;bc0ac240-79a9-11d0-9020-00c04fc2d4cf;;RS)(A;;RC;;;AU)

(OA;;RP;59ba2f42-79a2-11d0-9020-00c04fc2d3cf;;AU)

(OA;;RP;77B5B886-944A-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;E45795B3-9455-11d1-AEBD-0000F80367C1;;AU)

(OA;;RP;e48d0154-bcf8-11d1-8702-00c04fb96050;;AU)

(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;WD)

(OA;;RP;5f202010-79a5-11d0-9020-00c04fc2d4cf;;RS)

(OA;;RPWP;bf967a7f-0de6-11d0-a285-00aa003049e2;;CA)

(OA;;RP;46a9b11d-60ae-405a-b7e8-ff8a58d456d2;;S-1-5-32-560)

(OA;;WPRP;6db69a1c-9422-11d1-aebd-0000f80367c1;;S-1-5-32-561)

(OA;;WPRP;5805bc62-bdc9-4428-a5e2-856a0f4c185e;;S-1-5-32-561)

systemPossSuperiors: builtinDomain, organizationalUnit, domainDNS

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_2.270"></a>
## 2.270 Class volume

Contains information about a storage device or file. This class is used to create shared folders.

cn: Volume

ldapDisplayName: volume

governsId: 1.2.840.113556.1.5.36

objectClassCategory: 1

rdnAttId: cn

subClassOf: connectionPoint

systemMustContain: uNCName

systemMayContain: lastContentIndexed, contentIndexingAllowed

systemPossSuperiors: organizationalUnit, domainDNS

schemaIdGuid: bf967abb-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Volume,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows 2000 Server.

<a id="Section_3"></a>
# 3 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [2.135](#Section_2.135) Class msDS-DelegatedManagedServiceAccount | Updated for Windows Server 2025. Added new class, msDS-DelegatedManagedServiceAccount. | Major |
| [2.140](#Section_2.140) Class msDS-GroupManagedServiceAccount | Updated for Windows Server 2025. Updated systemPossSuperiors component list. | Major |

