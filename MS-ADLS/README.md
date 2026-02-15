# [MS-ADLS]: Active Directory Lightweight Directory Services Schema

Last updated: 9/12/2018

Table of Contents

<details>
<summary>1 Introduction</summary>

- [1 Introduction](#Section_1)
  - [1.1 References](#Section_1.1)
</details>

<details>
<summary>2 Attributes</summary>

- [2 Attributes](#Section_2)
  - [2.1 Attribute accountExpires](#Section_2.1)
  - [2.2 Attribute adminContextMenu](#Section_2.2)
  - [2.3 Attribute adminDescription](#Section_2.3)
  - [2.4 Attribute adminDisplayName](#Section_2.4)
  - [2.5 Attribute adminMultiselectPropertyPages](#Section_2.5)
  - [2.6 Attribute adminPropertyPages](#Section_2.6)
  - [2.7 Attribute allowedAttributes](#Section_2.7)
  - [2.8 Attribute allowedAttributesEffective](#Section_2.8)
  - [2.9 Attribute allowedChildClasses](#Section_2.9)
  - [2.10 Attribute allowedChildClassesEffective](#Section_2.10)
  - [2.11 Attribute aNR](#Section_2.11)
  - [2.12 Attribute appliesTo](#Section_2.12)
  - [2.13 Attribute assistant](#Section_2.13)
  - [2.14 Attribute attributeCertificateAttribute](#Section_2.14)
  - [2.15 Attribute attributeDisplayNames](#Section_2.15)
  - [2.16 Attribute attributeID](#Section_2.16)
  - [2.17 Attribute attributeSecurityGUID](#Section_2.17)
  - [2.18 Attribute attributeSyntax](#Section_2.18)
  - [2.19 Attribute attributeTypes](#Section_2.19)
  - [2.20 Attribute audio](#Section_2.20)
  - [2.21 Attribute auxiliaryClass](#Section_2.21)
  - [2.22 Attribute badPasswordTime](#Section_2.22)
  - [2.23 Attribute badPwdCount](#Section_2.23)
  - [2.24 Attribute bridgeheadServerListBL](#Section_2.24)
  - [2.25 Attribute bridgeheadTransportList](#Section_2.25)
  - [2.26 Attribute businessCategory](#Section_2.26)
  - [2.27 Attribute c](#Section_2.27)
  - [2.28 Attribute canonicalName](#Section_2.28)
  - [2.29 Attribute carLicense](#Section_2.29)
  - [2.30 Attribute classDisplayName](#Section_2.30)
  - [2.31 Attribute cn](#Section_2.31)
  - [2.32 Attribute co](#Section_2.32)
  - [2.33 Attribute comment](#Section_2.33)
  - [2.34 Attribute company](#Section_2.34)
  - [2.35 Attribute configurationFile](#Section_2.35)
  - [2.36 Attribute configurationFileGuid](#Section_2.36)
  - [2.37 Attribute contextMenu](#Section_2.37)
  - [2.38 Attribute cost](#Section_2.38)
  - [2.39 Attribute countryCode](#Section_2.39)
  - [2.40 Attribute createDialog](#Section_2.40)
  - [2.41 Attribute createTimeStamp](#Section_2.41)
  - [2.42 Attribute createWizardExt](#Section_2.42)
  - [2.43 Attribute creationWizard](#Section_2.43)
  - [2.44 Attribute dc](#Section_2.44)
  - [2.45 Attribute defaultClassStore](#Section_2.45)
  - [2.46 Attribute defaultGroup](#Section_2.46)
  - [2.47 Attribute defaultHidingValue](#Section_2.47)
  - [2.48 Attribute defaultObjectCategory](#Section_2.48)
  - [2.49 Attribute defaultSecurityDescriptor](#Section_2.49)
  - [2.50 Attribute department](#Section_2.50)
  - [2.51 Attribute departmentNumber](#Section_2.51)
  - [2.52 Attribute description](#Section_2.52)
  - [2.53 Attribute desktopProfile](#Section_2.53)
  - [2.54 Attribute destinationIndicator](#Section_2.54)
  - [2.55 Attribute directReports](#Section_2.55)
  - [2.56 Attribute displayName](#Section_2.56)
  - [2.57 Attribute displayNamePrintable](#Section_2.57)
  - [2.58 Attribute distinguishedName](#Section_2.58)
  - [2.59 Attribute dITContentRules](#Section_2.59)
  - [2.60 Attribute division](#Section_2.60)
  - [2.61 Attribute dMDLocation](#Section_2.61)
  - [2.62 Attribute dmdName](#Section_2.62)
  - [2.63 Attribute dNSHostName](#Section_2.63)
  - [2.64 Attribute dnsRoot](#Section_2.64)
  - [2.65 Attribute dSASignature](#Section_2.65)
  - [2.66 Attribute dSCorePropagationData](#Section_2.66)
  - [2.67 Attribute dSHeuristics](#Section_2.67)
  - [2.68 Attribute dSUIAdminMaximum](#Section_2.68)
  - [2.69 Attribute dSUIAdminNotification](#Section_2.69)
  - [2.70 Attribute dSUIShellMaximum](#Section_2.70)
  - [2.71 Attribute dynamicLDAPServer](#Section_2.71)
  - [2.72 Attribute employeeID](#Section_2.72)
  - [2.73 Attribute employeeNumber](#Section_2.73)
  - [2.74 Attribute employeeType](#Section_2.74)
  - [2.75 Attribute Enabled](#Section_2.75)
  - [2.76 Attribute enabledConnection](#Section_2.76)
  - [2.77 Attribute entryTTL](#Section_2.77)
  - [2.78 Attribute extendedAttributeInfo](#Section_2.78)
  - [2.79 Attribute extendedCharsAllowed](#Section_2.79)
  - [2.80 Attribute extendedClassInfo](#Section_2.80)
  - [2.81 Attribute extensionName](#Section_2.81)
  - [2.82 Attribute extraColumns](#Section_2.82)
  - [2.83 Attribute facsimileTelephoneNumber](#Section_2.83)
  - [2.84 Attribute fromEntry](#Section_2.84)
  - [2.85 Attribute fromServer](#Section_2.85)
  - [2.86 Attribute fSMORoleOwner](#Section_2.86)
  - [2.87 Attribute garbageCollPeriod](#Section_2.87)
  - [2.88 Attribute generatedConnection](#Section_2.88)
  - [2.89 Attribute generationQualifier](#Section_2.89)
  - [2.90 Attribute givenName](#Section_2.90)
  - [2.91 Attribute governsID](#Section_2.91)
  - [2.92 Attribute groupType](#Section_2.92)
  - [2.93 Attribute hasMasterNCs](#Section_2.93)
  - [2.94 Attribute hasPartialReplicaNCs](#Section_2.94)
  - [2.95 Attribute homePhone](#Section_2.95)
  - [2.96 Attribute homePostalAddress](#Section_2.96)
  - [2.97 Attribute houseIdentifier](#Section_2.97)
  - [2.98 Attribute iconPath](#Section_2.98)
  - [2.99 Attribute initials](#Section_2.99)
  - [2.100 Attribute instanceType](#Section_2.100)
  - [2.101 Attribute internationalISDNNumber](#Section_2.101)
  - [2.102 Attribute interSiteTopologyFailover](#Section_2.102)
  - [2.103 Attribute interSiteTopologyGenerator](#Section_2.103)
  - [2.104 Attribute interSiteTopologyRenew](#Section_2.104)
  - [2.105 Attribute invocationId](#Section_2.105)
  - [2.106 Attribute ipPhone](#Section_2.106)
  - [2.107 Attribute isCriticalSystemObject](#Section_2.107)
  - [2.108 Attribute isDefunct](#Section_2.108)
  - [2.109 Attribute isDeleted](#Section_2.109)
  - [2.110 Attribute isEphemeral](#Section_2.110)
  - [2.111 Attribute isMemberOfPartialAttributeSet](#Section_2.111)
  - [2.112 Attribute isRecycled](#Section_2.112)
  - [2.113 Attribute isSingleValued](#Section_2.113)
  - [2.114 Attribute jpegPhoto](#Section_2.114)
  - [2.115 Attribute keywords](#Section_2.115)
  - [2.116 Attribute l](#Section_2.116)
  - [2.117 Attribute labeledURI](#Section_2.117)
  - [2.118 Attribute lastAgedChange](#Section_2.118)
  - [2.119 Attribute lastBackupRestorationTime](#Section_2.119)
  - [2.120 Attribute lastKnownParent](#Section_2.120)
  - [2.121 Attribute lastLogonTimestamp](#Section_2.121)
  - [2.122 Attribute lDAPAdminLimits](#Section_2.122)
  - [2.123 Attribute lDAPDisplayName](#Section_2.123)
  - [2.124 Attribute lDAPIPDenyList](#Section_2.124)
  - [2.125 Attribute linkID](#Section_2.125)
  - [2.126 Attribute localizationDisplayId](#Section_2.126)
  - [2.127 Attribute location](#Section_2.127)
  - [2.128 Attribute lockoutTime](#Section_2.128)
  - [2.129 Attribute mail](#Section_2.129)
  - [2.130 Attribute mailAddress](#Section_2.130)
  - [2.131 Attribute managedBy](#Section_2.131)
  - [2.132 Attribute managedObjects](#Section_2.132)
  - [2.133 Attribute manager](#Section_2.133)
  - [2.134 Attribute masteredBy](#Section_2.134)
  - [2.135 Attribute mayContain](#Section_2.135)
  - [2.136 Attribute member](#Section_2.136)
  - [2.137 Attribute memberOf](#Section_2.137)
  - [2.138 Attribute middleName](#Section_2.138)
  - [2.139 Attribute mobile](#Section_2.139)
  - [2.140 Attribute modifyTimeStamp](#Section_2.140)
  - [2.141 Attribute moveTreeState](#Section_2.141)
  - [2.142 Attribute mS-DS-ConsistencyChildCount](#Section_2.142)
  - [2.143 Attribute mS-DS-ConsistencyGuid](#Section_2.143)
  - [2.144 Attribute mS-DS-ReplicatesNCReason](#Section_2.144)
  - [2.145 Attribute ms-DS-UserAccountAutoLocked](#Section_2.145)
  - [2.146 Attribute ms-DS-UserEncryptedTextPasswordAllowed](#Section_2.146)
  - [2.147 Attribute ms-DS-UserPasswordNotRequired](#Section_2.147)
  - [2.148 Attribute msDS-AllowedDNSSuffixes](#Section_2.148)
  - [2.149 Attribute msDS-Approx-Immed-Subordinates](#Section_2.149)
  - [2.150 Attribute msDS-Auxiliary-Classes](#Section_2.150)
  - [2.151 Attribute msDS-AzApplicationData](#Section_2.151)
  - [2.152 Attribute msDS-AzApplicationName](#Section_2.152)
  - [2.153 Attribute msDS-AzApplicationVersion](#Section_2.153)
  - [2.154 Attribute msDS-AzBizRule](#Section_2.154)
  - [2.155 Attribute msDS-AzBizRuleLanguage](#Section_2.155)
  - [2.156 Attribute msDS-AzClassId](#Section_2.156)
  - [2.157 Attribute msDS-AzDomainTimeout](#Section_2.157)
  - [2.158 Attribute msDS-AzGenerateAudits](#Section_2.158)
  - [2.159 Attribute msDS-AzGenericData](#Section_2.159)
  - [2.160 Attribute msDS-AzLastImportedBizRulePath](#Section_2.160)
  - [2.161 Attribute msDS-AzLDAPQuery](#Section_2.161)
  - [2.162 Attribute msDS-AzMajorVersion](#Section_2.162)
  - [2.163 Attribute msDS-AzMinorVersion](#Section_2.163)
  - [2.164 Attribute msDS-AzObjectGuid](#Section_2.164)
  - [2.165 Attribute msDS-AzOperationID](#Section_2.165)
  - [2.166 Attribute msDS-AzScopeName](#Section_2.166)
  - [2.167 Attribute msDS-AzScriptEngineCacheMax](#Section_2.167)
  - [2.168 Attribute msDS-AzScriptTimeout](#Section_2.168)
  - [2.169 Attribute msDS-AzTaskIsRoleDefinition](#Section_2.169)
  - [2.170 Attribute msDS-Behavior-Version](#Section_2.170)
  - [2.171 Attribute msDS-BridgeHeadServersUsed](#Section_2.171)
  - [2.172 Attribute msDS-DefaultNamingContext](#Section_2.172)
  - [2.173 Attribute msDS-DefaultNamingContextBL](#Section_2.173)
  - [2.174 Attribute msDS-DefaultQuota](#Section_2.174)
  - [2.175 Attribute msDS-DeletedObjectLifetime](#Section_2.175)
  - [2.176 Attribute msDS-DisableForInstances](#Section_2.176)
  - [2.177 Attribute msDS-DisableForInstancesBL](#Section_2.177)
  - [2.178 Attribute msDS-DnsRootAlias](#Section_2.178)
  - [2.179 Attribute msDS-EnabledFeature](#Section_2.179)
  - [2.180 Attribute msDS-EnabledFeatureBL](#Section_2.180)
  - [2.181 Attribute msDS-Entry-Time-To-Die](#Section_2.181)
  - [2.182 Attribute msDS-ExecuteScriptPassword](#Section_2.182)
  - [2.183 Attribute msDS-FilterContainers](#Section_2.183)
  - [2.184 Attribute msDS-HasDomainNCs](#Section_2.184)
  - [2.185 Attribute msDS-HasInstantiatedNCs](#Section_2.185)
  - [2.186 Attribute msDS-hasMasterNCs](#Section_2.186)
  - [2.187 Attribute msDS-IntId](#Section_2.187)
  - [2.188 Attribute msds-memberOfTransitive](#Section_2.188)
  - [2.189 Attribute msds-memberTransitive](#Section_2.189)
  - [2.190 Attribute msDS-LastKnownRDN](#Section_2.190)
  - [2.191 Attribute msDS-LocalEffectiveDeletionTime](#Section_2.191)
  - [2.192 Attribute msDS-LocalEffectiveRecycleTime](#Section_2.192)
  - [2.193 Attribute msDs-masteredBy](#Section_2.193)
  - [2.194 Attribute msDS-MembersForAzRole](#Section_2.194)
  - [2.195 Attribute msDS-MembersForAzRoleBL](#Section_2.195)
  - [2.196 Attribute msDS-NC-Replica-Locations](#Section_2.196)
  - [2.197 Attribute msDS-NCReplCursors](#Section_2.197)
  - [2.198 Attribute msDS-NCReplInboundNeighbors](#Section_2.198)
  - [2.199 Attribute msDS-NCReplOutboundNeighbors](#Section_2.199)
  - [2.200 Attribute msDS-Non-Security-Group-Extra-Classes](#Section_2.200)
  - [2.201 Attribute msDS-NonMembers](#Section_2.201)
  - [2.202 Attribute msDS-NonMembersBL](#Section_2.202)
  - [2.203 Attribute msDS-OperationsForAzRole](#Section_2.203)
  - [2.204 Attribute msDS-OperationsForAzRoleBL](#Section_2.204)
  - [2.205 Attribute msDS-OperationsForAzTask](#Section_2.205)
  - [2.206 Attribute msDS-OperationsForAzTaskBL](#Section_2.206)
  - [2.207 Attribute msDS-OptionalFeatureFlags](#Section_2.207)
  - [2.208 Attribute msDS-OptionalFeatureGUID](#Section_2.208)
  - [2.209 Attribute msDS-Other-Settings](#Section_2.209)
  - [2.210 Attribute msDS-parentdistname](#Section_2.210)
  - [2.211 Attribute msDS-PortLDAP](#Section_2.211)
  - [2.212 Attribute msDS-PortSSL](#Section_2.212)
  - [2.213 Attribute msDS-Preferred-GC-Site](#Section_2.213)
  - [2.214 Attribute msDS-PrincipalName](#Section_2.214)
  - [2.215 Attribute msDS-QuotaAmount](#Section_2.215)
  - [2.216 Attribute msDS-QuotaEffective](#Section_2.216)
  - [2.217 Attribute msDS-QuotaTrustee](#Section_2.217)
  - [2.218 Attribute msDS-QuotaUsed](#Section_2.218)
  - [2.219 Attribute msDS-ReplAttributeMetaData](#Section_2.219)
  - [2.220 Attribute msDS-ReplAuthenticationMode](#Section_2.220)
  - [2.221 Attribute msDS-Replication-Notify-First-DSA-Delay](#Section_2.221)
  - [2.222 Attribute msDS-Replication-Notify-Subsequent-DSA-Delay](#Section_2.222)
  - [2.223 Attribute msDS-ReplicationEpoch](#Section_2.223)
  - [2.224 Attribute msDS-ReplValueMetaData](#Section_2.224)
  - [2.225 Attribute msDS-ReplValueMetaDataExt](#Section_2.225)
  - [2.226 Attribute msDS-RequiredDomainBehaviorVersion](#Section_2.226)
  - [2.227 Attribute msDS-RequiredForestBehaviorVersion](#Section_2.227)
  - [2.228 Attribute msDS-RetiredReplNCSignatures](#Section_2.228)
  - [2.229 Attribute msDs-Schema-Extensions](#Section_2.229)
  - [2.230 Attribute msDS-SCPContainer](#Section_2.230)
  - [2.231 Attribute msDS-SDReferenceDomain](#Section_2.231)
  - [2.232 Attribute msDS-Security-Group-Extra-Classes](#Section_2.232)
  - [2.233 Attribute msDS-ServiceAccount](#Section_2.233)
  - [2.234 Attribute msDS-ServiceAccountBL](#Section_2.234)
  - [2.235 Attribute msDS-ServiceAccountDNSDomain](#Section_2.235)
  - [2.236 Attribute msDS-Settings](#Section_2.236)
  - [2.237 Attribute msDS-TasksForAzRole](#Section_2.237)
  - [2.238 Attribute msDS-TasksForAzRoleBL](#Section_2.238)
  - [2.239 Attribute msDS-TasksForAzTask](#Section_2.239)
  - [2.240 Attribute msDS-TasksForAzTaskBL](#Section_2.240)
  - [2.241 Attribute msDS-TombstoneQuotaFactor](#Section_2.241)
  - [2.242 Attribute msDS-TopQuotaUsage](#Section_2.242)
  - [2.243 Attribute msDS-UpdateScript](#Section_2.243)
  - [2.244 Attribute msDS-User-Account-Control-Computed](#Section_2.244)
  - [2.245 Attribute msDS-UserAccountDisabled](#Section_2.245)
  - [2.246 Attribute msDS-UserDontExpirePassword](#Section_2.246)
  - [2.247 Attribute msDS-UserPasswordExpired](#Section_2.247)
  - [2.248 Attribute msDS-USNLastSyncSuccess](#Section_2.248)
  - [2.249 Attribute mustContain](#Section_2.249)
  - [2.250 Attribute name](#Section_2.250)
  - [2.251 Attribute nCName](#Section_2.251)
  - [2.252 Attribute nETBIOSName](#Section_2.252)
  - [2.253 Attribute networkAddress](#Section_2.253)
  - [2.254 Attribute nonIndexedMetadata](#Section_2.254)
  - [2.255 Attribute notificationList](#Section_2.255)
  - [2.256 Attribute ntPwdHistory](#Section_2.256)
  - [2.257 Attribute nTSecurityDescriptor](#Section_2.257)
  - [2.258 Attribute o](#Section_2.258)
  - [2.259 Attribute objectCategory](#Section_2.259)
  - [2.260 Attribute objectClass](#Section_2.260)
  - [2.261 Attribute objectClassCategory](#Section_2.261)
  - [2.262 Attribute objectClasses](#Section_2.262)
  - [2.263 Attribute objectGUID](#Section_2.263)
  - [2.264 Attribute objectSid](#Section_2.264)
  - [2.265 Attribute objectVersion](#Section_2.265)
  - [2.266 Attribute oMObjectClass](#Section_2.266)
  - [2.267 Attribute oMSyntax](#Section_2.267)
  - [2.268 Attribute options](#Section_2.268)
  - [2.269 Attribute otherFacsimileTelephoneNumber](#Section_2.269)
  - [2.270 Attribute otherHomePhone](#Section_2.270)
  - [2.271 Attribute otherIpPhone](#Section_2.271)
  - [2.272 Attribute otherMobile](#Section_2.272)
  - [2.273 Attribute otherPager](#Section_2.273)
  - [2.274 Attribute otherTelephone](#Section_2.274)
  - [2.275 Attribute otherWellKnownObjects](#Section_2.275)
  - [2.276 Attribute ou](#Section_2.276)
  - [2.277 Attribute owner](#Section_2.277)
  - [2.278 Attribute ownerBL](#Section_2.278)
  - [2.279 Attribute pager](#Section_2.279)
  - [2.280 Attribute parentGUID](#Section_2.280)
  - [2.281 Attribute partialAttributeDeletionList](#Section_2.281)
  - [2.282 Attribute partialAttributeSet](#Section_2.282)
  - [2.283 Attribute pekList](#Section_2.283)
  - [2.284 Attribute personalTitle](#Section_2.284)
  - [2.285 Attribute photo](#Section_2.285)
  - [2.286 Attribute physicalDeliveryOfficeName](#Section_2.286)
  - [2.287 Attribute possibleInferiors](#Section_2.287)
  - [2.288 Attribute possSuperiors](#Section_2.288)
  - [2.289 Attribute postalAddress](#Section_2.289)
  - [2.290 Attribute postalCode](#Section_2.290)
  - [2.291 Attribute postOfficeBox](#Section_2.291)
  - [2.292 Attribute preferredDeliveryMethod](#Section_2.292)
  - [2.293 Attribute preferredLanguage](#Section_2.293)
  - [2.294 Attribute preferredOU](#Section_2.294)
  - [2.295 Attribute prefixMap](#Section_2.295)
  - [2.296 Attribute primaryGroupToken](#Section_2.296)
  - [2.297 Attribute primaryInternationalISDNNumber](#Section_2.297)
  - [2.298 Attribute primaryTelexNumber](#Section_2.298)
  - [2.299 Attribute proxiedObjectName](#Section_2.299)
  - [2.300 Attribute proxyAddresses](#Section_2.300)
  - [2.301 Attribute pwdLastSet](#Section_2.301)
  - [2.302 Attribute queryFilter](#Section_2.302)
  - [2.303 Attribute queryPolicyBL](#Section_2.303)
  - [2.304 Attribute queryPolicyObject](#Section_2.304)
  - [2.305 Attribute rangeLower](#Section_2.305)
  - [2.306 Attribute rangeUpper](#Section_2.306)
  - [2.307 Attribute rDNAttID](#Section_2.307)
  - [2.308 Attribute registeredAddress](#Section_2.308)
  - [2.309 Attribute replInterval](#Section_2.309)
  - [2.310 Attribute replPropertyMetaData](#Section_2.310)
  - [2.311 Attribute replTopologyStayOfExecution](#Section_2.311)
  - [2.312 Attribute replUpToDateVector](#Section_2.312)
  - [2.313 Attribute repsFrom](#Section_2.313)
  - [2.314 Attribute repsTo](#Section_2.314)
  - [2.315 Attribute retiredReplDSASignatures](#Section_2.315)
  - [2.316 Attribute revision](#Section_2.316)
  - [2.317 Attribute rightsGuid](#Section_2.317)
  - [2.318 Attribute roomNumber](#Section_2.318)
  - [2.319 Attribute rootTrust](#Section_2.319)
  - [2.320 Attribute schedule](#Section_2.320)
  - [2.321 Attribute schemaFlagsEx](#Section_2.321)
  - [2.322 Attribute schemaIDGUID](#Section_2.322)
  - [2.323 Attribute schemaInfo](#Section_2.323)
  - [2.324 Attribute schemaUpdate](#Section_2.324)
  - [2.325 Attribute schemaVersion](#Section_2.325)
  - [2.326 Attribute scopeFlags](#Section_2.326)
  - [2.327 Attribute sDRightsEffective](#Section_2.327)
  - [2.328 Attribute searchFlags](#Section_2.328)
  - [2.329 Attribute searchGuide](#Section_2.329)
  - [2.330 Attribute secretary](#Section_2.330)
  - [2.331 Attribute seeAlso](#Section_2.331)
  - [2.332 Attribute serialNumber](#Section_2.332)
  - [2.333 Attribute serverReference](#Section_2.333)
  - [2.334 Attribute serverReferenceBL](#Section_2.334)
  - [2.335 Attribute shellContextMenu](#Section_2.335)
  - [2.336 Attribute shellPropertyPages](#Section_2.336)
  - [2.337 Attribute showInAdvancedViewOnly](#Section_2.337)
  - [2.338 Attribute siteLinkList](#Section_2.338)
  - [2.339 Attribute siteList](#Section_2.339)
  - [2.340 Attribute siteObject](#Section_2.340)
  - [2.341 Attribute siteObjectBL](#Section_2.341)
  - [2.342 Attribute siteServer](#Section_2.342)
  - [2.343 Attribute sn](#Section_2.343)
  - [2.344 Attribute sourceObjectGuid](#Section_2.344)
  - [2.345 Attribute st](#Section_2.345)
  - [2.346 Attribute street](#Section_2.346)
  - [2.347 Attribute streetAddress](#Section_2.347)
  - [2.348 Attribute structuralObjectClass](#Section_2.348)
  - [2.349 Attribute subClassOf](#Section_2.349)
  - [2.350 Attribute subRefs](#Section_2.350)
  - [2.351 Attribute subSchemaSubEntry](#Section_2.351)
  - [2.352 Attribute superiorDNSRoot](#Section_2.352)
  - [2.353 Attribute supplementalCredentials](#Section_2.353)
  - [2.354 Attribute systemAuxiliaryClass](#Section_2.354)
  - [2.355 Attribute systemFlags](#Section_2.355)
  - [2.356 Attribute systemMayContain](#Section_2.356)
  - [2.357 Attribute systemMustContain](#Section_2.357)
  - [2.358 Attribute systemOnly](#Section_2.358)
  - [2.359 Attribute systemPossSuperiors](#Section_2.359)
  - [2.360 Attribute telephoneNumber](#Section_2.360)
  - [2.361 Attribute teletexTerminalIdentifier](#Section_2.361)
  - [2.362 Attribute telexNumber](#Section_2.362)
  - [2.363 Attribute thumbnailLogo](#Section_2.363)
  - [2.364 Attribute thumbnailPhoto](#Section_2.364)
  - [2.365 Attribute title](#Section_2.365)
  - [2.366 Attribute tokenGroups](#Section_2.366)
  - [2.367 Attribute tombstoneLifetime](#Section_2.367)
  - [2.368 Attribute transportAddressAttribute](#Section_2.368)
  - [2.369 Attribute transportDLLName](#Section_2.369)
  - [2.370 Attribute transportType](#Section_2.370)
  - [2.371 Attribute treatAsLeaf](#Section_2.371)
  - [2.372 Attribute trustParent](#Section_2.372)
  - [2.373 Attribute uid](#Section_2.373)
  - [2.374 Attribute unicodePwd](#Section_2.374)
  - [2.375 Attribute uPNSuffixes](#Section_2.375)
  - [2.376 Attribute url](#Section_2.376)
  - [2.377 Attribute userCertificate](#Section_2.377)
  - [2.378 Attribute userParameters](#Section_2.378)
  - [2.379 Attribute userPassword](#Section_2.379)
  - [2.380 Attribute userPKCS12](#Section_2.380)
  - [2.381 Attribute userPrincipalName](#Section_2.381)
  - [2.382 Attribute userSMIMECertificate](#Section_2.382)
  - [2.383 Attribute uSNChanged](#Section_2.383)
  - [2.384 Attribute uSNCreated](#Section_2.384)
  - [2.385 Attribute uSNDSALastObjRemoved](#Section_2.385)
  - [2.386 Attribute USNIntersite](#Section_2.386)
  - [2.387 Attribute uSNLastObjRem](#Section_2.387)
  - [2.388 Attribute uSNSource](#Section_2.388)
  - [2.389 Attribute validAccesses](#Section_2.389)
  - [2.390 Attribute wbemPath](#Section_2.390)
  - [2.391 Attribute wellKnownObjects](#Section_2.391)
  - [2.392 Attribute whenChanged](#Section_2.392)
  - [2.393 Attribute whenCreated](#Section_2.393)
  - [2.394 Attribute wWWHomePage](#Section_2.394)
  - [2.395 Attribute x121Address](#Section_2.395)
  - [2.396 Attribute x500uniqueIdentifier](#Section_2.396)
</details>

<details>
<summary>3 Classes</summary>

- [3 Classes](#Section_3)
  - [3.1 Class applicationSettings](#Section_3.1)
  - [3.2 Class applicationSiteSettings](#Section_3.2)
  - [3.3 Class attributeSchema](#Section_3.3)
  - [3.4 Class classSchema](#Section_3.4)
  - [3.5 Class configuration](#Section_3.5)
  - [3.6 Class container](#Section_3.6)
  - [3.7 Class controlAccessRight](#Section_3.7)
  - [3.8 Class country](#Section_3.8)
  - [3.9 Class crossRef](#Section_3.9)
  - [3.10 Class crossRefContainer](#Section_3.10)
  - [3.11 Class displaySpecifier](#Section_3.11)
  - [3.12 Class dMD](#Section_3.12)
  - [3.13 Class domain](#Section_3.13)
  - [3.14 Class domainDNS](#Section_3.14)
  - [3.15 Class dSUISettings](#Section_3.15)
  - [3.16 Class dynamicObject](#Section_3.16)
  - [3.17 Class foreignSecurityPrincipal](#Section_3.17)
  - [3.18 Class group](#Section_3.18)
  - [3.19 Class groupOfNames](#Section_3.19)
  - [3.20 Class inetOrgPerson](#Section_3.20)
  - [3.21 Class interSiteTransport](#Section_3.21)
  - [3.22 Class interSiteTransportContainer](#Section_3.22)
  - [3.23 Class leaf](#Section_3.23)
  - [3.24 Class locality](#Section_3.24)
  - [3.25 Class lostAndFound](#Section_3.25)
  - [3.26 Class msDS-AzAdminManager](#Section_3.26)
  - [3.27 Class msDS-AzApplication](#Section_3.27)
  - [3.28 Class msDS-AzOperation](#Section_3.28)
  - [3.29 Class msDS-AzRole](#Section_3.29)
  - [3.30 Class msDS-AzScope](#Section_3.30)
  - [3.31 Class msDS-AzTask](#Section_3.31)
  - [3.32 Class msDS-BindableObject](#Section_3.32)
  - [3.33 Class msDS-BindProxy](#Section_3.33)
  - [3.34 Class msDS-OptionalFeature](#Section_3.34)
  - [3.35 Class msDS-QuotaContainer](#Section_3.35)
  - [3.36 Class msDS-QuotaControl](#Section_3.36)
  - [3.37 Class msDS-ServiceConnectionPointPublicationService](#Section_3.37)
  - [3.38 Class nTDSConnection](#Section_3.38)
  - [3.39 Class nTDSDSA](#Section_3.39)
  - [3.40 Class nTDSService](#Section_3.40)
  - [3.41 Class nTDSSiteSettings](#Section_3.41)
  - [3.42 Class organizationalPerson](#Section_3.42)
  - [3.43 Class organization](#Section_3.43)
  - [3.44 Class organizationalUnit](#Section_3.44)
  - [3.45 Class person](#Section_3.45)
  - [3.46 Class queryPolicy](#Section_3.46)
  - [3.47 Class securityPrincipal](#Section_3.47)
  - [3.48 Class server](#Section_3.48)
  - [3.49 Class serversContainer](#Section_3.49)
  - [3.50 Class site](#Section_3.50)
  - [3.51 Class siteLink](#Section_3.51)
  - [3.52 Class siteLinkBridge](#Section_3.52)
  - [3.53 Class sitesContainer](#Section_3.53)
  - [3.54 Class subnet](#Section_3.54)
  - [3.55 Class subnetContainer](#Section_3.55)
  - [3.56 Class subSchema](#Section_3.56)
  - [3.57 Class syncEngineAuxConfiguration](#Section_3.57)
  - [3.58 Class syncEngineAuxObject](#Section_3.58)
  - [3.59 Class top](#Section_3.59)
  - [3.60 Class userProxy](#Section_3.60)
  - [3.61 Class userProxyFull](#Section_3.61)
  - [3.62 Class user](#Section_3.62)
</details>

<details>
<summary>4 Change Tracking</summary>

- [4 Change Tracking](#Section_4)
</details>
<a id="Section_1"></a>
# 1 Introduction

Active Directory Lightweight Directory Services Schema contains a list of the objects that exist in the **Active Directory Lightweight Directory Services (AD LDS)** schema. Active Directory and all associated terms and concepts are described in [MS-ADTS](../MS-ADTS/MS-ADTS.md).

**Note**: This document is not intended to stand on its own; it is intended to act as an appendix to the Active Directory Technical Specification. For details about the AD LDS schema, see [MS-ADTS] section 3.1.1.2 (Active Directory Schema).

**Note**: The object definitions in this document are also available for download in LDAP Data Interchange Format (LDIF) at the following location: [[MSFT-ADSCHEMA]](https://go.microsoft.com/fwlink/?LinkId=212555).

**Note**: The object definitions in this document contain information about the product in which the objects were first implemented in the AD LDS schema. Unless otherwise specified, objects continue to be available in the AD LDS schema in all subsequent versions of the product according to the list of products in [MS-ADTS] section 1 and according to the information about AD LDS for Windows Client operating systems in [MS-ADTS] section 1.

<a id="Section_1.1"></a>
## 1.1 References

[JFIF] Hamilton, E., "JPEG File Interchange Format, Version 1.02", September 1992, [http://www.w3.org/Graphics/JPEG/jfif.txt](https://go.microsoft.com/fwlink/?LinkId=89925)

[MS-ADOD] Microsoft Corporation, "[Active Directory Protocols Overview](../MS-ADOD/MS-ADOD.md)".

[MS-ADTS] Microsoft Corporation, "[Active Directory Technical Specification](../MS-ADTS/MS-ADTS.md)".

[MS-DTYP] Microsoft Corporation, "[Windows Data Types](../MS-DTYP/MS-DTYP.md)".

[MSDN-ExtUserIntDirObj] Microsoft Corporation, "Extending the User Interface for Directory Objects", [http://msdn.microsoft.com/en-us/library/ms676902.aspx](https://go.microsoft.com/fwlink/?LinkId=107095)

[MSDN-GroupType] Microsoft Corporation, "Group-Type", [http://msdn.microsoft.com/en-us/library/ms675935.aspx](https://go.microsoft.com/fwlink/?LinkId=90016)

[MSFT-ADSCHEMA] Microsoft Corporation, "Combined Active Directory Schema Classes and Attributes for Windows Server", December 2013, [http://www.microsoft.com/downloads/en/details.aspx?displaylang=en&FamilyID=da2fc73a-3d35-484c-9bea-f023dcba7275](https://go.microsoft.com/fwlink/?LinkId=212555)

[RFC2251] Wahl, M., Howes, T., and Kille, S., "Lightweight Directory Access Protocol (v3)", RFC 2251, December 1997, [http://www.ietf.org/rfc/rfc2251.txt](https://go.microsoft.com/fwlink/?LinkId=90325)

[RFC2849] Good, G., "The LDAP Data Interchange Format (LDIF) - Technical Specification", RFC 2849, June 2000, [http://www.ietf.org/rfc/rfc2849.txt](https://go.microsoft.com/fwlink/?LinkId=90389)

[RFC3280] Housley, R., Polk, W., Ford, W., and Solo, D., "Internet X.509 Public Key Infrastructure Certificate and Certificate Revocation List (CRL) Profile", RFC 3280, April 2002, [http://www.ietf.org/rfc/rfc3280.txt](https://go.microsoft.com/fwlink/?LinkId=90414)

[RFC822] Crocker, D.H., "Standard for ARPA Internet Text Messages", STD 11, RFC 822, August 1982, [http://www.ietf.org/rfc/rfc0822.txt](https://go.microsoft.com/fwlink/?LinkId=90497)

[X121] ITU-T, "Public data networks - Network aspects - International numbering plan for public data networks", Recommendation X.121, October 2000, [http://www.itu.int/rec/T-REC-X.121/en](https://go.microsoft.com/fwlink/?LinkId=107134)

[X500] ITU-T, "Information Technology - Open Systems Interconnection - The Directory: Overview of Concepts, Models and Services", Recommendation X.500, August 2005, [http://www.itu.int/rec/T-REC-X.500-200508-S/en](https://go.microsoft.com/fwlink/?LinkId=90589)

**Note** There is a charge to download the specification.

<a id="Section_2"></a>
# 2 Attributes

The following sections specify the attributes in the Active Directory Lightweight Directory Services schema.

These sections normatively specify the schema definition of each attribute and version-specific behavior of those schema definitions (such as when the attribute was added to the schema). Additionally, as an aid to the reader some of the sections include informative notes about how the attribute can be used.

**Note**: Lines of text in the attribute definitions that are excessively long have been "folded" in accordance with [[RFC2849]](https://go.microsoft.com/fwlink/?LinkId=90389) Note 2.

<a id="Section_2.1"></a>
## 2.1 Attribute accountExpires

This attribute specifies the date when an account expires. This value represents the number of 100-nanosecond intervals since January 1, 1601, Coordinated Universal Time (Greenwich Mean Time). A value of 0 or 0x7FFFFFFFFFFFFFFF (9223372036854775807) indicates that the account never expires.

cn: Account-Expires

ldapDisplayName: accountExpires

attributeId: 1.2.840.113556.1.4.159

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967915-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Active Directory Application Mode (ADAM) and Windows Server 2008 operating system.

<a id="Section_2.2"></a>
## 2.2 Attribute adminContextMenu

This attribute specifies the order number and globally unique identifier (GUID) of the context menu to be used on administration screens. GUID is defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.3.4.

cn: Admin-Context-Menu

ldapDisplayName: adminContextMenu

attributeId: 1.2.840.113556.1.4.614

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 553fd038-f32e-11d0-b0bc-00c04fd8dca6

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.3"></a>
## 2.3 Attribute adminDescription

This attribute specifies the description displayed on administration screens.

cn: Admin-Description

ldapDisplayName: adminDescription

attributeId: 1.2.840.113556.1.2.226

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967919-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.4"></a>
## 2.4 Attribute adminDisplayName

This attribute specifies the name displayed on administration screens.

cn: Admin-Display-Name

ldapDisplayName: adminDisplayName

attributeId: 1.2.840.113556.1.2.194

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96791a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 256

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.5"></a>
## 2.5 Attribute adminMultiselectPropertyPages

A multivalued attribute whose values are a number representing the order in which the pages are added and a GUID of a component object model (COM) object that implements multiselect property pages for the Active Directory Users and Computers snap-in.

cn: Admin-Multiselect-Property-Pages

ldapDisplayName: adminMultiselectPropertyPages

attributeId: 1.2.840.113556.1.4.1690

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 18f9b67d-5ac6-4b3b-97db-d0a406afb7ba

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.6"></a>
## 2.6 Attribute adminPropertyPages

This attribute specifies the order number and GUID of the property pages for an object to be displayed on Active Directory administration screens. For more information, see the document "Extending the User Interface for Directory Objects" [[MSDN-ExtUserIntDirObj]](https://go.microsoft.com/fwlink/?LinkId=107095).

cn: Admin-Property-Pages

ldapDisplayName: adminPropertyPages

attributeId: 1.2.840.113556.1.4.562

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 52458038-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.7"></a>
## 2.7 Attribute allowedAttributes

This attribute specifies attributes that are permitted to be assigned to a class.

cn: Allowed-Attributes

ldapDisplayName: allowedAttributes

attributeId: 1.2.840.113556.1.4.913

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad940-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.8"></a>
## 2.8 Attribute allowedAttributesEffective

This attribute specifies a list of attributes that can be modified on the object.

cn: Allowed-Attributes-Effective

ldapDisplayName: allowedAttributesEffective

attributeId: 1.2.840.113556.1.4.914

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad941-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.9"></a>
## 2.9 Attribute allowedChildClasses

This attribute specifies classes that can be contained by a class.

cn: Allowed-Child-Classes

ldapDisplayName: allowedChildClasses

attributeId: 1.2.840.113556.1.4.911

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad942-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.10"></a>
## 2.10 Attribute allowedChildClassesEffective

This attribute specifies a list of classes that can be modified.

cn: Allowed-Child-Classes-Effective

ldapDisplayName: allowedChildClassesEffective

attributeId: 1.2.840.113556.1.4.912

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad943-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.11"></a>
## 2.11 Attribute aNR

This attribute specifies whether ambiguous name resolution is to be used when choosing between objects.

cn: ANR

ldapDisplayName: aNR

attributeId: 1.2.840.113556.1.4.1208

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 45b01500-c419-11d1-bbc9-0080c76670c0

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.12"></a>
## 2.12 Attribute appliesTo

This attribute contains the list of object classes that the extended right applies to. In the list, an object class is represented by the schemaIDGUID property for its schemaClass object.

cn: Applies-To

ldapDisplayName: appliesTo

attributeId: 1.2.840.113556.1.4.341

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 8297931d-86d3-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.13"></a>
## 2.13 Attribute assistant

This attribute specifies the distinguished name (DN) of a user's administrative assistant.

cn: Assistant

ldapDisplayName: assistant

attributeId: 1.2.840.113556.1.4.652

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 0296c11c-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.14"></a>
## 2.14 Attribute attributeCertificateAttribute

This attribute specifies a digitally signed or certified identity and set of attributes. It is used to bind authorization information to an identity.

cn: attributeCertificateAttribute

ldapDisplayName: attributeCertificateAttribute

attributeId: 2.5.4.58

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: fa4693bb-7bc2-4cb9-81a8-c99c43b7905e

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.15"></a>
## 2.15 Attribute attributeDisplayNames

This attribute specifies the name to be displayed for this object.

cn: Attribute-Display-Names

ldapDisplayName: attributeDisplayNames

attributeId: 1.2.840.113556.1.4.748

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: cb843f80-48d9-11d1-a9c3-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.16"></a>
## 2.16 Attribute attributeID

This attribute specifies the unique X.500 object identifier (OID) that identifies an attribute. For more information, see [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Attribute-ID

ldapDisplayName: attributeID

attributeId: 1.2.840.113556.1.2.30

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967922-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.17"></a>
## 2.17 Attribute attributeSecurityGUID

This attribute specifies the GUID to be used to apply security credentials to a set of objects.

cn: Attribute-Security-GUID

ldapDisplayName: attributeSecurityGUID

attributeId: 1.2.840.113556.1.4.149

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967924-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.18"></a>
## 2.18 Attribute attributeSyntax

This attribute specifies the OID for the syntax for this attribute.

cn: Attribute-Syntax

ldapDisplayName: attributeSyntax

attributeId: 1.2.840.113556.1.2.32

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967925-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.19"></a>
## 2.19 Attribute attributeTypes

This attribute specifies a multivalued property containing strings that represent each attribute in the schema.

cn: Attribute-Types

ldapDisplayName: attributeTypes

attributeId: 2.5.21.5

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad944-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.20"></a>
## 2.20 Attribute audio

This attribute allows the storing of sounds in Active Directory.

cn: audio

ldapDisplayName: audio

attributeId: 0.9.2342.19200300.100.1.55

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: d0e1d224-e1a0-42ce-a2da-793ba5244f35

systemOnly: FALSE

searchFlags: 0

rangeUpper: 250000

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.21"></a>
## 2.21 Attribute auxiliaryClass

This attribute specifies the list of auxiliary classes to be associated with this class.

cn: Auxiliary-Class

ldapDisplayName: auxiliaryClass

attributeId: 1.2.840.113556.1.2.351

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf96792c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.22"></a>
## 2.22 Attribute badPasswordTime

This attribute specifies the last time and date that an attempt to log on to this account was made using an invalid password. This value is stored as a large integer that represents the number of 100-nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the last "bad password time" is unknown.

cn: Bad-Password-Time

ldapDisplayName: badPasswordTime

attributeId: 1.2.840.113556.1.4.49

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf96792d-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.23"></a>
## 2.23 Attribute badPwdCount

This attribute specifies the number of times the user tried to log on to the account by using an incorrect password. A value of 0 indicates that the value is unknown.

cn: Bad-Pwd-Count

ldapDisplayName: badPwdCount

attributeId: 1.2.840.113556.1.4.12

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96792e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.24"></a>
## 2.24 Attribute bridgeheadServerListBL

This attribute is the back link attribute of bridgeheadServerList and contains the list of servers that are bridgeheads for replication.

cn: Bridgehead-Server-List-BL

ldapDisplayName: bridgeheadServerListBL

attributeId: 1.2.840.113556.1.4.820

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdb-8951-11d1-aebc-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 99

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.25"></a>
## 2.25 Attribute bridgeheadTransportList

This attribute specifies transports for which this server is a bridgehead.

cn: Bridgehead-Transport-List

ldapDisplayName: bridgeheadTransportList

attributeId: 1.2.840.113556.1.4.819

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cda-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 98

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.26"></a>
## 2.26 Attribute businessCategory

This attribute specifies descriptive text on an organizational unit.

cn: Business-Category

ldapDisplayName: businessCategory

attributeId: 2.5.4.15

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967931-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.27"></a>
## 2.27 Attribute c

This attribute specifies the country/region in the address of the user. The country/region is represented as the two-character country code based on ISO-3166.

cn: Country-Name

ldapDisplayName: c

attributeId: 2.5.4.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967945-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 3

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.28"></a>
## 2.28 Attribute canonicalName

This attribute specifies the name of the object in canonical format. "myserver2.fabrikam.com/users/jeffsmith" is an example of a DN in canonical format.

This is a constructed attribute. The results returned are identical to those returned by the following Active Directory function: DsCrackNames(NULL, DS_NAME_FLAG_SYNTACTICAL_ONLY, DS_FQDN_1779_NAME, DS_CANONICAL_NAME, ...).

cn: Canonical-Name

ldapDisplayName: canonicalName

attributeId: 1.2.840.113556.1.4.916

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad945-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.29"></a>
## 2.29 Attribute carLicense

This attribute specifies the vehicle license or registration plate.

cn: carLicense

ldapDisplayName: carLicense

attributeId: 2.16.840.1.113730.3.1.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d4159c92-957d-4a87-8a67-8d2934e01649

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.30"></a>
## 2.30 Attribute classDisplayName

This attribute specifies the object name to be displayed on dialogs.

cn: Class-Display-Name

ldapDisplayName: classDisplayName

attributeId: 1.2.840.113556.1.4.610

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 548e1c22-dea6-11d0-b010-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.31"></a>
## 2.31 Attribute cn

This attribute specifies the name that represents an object. This attribute is used to perform searches.

cn: Common-Name

ldapDisplayName: cn

attributeId: 2.5.4.3

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96793f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.32"></a>
## 2.32 Attribute co

This attribute specifies the country/region in which the user is located.

cn: Text-Country

ldapDisplayName: co

attributeId: 1.2.840.113556.1.2.131

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa7-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.33"></a>
## 2.33 Attribute comment

This attribute specifies the user's comments.

cn: User-Comment

ldapDisplayName: comment

attributeId: 1.2.840.113556.1.4.156

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a6a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.34"></a>
## 2.34 Attribute company

This attribute specifies the user's company name.

cn: Company

ldapDisplayName: company

attributeId: 1.2.840.113556.1.2.146

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff88-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.35"></a>
## 2.35 Attribute configurationFile

ms-DS-Configuration-File

cn: ms-DS-Configuration-File

ldapDisplayName: configurationFile

attributeId: 1.2.840.113556.1.4.1889

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.36"></a>
## 2.36 Attribute configurationFileGuid

ms-DS-Configuration-File-Guid

cn: ms-DS-Configuration-File-Guid

ldapDisplayName: configurationFileGuid

attributeId: 1.2.840.113556.1.4.1886

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.37"></a>
## 2.37 Attribute contextMenu

This attribute specifies the order number and GUID of the context menu to be used for an object.

cn: Context-Menu

ldapDisplayName: contextMenu

attributeId: 1.2.840.113556.1.4.499

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 4d8601ee-ac85-11d0-afe3-00c04fd930c9

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.38"></a>
## 2.38 Attribute cost

This attribute contains the relative cost for routing messages through a particular site connector.

cn: Cost

ldapDisplayName: cost

attributeId: 1.2.840.113556.1.2.135

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967944-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.39"></a>
## 2.39 Attribute countryCode

This attribute specifies the country code for the user's language of choice.

cn: Country-Code

ldapDisplayName: countryCode

attributeId: 1.2.840.113556.1.4.25

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 5fd42471-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 65535

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.40"></a>
## 2.40 Attribute createDialog

This attribute specifies the GUID of a dialog that is used for creating an associated object.

cn: Create-Dialog

ldapDisplayName: createDialog

attributeId: 1.2.840.113556.1.4.810

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2b09958a-8931-11d1-aebc-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.41"></a>
## 2.41 Attribute createTimeStamp

This attribute specifies the date when this object was created. This value is replicated.

cn: Create-Time-Stamp

ldapDisplayName: createTimeStamp

attributeId: 2.5.18.1

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 2df90d73-009f-11d2-aa4c-00c04fd7d83a

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.42"></a>
## 2.42 Attribute createWizardExt

This attribute specifies the GUID of the wizard extensions for creating an associated object.

cn: Create-Wizard-Ext

ldapDisplayName: createWizardExt

attributeId: 1.2.840.113556.1.4.812

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2b09958b-8931-11d1-aebc-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.43"></a>
## 2.43 Attribute creationWizard

This attribute specifies the wizard to activate when creating objects of this class.

cn: Creation-Wizard

ldapDisplayName: creationWizard

attributeId: 1.2.840.113556.1.4.498

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 4d8601ed-ac85-11d0-afe3-00c04fd930c9

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.44"></a>
## 2.44 Attribute dc

This attribute specifies the naming attribute for domain and DNS objects. This attribute is usually displayed as dc=DomainName.

cn: Domain-Component

ldapDisplayName: dc

attributeId: 0.9.2342.19200300.100.1.25

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 19195a55-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 255

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.45"></a>
## 2.45 Attribute defaultClassStore

This attribute specifies the default class store for a given user.

cn: Default-Class-Store

ldapDisplayName: defaultClassStore

attributeId: 1.2.840.113556.1.4.213

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967948-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.46"></a>
## 2.46 Attribute defaultGroup

This attribute specifies the group to which this object is assigned when it is created.

cn: Default-Group

ldapDisplayName: defaultGroup

attributeId: 1.2.840.113556.1.4.480

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 720bc4e2-a54a-11d0-afdf-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.47"></a>
## 2.47 Attribute defaultHidingValue

This attribute specifies a Boolean value that specifies the default setting of the showInAdvancedViewOnly property of new instances of this class.

cn: Default-Hiding-Value

ldapDisplayName: defaultHidingValue

attributeId: 1.2.840.113556.1.4.518

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: b7b13116-b82e-11d0-afee-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.48"></a>
## 2.48 Attribute defaultObjectCategory

This attribute specifies the object category to use for an object if one is not specified.

cn: Default-Object-Category

ldapDisplayName: defaultObjectCategory

attributeId: 1.2.840.113556.1.4.783

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97367-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.49"></a>
## 2.49 Attribute defaultSecurityDescriptor

This attribute specifies the security descriptor to be assigned to the object when it is first created.

cn: Default-Security-Descriptor

ldapDisplayName: defaultSecurityDescriptor

attributeId: 1.2.840.113556.1.4.224

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 807a6d30-1669-11d0-a064-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.50"></a>
## 2.50 Attribute department

This attribute contains the name for the department in which the user works.

cn: Department

ldapDisplayName: department

attributeId: 1.2.840.113556.1.2.141

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96794f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.51"></a>
## 2.51 Attribute departmentNumber

This attribute identifies a department within an organization.

cn: departmentNumber

ldapDisplayName: departmentNumber

attributeId: 2.16.840.1.113730.3.1.2

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: be9ef6ee-cbc7-4f22-b27b-96967e7ee585

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.52"></a>
## 2.52 Attribute description

This attribute contains the description to display for an object. This value is treated as single-valued by the Active Directory system.

cn: Description

ldapDisplayName: description

attributeId: 2.5.4.13

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967950-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.53"></a>
## 2.53 Attribute desktopProfile

This attribute specifies the location of the desktop profile for a user or group of users.

cn: Desktop-Profile

ldapDisplayName: desktopProfile

attributeId: 1.2.840.113556.1.4.346

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: eea65906-8ac6-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.54"></a>
## 2.54 Attribute destinationIndicator

This attribute is part of the X.500 specification [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Destination-Indicator

ldapDisplayName: destinationIndicator

attributeId: 2.5.4.27

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: bf967951-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.55"></a>
## 2.55 Attribute directReports

This attribute contains the list of users that directly report to the user. The users that are listed as reports are those that have the property manager property set to this user. Each item in the list is a linked reference to the object that represents the user.

cn: Reports

ldapDisplayName: directReports

attributeId: 1.2.840.113556.1.2.436

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a1c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

linkID: 43

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.56"></a>
## 2.56 Attribute displayName

This attribute specifies the display name for an object. This attribute is usually the combination of the user's first name, middle initial, and last name.

cn: Display-Name

ldapDisplayName: displayName

attributeId: 1.2.840.113556.1.2.13

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967953-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.57"></a>
## 2.57 Attribute displayNamePrintable

This attribute specifies the printable display name for an object. The printable display name is usually the combination of the user's first name, middle initial, and last name.

cn: Display-Name-Printable

ldapDisplayName: displayNamePrintable

attributeId: 1.2.840.113556.1.2.353

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: TRUE

schemaIdGuid: bf967954-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

rangeLower: 1

rangeUpper: 256

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.58"></a>
## 2.58 Attribute distinguishedName

This attribute is the same as the DN for an object.

cn: Obj-Dist-Name

ldapDisplayName: distinguishedName

attributeId: 2.5.4.49

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679e4-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.59"></a>
## 2.59 Attribute dITContentRules

This attribute specifies the permissible content of entries of a particular structural object class via the identification of an optional set of auxiliary object classes, mandatory, optional, and precluded attributes. Collective attributes are included in DIT-Content-Rules, as specified in [[RFC2251]](https://go.microsoft.com/fwlink/?LinkId=90325) section 3.2.1.

cn: DIT-Content-Rules

ldapDisplayName: dITContentRules

attributeId: 2.5.21.2

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad946-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.60"></a>
## 2.60 Attribute division

This attribute specifies the user's division.

cn: Division

ldapDisplayName: division

attributeId: 1.2.840.113556.1.4.261

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: fe6136a0-2073-11d0-a9c2-00aa006c33ed

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.61"></a>
## 2.61 Attribute dMDLocation

This attribute specifies the DN that identifies the schema partition.

cn: DMD-Location

ldapDisplayName: dMDLocation

attributeId: 1.2.840.113556.1.2.36

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: f0f8ff8b-1191-11d0-a060-00aa006c33ed

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.62"></a>
## 2.62 Attribute dmdName

This attribute specifies a name that is used to identify the schema partition.

cn: DMD-Name

ldapDisplayName: dmdName

attributeId: 1.2.840.113556.1.2.598

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 167757b9-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.63"></a>
## 2.63 Attribute dNSHostName

This attribute specifies the name of the computer as it is registered in DNS.

cn: DNS-Host-Name

ldapDisplayName: dNSHostName

attributeId: 1.2.840.113556.1.4.619

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 72e39547-7b18-11d1-adef-00c04fd8d5cd

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

attributeSecurityGuid: 72e39547-7b18-11d1-adef-00c04fd8d5cd

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.64"></a>
## 2.64 Attribute dnsRoot

This attribute specifies the FQDN (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) that is associated with a naming context. This attribute is set on a crossRef object and is used for referral generation.

When a search is made through an entire domain tree, the search has to be initiated at the Dns-Root object. This attribute can be multivalued, in which case multiple referrals are generated.

cn: Dns-Root

ldapDisplayName: dnsRoot

attributeId: 1.2.840.113556.1.4.28

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967959-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 255

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.65"></a>
## 2.65 Attribute dSASignature

This attribute specifies the DSA-Signature of an object, which is the Invocation-ID of the last directory to modify the object.

cn: DSA-Signature

ldapDisplayName: dSASignature

attributeId: 1.2.840.113556.1.2.74

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 167757bc-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.66"></a>
## 2.66 Attribute dSCorePropagationData

This attribute is for internal use only.

cn: DS-Core-Propagation-Data

ldapDisplayName: dSCorePropagationData

attributeId: 1.2.840.113556.1.4.1357

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: FALSE

schemaIdGuid: d167aa4b-8b08-11d2-9939-0000f87a57d4

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.67"></a>
## 2.67 Attribute dSHeuristics

This attribute contains global settings for the entire forest.

cn: DS-Heuristics

ldapDisplayName: dSHeuristics

attributeId: 1.2.840.113556.1.2.212

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff86-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.68"></a>
## 2.68 Attribute dSUIAdminMaximum

This attribute specifies the default maximum number of objects that are shown in a container by the admin UI.

cn: DS-UI-Admin-Maximum

ldapDisplayName: dSUIAdminMaximum

attributeId: 1.2.840.113556.1.4.1344

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ee8d0ae0-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.69"></a>
## 2.69 Attribute dSUIAdminNotification

This attribute specifies a list of the GUIDs of COM objects that support a callback interface that DSAdmin calls when an action has occurred on an object through the UI.

cn: DS-UI-Admin-Notification

ldapDisplayName: dSUIAdminNotification

attributeId: 1.2.840.113556.1.4.1343

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f6ea0a94-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.70"></a>
## 2.70 Attribute dSUIShellMaximum

This attribute specifies the default maximum number of objects that are shown in a container by the shell UI.

cn: DS-UI-Shell-Maximum

ldapDisplayName: dSUIShellMaximum

attributeId: 1.2.840.113556.1.4.1345

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: fcca766a-6f91-11d2-9905-0000f87a57d4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.71"></a>
## 2.71 Attribute dynamicLDAPServer

This attribute specifies the fully qualified domain name (FQDN) (1) ([MS-ADTS](../MS-ADTS/MS-ADTS.md) section 1.1) of the server handling dynamic properties for this account.

cn: Dynamic-LDAP-Server

ldapDisplayName: dynamicLDAPServer

attributeId: 1.2.840.113556.1.4.537

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 52458021-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.72"></a>
## 2.72 Attribute employeeID

This attribute specifies the ID of an employee.

cn: Employee-ID

ldapDisplayName: employeeID

attributeId: 1.2.840.113556.1.4.35

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967962-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 16

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.73"></a>
## 2.73 Attribute employeeNumber

This attribute specifies the number assigned to an employee other than the employee ID.

cn: Employee-Number

ldapDisplayName: employeeNumber

attributeId: 1.2.840.113556.1.2.610

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a8df73ef-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 512

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.74"></a>
## 2.74 Attribute employeeType

This attribute specifies the job category for an employee.

cn: Employee-Type

ldapDisplayName: employeeType

attributeId: 1.2.840.113556.1.2.613

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a8df73f0-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 256

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.75"></a>
## 2.75 Attribute Enabled

This attribute is used to signify whether or not a given crossRef is enabled.

cn: Enabled

ldapDisplayName: Enabled

attributeId: 1.2.840.113556.1.2.557

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: a8df73f2-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.76"></a>
## 2.76 Attribute enabledConnection

This attribute indicates whether a connection is available for use.

cn: Enabled-Connection

ldapDisplayName: enabledConnection

attributeId: 1.2.840.113556.1.4.36

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967963-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.77"></a>
## 2.77 Attribute entryTTL

This operational attribute is maintained by the server and appears to be present in every dynamic entry. The attribute is not present when the entry does not contain the [dynamicObject](#Section_9ad703499ffe4624aafbe30de8d82b45) object class.

The value of this attribute is the time, in seconds, that the entry continues to exist before disappearing from the directory. In the absence of intervening "refresh" operations, the values returned by reading the attribute in two successive searches are guaranteed to be nonincreasing. The smallest permissible value is 0, indicating that the entry can disappear without warning. The attribute is marked NO-USER-MODIFICATION because it can only be changed by using the refresh operation.

cn: Entry-TTL

ldapDisplayName: entryTTL

attributeId: 1.3.6.1.4.1.1466.101.119.3

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: d213decc-d81a-4384-aac2-dcfcfd631cf8

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 31557600

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.78"></a>
## 2.78 Attribute extendedAttributeInfo

This attribute specifies a multivalued property containing strings that represent additional information for each attribute.

cn: Extended-Attribute-Info

ldapDisplayName: extendedAttributeInfo

attributeId: 1.2.840.113556.1.4.909

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad947-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.79"></a>
## 2.79 Attribute extendedCharsAllowed

This attribute indicates whether extended characters are allowed in the value of this attribute. Applies only to IA5, Numeric, Printable, and Teletex string attributes.

cn: Extended-Chars-Allowed

ldapDisplayName: extendedCharsAllowed

attributeId: 1.2.840.113556.1.2.380

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967966-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.80"></a>
## 2.80 Attribute extendedClassInfo

This attribute specifies a multivalued property containing strings that represent additional information for each class. Each value contains the [governsID](#Section_1c2fcfcf025946deb2cb06b9e32644e6), [lDAPDisplayName](#Section_fc92e718c06c4906a403cee6de4da32b), and [schemaIDGUID](#Section_341f6a45703e4845988d6e606e439b24) of the class.

cn: Extended-Class-Info

ldapDisplayName: extendedClassInfo

attributeId: 1.2.840.113556.1.4.908

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad948-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.81"></a>
## 2.81 Attribute extensionName

This attribute specifies the name of a property page that is used to extend the UI of a directory object.

cn: Extension-Name

ldapDisplayName: extensionName

attributeId: 1.2.840.113556.1.2.227

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967972-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

rangeLower: 1

rangeUpper: 255

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.82"></a>
## 2.82 Attribute extraColumns

This is a multivalued attribute whose values consist of a 5 tuple: (attribute name), (column title), (default visibility (0,1)), (column width (-1 for auto width)), 0 (reserved for future use; has to be zero). This value is used by the Active Directory Users and Computers console.

cn: Extra-Columns

ldapDisplayName: extraColumns

attributeId: 1.2.840.113556.1.4.1687

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d24e2846-1dd9-4bcf-99d7-a6227cc86da7

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.83"></a>
## 2.83 Attribute facsimileTelephoneNumber

This attribute contains the telephone number of the user's business fax machine.

cn: Facsimile-Telephone-Number

ldapDisplayName: facsimileTelephoneNumber

attributeId: 2.5.4.23

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967974-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.84"></a>
## 2.84 Attribute fromEntry

This is a constructed attribute that is TRUE if the object is writable and FALSE if it is read-only; for example, a global catalog (GC) replica instance.

cn: From-Entry

ldapDisplayName: fromEntry

attributeId: 1.2.840.113556.1.4.910

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: FALSE

schemaIdGuid: 9a7ad949-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.85"></a>
## 2.85 Attribute fromServer

This attribute specifies the distinguished name of the replication source server.

cn: From-Server

ldapDisplayName: fromServer

attributeId: 1.2.840.113556.1.4.40

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf967979-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.86"></a>
## 2.86 Attribute fSMORoleOwner

The fSMORoleOwner attribute stores the distinguished name of a DSA object as described in [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.11 (FSMO Roles).

cn: FSMO-Role-Owner

ldapDisplayName: fSMORoleOwner

attributeId: 1.2.840.113556.1.4.369

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 66171887-8f3c-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.87"></a>
## 2.87 Attribute garbageCollPeriod

This attribute is located on the CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,... object. It represents the period of time, in hours, between directory service (DS) garbage collection runs.

cn: Garbage-Coll-Period

ldapDisplayName: garbageCollPeriod

attributeId: 1.2.840.113556.1.2.301

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 5fd424a1-1262-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.88"></a>
## 2.88 Attribute generatedConnection

This attribute is TRUE if this connection was created by auto-topology generation.

cn: Generated-Connection

ldapDisplayName: generatedConnection

attributeId: 1.2.840.113556.1.4.41

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf96797a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.89"></a>
## 2.89 Attribute generationQualifier

This attribute indicates a person's generation; for example, "Jr." or "II".

cn: Generation-Qualifier

ldapDisplayName: generationQualifier

attributeId: 2.5.4.44

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775804-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.90"></a>
## 2.90 Attribute givenName

This attribute contains the given name (first name) of the user.

cn: Given-Name

ldapDisplayName: givenName

attributeId: 2.5.4.42

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff8e-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.91"></a>
## 2.91 Attribute governsID

This attribute specifies the unique object ID of the class defined by this Class-Schema object.

cn: Governs-ID

ldapDisplayName: governsID

attributeId: 1.2.840.113556.1.2.22

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf96797d-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.92"></a>
## 2.92 Attribute groupType

This attribute contains a set of flags that define the type and scope of a group object. For more information about the possible values for this attribute, see the Remarks section of [[MSDN-GroupType]](https://go.microsoft.com/fwlink/?LinkId=90016).

cn: Group-Type

ldapDisplayName: groupType

attributeId: 1.2.840.113556.1.4.750

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 9a9a021e-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE | fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.93"></a>
## 2.93 Attribute hasMasterNCs

This attribute specifies the DN for the naming contexts for the DC. It is a forward link for the [Mastered-By](#Section_e5a78d48bf2c489483d8f3a13742ace8) attribute. This attribute is maintained for backward compatibility; [msDS-hasMasterNCs](#Section_3687926e7f48467e943d4449941bbe3d) is used instead.

cn: Has-Master-NCs

ldapDisplayName: hasMasterNCs

attributeId: 1.2.840.113556.1.2.14

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967982-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 76

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.94"></a>
## 2.94 Attribute hasPartialReplicaNCs

This attribute specifies the sibling to [Has-Master-NCs](#Section_743c6fe938094f37b9e694d84da7b60b). Reflects the DN for all other-domain NCs that have been replicated into a global catalog.

cn: Has-Partial-Replica-NCs

ldapDisplayName: hasPartialReplicaNCs

attributeId: 1.2.840.113556.1.2.15

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967981-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 74

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.95"></a>
## 2.95 Attribute homePhone

This attribute specifies the user's main home phone number.

cn: Phone-Home-Primary

ldapDisplayName: homePhone

attributeId: 0.9.2342.19200300.100.1.20

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa1-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.96"></a>
## 2.96 Attribute homePostalAddress

This attribute specifies the user's home address.

cn: Address-Home

ldapDisplayName: homePostalAddress

attributeId: 1.2.840.113556.1.2.617

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775781-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.97"></a>
## 2.97 Attribute houseIdentifier

This attribute specifies a linguistic construct used to identify a particular building; for example, a house number or house name relative to a street, avenue, town, or city.

cn: houseIdentifier

ldapDisplayName: houseIdentifier

attributeId: 2.5.4.51

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: a45398b7-c44a-4eb6-82d3-13c10946dbfe

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32768

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.98"></a>
## 2.98 Attribute iconPath

This attribute specifies the source for loading an icon.

cn: Icon-Path

ldapDisplayName: iconPath

attributeId: 1.2.840.113556.1.4.219

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ff83-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

rangeLower: 0

rangeUpper: 2048

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.99"></a>
## 2.99 Attribute initials

This attribute contains the initials for parts of the user's full name. It can be used as the middle initial in the Windows Address Book.

cn: Initials

ldapDisplayName: initials

attributeId: 2.5.4.43

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff90-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 6

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.100"></a>
## 2.100 Attribute instanceType

This attribute specifies a bit field that dictates how the object is instantiated on a particular server. The value of this attribute can differ on different replicas, even if the replicas are in sync.

cn: Instance-Type

ldapDisplayName: instanceType

attributeId: 1.2.840.113556.1.2.1

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96798c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.101"></a>
## 2.101 Attribute internationalISDNNumber

This attribute specifies an international ISDN number associated with an object.

cn: International-ISDN-Number

ldapDisplayName: internationalISDNNumber

attributeId: 2.5.4.25

attributeSyntax: 2.5.5.6

omSyntax: 18

isSingleValued: FALSE

schemaIdGuid: bf96798d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 16

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.102"></a>
## 2.102 Attribute interSiteTopologyFailover

This attribute indicates how much time has to transpire since the last keep-alive in order for the intersite topology generator to be considered dead.

cn: Inter-Site-Topology-Failover

ldapDisplayName: interSiteTopologyFailover

attributeId: 1.2.840.113556.1.4.1248

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b7c69e60-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.103"></a>
## 2.103 Attribute interSiteTopologyGenerator

This attribute is used to support failover for the machine designated as the one that runs Knowledge Consistency Checker intersite topology generation in a given site.

cn: Inter-Site-Topology-Generator

ldapDisplayName: interSiteTopologyGenerator

attributeId: 1.2.840.113556.1.4.1246

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b7c69e5e-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.104"></a>
## 2.104 Attribute interSiteTopologyRenew

This attribute indicates how often the intersite topology generator updates the keep-alive message that is sent to DCs contained in the same site.

cn: Inter-Site-Topology-Renew

ldapDisplayName: interSiteTopologyRenew

attributeId: 1.2.840.113556.1.4.1247

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b7c69e5f-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.105"></a>
## 2.105 Attribute invocationId

This attribute is used to uniquely identify the specific version of the directory database associated with an AD-LDS instance.

cn: Invocation-Id

ldapDisplayName: invocationId

attributeId: 1.2.840.113556.1.2.115

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf96798e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.106"></a>
## 2.106 Attribute ipPhone

This attribute specifies the TCP/IP address for the phone. Used by telephony.

cn: Phone-Ip-Primary

ldapDisplayName: ipPhone

attributeId: 1.2.840.113556.1.4.721

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 4d146e4a-48d4-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.107"></a>
## 2.107 Attribute isCriticalSystemObject

If TRUE, the object hosting this attribute has to be replicated during installation of a new replica.

cn: Is-Critical-System-Object

ldapDisplayName: isCriticalSystemObject

attributeId: 1.2.840.113556.1.4.868

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 00fbf30d-91fe-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.108"></a>
## 2.108 Attribute isDefunct

If TRUE, the class or attribute is no longer usable. Old versions of this object can exist, but new ones cannot be created.

cn: Is-Defunct

ldapDisplayName: isDefunct

attributeId: 1.2.840.113556.1.4.661

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 28630ebe-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.109"></a>
## 2.109 Attribute isDeleted

If TRUE, this object has been marked for deletion and will be removed from the Active Directory system.

cn: Is-Deleted

ldapDisplayName: isDeleted

attributeId: 1.2.840.113556.1.2.48

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf96798f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.110"></a>
## 2.110 Attribute isEphemeral

cn: Is-Ephemeral

ldapDisplayName: isEphemeral

attributeId: 1.2.840.113556.1.4.1212

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: f4c453f0-c5f1-11d1-bbcb-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.111"></a>
## 2.111 Attribute isMemberOfPartialAttributeSet

If TRUE, this attribute is replicated to the global catalog.

cn: Is-Member-Of-Partial-Attribute-Set

ldapDisplayName: isMemberOfPartialAttributeSet

attributeId: 1.2.840.113556.1.4.639

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 19405b9d-3cfa-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.112"></a>
## 2.112 Attribute isRecycled

If TRUE, this object has been marked for permanent deletion. Additionally, if the Recycle Bin optional feature is enabled, the value TRUE marks an object that cannot be undeleted. It will be removed from the Active Directory system.

cn: Is-Recycled

ldapDisplayName: isRecycled

attributeId: 1.2.840.113556.1.4.2058

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8fb59256-55f1-444b-aacb-f5b482fe3459

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on Windows Server 2008 R2 operating system.

<a id="Section_2.113"></a>
## 2.113 Attribute isSingleValued

If TRUE, this attribute can only store one value.

cn: Is-Single-Valued

ldapDisplayName: isSingleValued

attributeId: 1.2.840.113556.1.2.33

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967992-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.114"></a>
## 2.114 Attribute jpegPhoto

This attribute is used to store one or more images of a person using the JPEG File Interchange Format [[JFIF]](https://go.microsoft.com/fwlink/?LinkId=89925).

cn: jpegPhoto

ldapDisplayName: jpegPhoto

attributeId: 0.9.2342.19200300.100.1.60

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bac80572-09c4-4fa9-9ae6-7628d7adbe0e

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.115"></a>
## 2.115 Attribute keywords

This attribute specifies a list of keywords that can be used to locate a given connection point.

cn: Keywords

ldapDisplayName: keywords

attributeId: 1.2.840.113556.1.4.48

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967993-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 256

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.116"></a>
## 2.116 Attribute l

This attribute represents the name of a locality, such as a town or city.

cn: Locality-Name

ldapDisplayName: l

attributeId: 2.5.4.7

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679a2-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY | fATTINDEX

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.117"></a>
## 2.117 Attribute labeledURI

This attribute specifies a Uniform Resource Identifier (URI) followed by a label. The label is used to describe the resource to which the URI points and is intended as a friendly name fit for human readers.

cn: labeledURI

ldapDisplayName: labeledURI

attributeId: 1.3.6.1.4.1.250.1.57

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: c569bb46-c680-44bc-a273-e6c227d71b45

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.118"></a>
## 2.118 Attribute lastAgedChange

ms-DS-Last-Aged-Change

cn: ms-DS-Last-Aged-Change

ldapDisplayName: lastAgedChange

attributeId: 1.2.840.113556.1.4.1888

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.119"></a>
## 2.119 Attribute lastBackupRestorationTime

This attribute specifies the time when the last system restore operation occurred.

cn: Last-Backup-Restoration-Time

ldapDisplayName: lastBackupRestorationTime

attributeId: 1.2.840.113556.1.4.519

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 1fbb0be8-ba63-11d0-afef-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.120"></a>
## 2.120 Attribute lastKnownParent

This attribute specifies the DN of the last known parent of an orphaned or deleted object.

cn: Last-Known-Parent

ldapDisplayName: lastKnownParent

attributeId: 1.2.840.113556.1.4.781

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 52ab8670-5709-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.121"></a>
## 2.121 Attribute lastLogonTimestamp

This attribute specifies the time at which the user last logged on to the domain. This value is only updated if the user logs on after a week has passed since the last update. This value is replicated.

cn: Last-Logon-Timestamp

ldapDisplayName: lastLogonTimestamp

attributeId: 1.2.840.113556.1.4.1696

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: c0e20a04-0e5a-4ff3-9482-5efeaecd7060

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: 5f202010-79a5-11d0-9020-00c04fc2d4cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.122"></a>
## 2.122 Attribute lDAPAdminLimits

This attribute contains a set of attribute/value pairs that define Lightweight Directory Access Protocol (LDAP) server administrative limits.

cn: LDAP-Admin-Limits

ldapDisplayName: lDAPAdminLimits

attributeId: 1.2.840.113556.1.4.843

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7359a352-90f7-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.123"></a>
## 2.123 Attribute lDAPDisplayName

This attribute specifies the name used by LDAP clients, such as the ADSI LDAP provider, to read and write the attribute by using the LDAP protocol.

cn: LDAP-Display-Name

ldapDisplayName: lDAPDisplayName

attributeId: 1.2.840.113556.1.2.460

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf96799a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 1

rangeUpper: 256

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.124"></a>
## 2.124 Attribute lDAPIPDenyList

This attribute holds a list of binary IP addresses that are denied access to an LDAP server.

cn: LDAP-IPDeny-List

ldapDisplayName: lDAPIPDenyList

attributeId: 1.2.840.113556.1.4.844

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 7359a353-90f7-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.125"></a>
## 2.125 Attribute linkID

This attribute specifies an integer that indicates that the attribute is a linked attribute. An even integer is a forward link, and an odd integer is a back link.

cn: Link-ID

ldapDisplayName: linkID

attributeId: 1.2.840.113556.1.2.50

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf96799b-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.126"></a>
## 2.126 Attribute localizationDisplayId

This attribute is used to index into the Extrts.mc file to get the localized displayName of the objects for UI purposes.

cn: Localization-Display-Id

ldapDisplayName: localizationDisplayId

attributeId: 1.2.840.113556.1.4.1353

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a746f0d1-78d0-11d2-9916-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.127"></a>
## 2.127 Attribute location

This attribute specifies the user's location, such as an office number.

cn: Location

ldapDisplayName: location

attributeId: 1.2.840.113556.1.4.222

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 09dcb79f-165f-11d0-a064-00aa006c33ed

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 0

rangeUpper: 1024

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.128"></a>
## 2.128 Attribute lockoutTime

This attribute specifies the date and time (in UTC) that this account was locked out. This value is stored as a large integer that represents the number of 100-nanosecond intervals since January 1, 1601 (UTC). A value of zero means that the account is not currently locked out.

cn: Lockout-Time

ldapDisplayName: lockoutTime

attributeId: 1.2.840.113556.1.4.662

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 28630ebf-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.129"></a>
## 2.129 Attribute mail

This attribute specifies the list of email addresses for a contact.

cn: E-mail-Addresses

ldapDisplayName: mail

attributeId: 0.9.2342.19200300.100.1.3

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967961-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 0

rangeUpper: 256

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.130"></a>
## 2.130 Attribute mailAddress

This attribute specifies the generic mail address attribute. It is used "in the box" as an optional attribute of server objects, where it is consumed by mail-based DS replication (if the machines are so configured).

cn: SMTP-Mail-Address

ldapDisplayName: mailAddress

attributeId: 1.2.840.113556.1.4.786

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 26d9736f-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.131"></a>
## 2.131 Attribute managedBy

This attribute specifies the DN of the object that is assigned to manage this object.

cn: Managed-By

ldapDisplayName: managedBy

attributeId: 1.2.840.113556.1.4.653

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 0296c120-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 72

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.132"></a>
## 2.132 Attribute managedObjects

This attribute contains the list of objects that are managed by the user. The objects listed are those that have the managedBy property set to this user. Each item in the list is a linked reference to the managed object.

cn: Managed-Objects

ldapDisplayName: managedObjects

attributeId: 1.2.840.113556.1.4.654

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 0296c124-40da-11d1-a9c0-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 73

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.133"></a>
## 2.133 Attribute manager

This attribute contains the DN of the user who is the user's manager. The manager's user object contains a directReports property that contains references to all user objects that have their manager properties set to this DN.

cn: Manager

ldapDisplayName: manager

attributeId: 0.9.2342.19200300.100.1.10

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679b5-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

linkID: 42

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.134"></a>
## 2.134 Attribute masteredBy

This attribute specifies the back link for the [Has-Master-NCs](#Section_743c6fe938094f37b9e694d84da7b60b) attribute. The DN for its NTDS Settings objects.

cn: Mastered-By

ldapDisplayName: masteredBy

attributeId: 1.2.840.113556.1.4.1409

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: e48e64e0-12c9-11d3-9102-00c04fd91ab1

systemOnly: TRUE

searchFlags: 0

linkID: 77

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.135"></a>
## 2.135 Attribute mayContain

This attribute specifies the list of optional attributes for a class.

cn: May-Contain

ldapDisplayName: mayContain

attributeId: 1.2.840.113556.1.2.25

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679bf-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.136"></a>
## 2.136 Attribute member

This attribute specifies the list of users that belong to the group.

cn: Member

ldapDisplayName: member

attributeId: 2.5.4.31

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf9679c0-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: bc0ac240-79a9-11d0-9020-00c04fc2d4cf

linkID: 2

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.137"></a>
## 2.137 Attribute memberOf

This attribute specifies the DN of the groups to which this object belongs.

cn: Is-Member-Of-DL

ldapDisplayName: memberOf

attributeId: 1.2.840.113556.1.2.102

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967991-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fCOPY

attributeSecurityGuid: bc0ac240-79a9-11d0-9020-00c04fc2d4cf

linkID: 3

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.138"></a>
## 2.138 Attribute middleName

This attribute specifies additional names for a user; for example, middle name, patronymic, matronymic, or others.

cn: Other-Name

ldapDisplayName: middleName

attributeId: 2.16.840.1.113730.3.1.34

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679f2-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 64

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.139"></a>
## 2.139 Attribute mobile

This attribute specifies the primary cellular phone number for a user.

cn: Phone-Mobile-Primary

ldapDisplayName: mobile

attributeId: 0.9.2342.19200300.100.1.41

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa3-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.140"></a>
## 2.140 Attribute modifyTimeStamp

This attribute specifies the date when this object was last changed. This value is replicated.

cn: Modify-Time-Stamp

ldapDisplayName: modifyTimeStamp

attributeId: 2.5.18.2

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 9a7ad94a-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.141"></a>
## 2.141 Attribute moveTreeState

This attribute is not necessary for Active Directory Lightweight Directory Services (AD LDS) to function. The protocol does not define a format beyond that required by the schema.

cn: Move-Tree-State

ldapDisplayName: moveTreeState

attributeId: 1.2.840.113556.1.4.1305

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 1f2ac2c8-3b71-11d2-90cc-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.142"></a>
## 2.142 Attribute mS-DS-ConsistencyChildCount

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: MS-DS-Consistency-Child-Count

ldapDisplayName: mS-DS-ConsistencyChildCount

attributeId: 1.2.840.113556.1.4.1361

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 178b7bc2-b63a-11d2-90e1-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.143"></a>
## 2.143 Attribute mS-DS-ConsistencyGuid

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: MS-DS-Consistency-Guid

ldapDisplayName: mS-DS-ConsistencyGuid

attributeId: 1.2.840.113556.1.4.1360

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 23773dc2-b63a-11d2-90e1-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.144"></a>
## 2.144 Attribute mS-DS-ReplicatesNCReason

This is an attribute of an [nTDSConnection](#Section_dc0bebacee8d44a4b27c5a77dd7f8d57) object that indicates why (or whether) the Knowledge Consistency Checker (KCC) concludes that the connection is useful in the replication topology. This attribute is multivalued and has DistName+Binary syntax, where the binary part is an int-size bit field.

cn: MS-DS-Replicates-NC-Reason

ldapDisplayName: mS-DS-ReplicatesNCReason

attributeId: 1.2.840.113556.1.4.1408

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 0ea12b84-08b3-11d3-91bc-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.145"></a>
## 2.145 Attribute ms-DS-UserAccountAutoLocked

This attribute specifies a Boolean flag that indicates whether the account that this attribute references has been locked out. (TRUE means locked out.)

cn: ms-DS-User-Account-Auto-Locked

ldapDisplayName: ms-DS-UserAccountAutoLocked

attributeId: 1.2.840.113556.1.4.1857

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: f2dd7bab-1f3b-47cf-89fa-143b56ad0a3d

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.146"></a>
## 2.146 Attribute ms-DS-UserEncryptedTextPasswordAllowed

This attribute specifies a Boolean flag that controls whether Active Directory stores the password in reversible encryption format.

cn: ms-DS-User-Encrypted-Text-Password-Allowed

ldapDisplayName: ms-DS-UserEncryptedTextPasswordAllowed

attributeId: 1.2.840.113556.1.4.1856

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 5a87c7f2-93c5-454c-a8c5-8cb09613292e

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.147"></a>
## 2.147 Attribute ms-DS-UserPasswordNotRequired

This attribute specifies a Boolean flag that controls whether a password is required for the account that this attribute references.

cn: ms-DS-User-Password-Not-Required

ldapDisplayName: ms-DS-UserPasswordNotRequired

attributeId: 1.2.840.113556.1.4.1854

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8f066172-a25e-4f53-8dcd-0a67d5fb883d

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.148"></a>
## 2.148 Attribute msDS-AllowedDNSSuffixes

This attribute specifies the list of allowed suffixes for the [dNSHostName](#Section_71ffde4b5b5b46239f40cf4c835ceaa2) attribute in computer objects.

cn: ms-DS-Allowed-DNS-Suffixes

ldapDisplayName: msDS-AllowedDNSSuffixes

attributeId: 1.2.840.113556.1.4.1710

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 8469441b-9ac4-4e45-8205-bd219dbf672d

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.149"></a>
## 2.149 Attribute msDS-Approx-Immed-Subordinates

The value returned by this attribute is based on index sizes. This value can be off by +/-10 percent on large containers, and the error is theoretically unbounded, but the use of this attribute is to assist the UI with determining how to display the contents of a container.

cn: ms-DS-Approx-Immed-Subordinates

ldapDisplayName: msDS-Approx-Immed-Subordinates

attributeId: 1.2.840.113556.1.4.1669

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: e185d243-f6ce-4adb-b496-b0c005d7823c

systemOnly: TRUE

searchFlags: 0

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.150"></a>
## 2.150 Attribute msDS-Auxiliary-Classes

This attribute lists the auxiliary classes that have been dynamically attached to an object. This attribute is not associated with a class. It is automatically populated by the Active Directory system.

cn: ms-DS-Auxiliary-Classes

ldapDisplayName: msDS-Auxiliary-Classes

attributeId: 1.2.840.113556.1.4.1458

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: c4af1073-ee50-4be0-b8c0-89a41fe99abe

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.151"></a>
## 2.151 Attribute msDS-AzApplicationData

This attribute specifies a string that is used by individual applications to store needed information.

cn: ms-DS-Az-Application-Data

ldapDisplayName: msDS-AzApplicationData

attributeId: 1.2.840.113556.1.4.1819

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 503fc3e8-1cc6-461a-99a3-9eee04f402a7

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.152"></a>
## 2.152 Attribute msDS-AzApplicationName

This attribute specifies a string that uniquely identifies an application object.

cn: ms-DS-Az-Application-Name

ldapDisplayName: msDS-AzApplicationName

attributeId: 1.2.840.113556.1.4.1798

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: db5b0728-6208-4876-83b7-95d3e5695275

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 512

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.153"></a>
## 2.153 Attribute msDS-AzApplicationVersion

This attribute specifies a version number to indicate that the AzApplication is updated.

cn: ms-DS-Az-Application-Version

ldapDisplayName: msDS-AzApplicationVersion

attributeId: 1.2.840.113556.1.4.1817

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 7184a120-3ac4-47ae-848f-fe0ab20784d4

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.154"></a>
## 2.154 Attribute msDS-AzBizRule

This attribute specifies the text of the script implementing the business rule.

cn: ms-DS-Az-Biz-Rule

ldapDisplayName: msDS-AzBizRule

attributeId: 1.2.840.113556.1.4.1801

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 33d41ea8-c0c9-4c92-9494-f104878413fd

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65536

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.155"></a>
## 2.155 Attribute msDS-AzBizRuleLanguage

This attribute specifies the language that the business rule script is in (for example, JScript or Visual Basic Scripting Edition).

cn: ms-DS-Az-Biz-Rule-Language

ldapDisplayName: msDS-AzBizRuleLanguage

attributeId: 1.2.840.113556.1.4.1802

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 52994b56-0e6c-4e07-aa5c-ef9d7f5a0e25

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 64

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.156"></a>
## 2.156 Attribute msDS-AzClassId

This attribute specifies a class ID that is required by the AzRoles UI on the AzApplication object.

cn: ms-DS-Az-Class-ID

ldapDisplayName: msDS-AzClassId

attributeId: 1.2.840.113556.1.4.1816

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 013a7277-5c2d-49ef-a7de-b765b36a3f6f

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 40

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.157"></a>
## 2.157 Attribute msDS-AzDomainTimeout

This attribute specifies the time (in milliseconds) after a domain is detected to be unreachable and before the DC is tried again.

cn: ms-DS-Az-Domain-Timeout

ldapDisplayName: msDS-AzDomainTimeout

attributeId: 1.2.840.113556.1.4.1795

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6448f56a-ca70-4e2e-b0af-d20e4ce653d0

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.158"></a>
## 2.158 Attribute msDS-AzGenerateAudits

This attribute specifies a Boolean field indicating whether runtime audits need to be turned on (for example, audits for access checks).

cn: ms-DS-Az-Generate-Audits

ldapDisplayName: msDS-AzGenerateAudits

attributeId: 1.2.840.113556.1.4.1805

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: f90abab0-186c-4418-bb85-88447c87222a

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.159"></a>
## 2.159 Attribute msDS-AzGenericData

This attribute specifies AzMan-specific generic data.

cn: ms-DS-Az-Generic-Data

ldapDisplayName: msDS-AzGenericData

attributeId: 1.2.840.113556.1.4.1950

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: a283ad81-eaac-448b-af22-6c7099a946e0

systemOnly: FALSE

searchFlags: 0

rangeUpper: 65536

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.160"></a>
## 2.160 Attribute msDS-AzLastImportedBizRulePath

This attribute specifies the last imported business rule path.

cn: ms-DS-Az-Last-Imported-Biz-Rule-Path

ldapDisplayName: msDS-AzLastImportedBizRulePath

attributeId: 1.2.840.113556.1.4.1803

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 665acb5c-bb92-4dbc-8c59-b3638eab09b3

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65536

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.161"></a>
## 2.161 Attribute msDS-AzLDAPQuery

This attribute specifies a string that defines the LDAP query (max length 4096) that determines the membership of a user object to the group.

cn: ms-DS-Az-LDAP-Query

ldapDisplayName: msDS-AzLDAPQuery

attributeId: 1.2.840.113556.1.4.1792

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 5e53368b-fc94-45c8-9d7d-daf31ee7112d

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 4096

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.162"></a>
## 2.162 Attribute msDS-AzMajorVersion

This attribute specifies the major version number for AzRoles.

cn: ms-DS-Az-Major-Version

ldapDisplayName: msDS-AzMajorVersion

attributeId: 1.2.840.113556.1.4.1824

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: cfb9adb7-c4b7-4059-9568-1ed9db6b7248

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.163"></a>
## 2.163 Attribute msDS-AzMinorVersion

This attribute specifies the minor version number for AzRoles.

cn: ms-DS-Az-Minor-Version

ldapDisplayName: msDS-AzMinorVersion

attributeId: 1.2.840.113556.1.4.1825

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: ee85ed93-b209-4788-8165-e702f51bfbf3

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.164"></a>
## 2.164 Attribute msDS-AzObjectGuid

This attribute specifies the unique and portable identifier of AzMan objects.

cn: ms-DS-Az-Object-Guid

ldapDisplayName: msDS-AzObjectGuid

attributeId: 1.2.840.113556.1.4.1949

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 8867b29c-9ccf-4ce2-be30-b67c0d2432c6

systemOnly: TRUE

searchFlags: fATTINDEX

rangeLower: 16

rangeUpper: 16

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.165"></a>
## 2.165 Attribute msDS-AzOperationID

This attribute specifies the application-specific ID that makes the operation unique to the application.

cn: ms-DS-Az-Operation-ID

ldapDisplayName: msDS-AzOperationID

attributeId: 1.2.840.113556.1.4.1800

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a5f3b553-5d76-4cbe-ba3f-4312152cab18

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.166"></a>
## 2.166 Attribute msDS-AzScopeName

This attribute specifies a string that uniquely identifies a scope object.

cn: ms-DS-Az-Scope-Name

ldapDisplayName: msDS-AzScopeName

attributeId: 1.2.840.113556.1.4.1799

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 515a6b06-2617-4173-8099-d5605df043c6

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65536

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.167"></a>
## 2.167 Attribute msDS-AzScriptEngineCacheMax

This attribute specifies the maximum number of scripts that are cached by the application.

cn: ms-DS-Az-Script-Engine-Cache-Max

ldapDisplayName: msDS-AzScriptEngineCacheMax

attributeId: 1.2.840.113556.1.4.1796

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 2629f66a-1f95-4bf3-a296-8e9d7b9e30c8

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.168"></a>
## 2.168 Attribute msDS-AzScriptTimeout

This attribute specifies the maximum time (in milliseconds) to wait for a script to finish auditing a specific policy.

cn: ms-DS-Az-Script-Timeout

ldapDisplayName: msDS-AzScriptTimeout

attributeId: 1.2.840.113556.1.4.1797

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 87d0fb41-2c8b-41f6-b972-11fdfd50d6b0

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.169"></a>
## 2.169 Attribute msDS-AzTaskIsRoleDefinition

This attribute specifies a Boolean field that indicates whether AzTask is a classic task or a role definition.

cn: ms-DS-Az-Task-Is-Role-Definition

ldapDisplayName: msDS-AzTaskIsRoleDefinition

attributeId: 1.2.840.113556.1.4.1818

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 7b078544-6c82-4fe9-872f-ff48ad2b2e26

systemOnly: FALSE

searchFlags: 0

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.170"></a>
## 2.170 Attribute msDS-Behavior-Version

This attribute is used to track the domain or forest behavior version. It is a monotonically increasing number that is used to enable certain Active Directory features.

cn: ms-DS-Behavior-Version

ldapDisplayName: msDS-Behavior-Version

attributeId: 1.2.840.113556.1.4.1459

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: d31a8757-2447-4545-8081-3bb610cacbf2

systemOnly: TRUE

searchFlags: 0

rangeLower: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.171"></a>
## 2.171 Attribute msDS-BridgeHeadServersUsed

This attribute specifies a list of bridgehead servers used by the KCC in the previous run.

cn: ms-DS-BridgeHead-Servers-Used

ldapDisplayName: msDS-BridgeHeadServersUsed

attributeId: 1.2.840.113556.1.4.2049

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

linkID: 2160

isSingleValued: FALSE

showInAdvancedViewOnly: TRUE

schemaIdGuid: 3ced1465-7b71-2541-8780-1e1ea6243a82

searchFlags: 0

systemFlags: FLAG_ATTR_NOT_REPLICATED | FLAG_ATTR_IS_OPERATIONAL |

FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.172"></a>
## 2.172 Attribute msDS-DefaultNamingContext

This attribute specifies the default naming context (partition) for this AD LDS instance.

cn: ms-DS-Default-Naming-Context

ldapDisplayName: msDS-DefaultNamingContext

attributeId: 1.2.840.113556.1.4.1873

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 09278375-bc53-e342-8a03-943043a1b573

systemOnly: FALSE

searchFlags: 0

linkID: 2044

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.173"></a>
## 2.173 Attribute msDS-DefaultNamingContextBL

This attribute specifies a backlink reference for the [msDS-DefaultNamingContext](#Section_6628c00d8afe4b058e6cd9b6843df99a) attribute.

cn: ms-DS-Default-Naming-Context-BL

ldapDisplayName: msDS-DefaultNamingContextBL

attributeId: 1.2.840.113556.1.4.1874

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 2a4e57c2-60bc-5040-b463-51e1d82df9a5

systemOnly: TRUE

searchFlags: 0

linkID: 2045

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.174"></a>
## 2.174 Attribute msDS-DefaultQuota

This attribute specifies the default quota that will apply to a security principal that creates an object in the NC if no quota specification exists that covers the security principal.

cn: ms-DS-Default-Quota

ldapDisplayName: msDS-DefaultQuota

attributeId: 1.2.840.113556.1.4.1846

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6818f726-674b-441b-8a3a-f40596374cea

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.175"></a>
## 2.175 Attribute msDS-DeletedObjectLifetime

If the Recycle Bin optional feature is enabled, this attribute specifies the number of days before a deleted object is converted to a recycled object. If the Recycle Bin optional feature is not enabled, values of this attribute have no meaning or effect.

cn: ms-DS-Deleted-Object-Lifetime

ldapDisplayName: msDS-DeletedObjectLifetime

attributeId: 1.2.840.113556.1.4.2068

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: TRUE

schemaIdGuid: a9b38cb6-189a-4def-8a70-0fcfa158148e

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.176"></a>
## 2.176 Attribute msDS-DisableForInstances

This attribute specifies the set of DSA objects, representing AD LDS instances, for which Service Connection Point publication is disabled.

cn: ms-DS-Disable-For-Instances

ldapDisplayName: msDS-DisableForInstances

attributeId: 1.2.840.113556.1.4.1870

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 5f8f45cb-0fb7-fc4f-b44f-66f781aa66dd

systemOnly: FALSE

searchFlags: 0

linkID: 2042

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.177"></a>
## 2.177 Attribute msDS-DisableForInstancesBL

This attribute specifies the backlink reference to the ms-DS-Service-Connection-Point-Publication-Service object.

cn: ms-DS-Disable-For-Instances-BL

ldapDisplayName: msDS-DisableForInstancesBL

attributeId: 1.2.840.113556.1.4.1871

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 8f9d31dd-67ea-cd42-9b88-7cddb36c21f4

systemOnly: TRUE

searchFlags: 0

linkID: 2043

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.178"></a>
## 2.178 Attribute msDS-DnsRootAlias

This attribute is used to store the domain alias.

cn: ms-DS-DnsRootAlias

ldapDisplayName: msDS-DnsRootAlias

attributeId: 1.2.840.113556.1.4.1719

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 2143acca-eead-4d29-b591-85fa49ce9173

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 255

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.179"></a>
## 2.179 Attribute msDS-EnabledFeature

This attribute lists the enabled optional features.

cn: ms-DS-Enabled-Feature

ldapDisplayName: msDS-EnabledFeature

attributeId: 1.2.840.113556.1.4.2061

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

linkId: 2168

isSingleValued: FALSE

schemaIdGuid: 5706aeaf-b940-4fb2-bcfc-5268683ad9fe

isMemberOfPartialAttributeSet: TRUE

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.180"></a>
## 2.180 Attribute msDS-EnabledFeatureBL

This attribute is the backlink attribute of msDS-EnabledFeature, and it lists the scopes where an optional feature is enabled.

cn: ms-DS-Enabled-Feature-BL

ldapDisplayName: msDS-EnabledFeatureBL

attributeId: 1.2.840.113556.1.4.2069

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

linkId: 2169

isSingleValued: FALSE

schemaIdGuid: ce5b01bc-17c6-44b8-9dc1-a9668b00901b

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT|FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.181"></a>
## 2.181 Attribute msDS-Entry-Time-To-Die

This attribute holds the absolute expiration time of a dynamic object in the directory.

cn: ms-DS-Entry-Time-To-Die

ldapDisplayName: msDS-Entry-Time-To-Die

attributeId: 1.2.840.113556.1.4.1622

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: e1e9bad7-c6dd-4101-a843-794cec85b038

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_OPERATIONAL

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.182"></a>
## 2.182 Attribute msDS-ExecuteScriptPassword

This attribute is used during domain rename operation. This value cannot be written to or read from with LDAP.

cn: ms-DS-ExecuteScriptPassword

ldapDisplayName: msDS-ExecuteScriptPassword

attributeId: 1.2.840.113556.1.4.1783

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 9d054a5a-d187-46c1-9d85-42dfc44a56dd

systemOnly: TRUE

searchFlags: 0

rangeLower: 0

rangeUpper: 64

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.183"></a>
## 2.183 Attribute msDS-FilterContainers

A multivalued string attribute containing the names of classes that are used to determine which container types are shown by the Active Directory Users and Computers snap-in when filtering.

cn: ms-DS-Filter-Containers

ldapDisplayName: msDS-FilterContainers

attributeId: 1.2.840.113556.1.4.1703

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: fb00dcdf-ac37-483a-9c12-ac53a6603033

systemOnly: FALSE

rangeLower: 1

rangeUpper: 64

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.184"></a>
## 2.184 Attribute msDS-HasDomainNCs

This attribute specifies DS replication information that details the domain NCs that are present on a particular server.

cn: ms-DS-Has-Domain-NCs

ldapDisplayName: msDS-HasDomainNCs

attributeId: 1.2.840.113556.1.4.1820

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 6f17e347-a842-4498-b8b3-15e007da4fed

systemOnly: TRUE

searchFlags: 0

rangeLower: 4

rangeUpper: 4

linkID: 2026

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.185"></a>
## 2.185 Attribute msDS-HasInstantiatedNCs

This attribute specifies DS replication information that details the state of the NCs that are present on a particular server.

cn: ms-DS-Has-Instantiated-NCs

ldapDisplayName: msDS-HasInstantiatedNCs

attributeId: 1.2.840.113556.1.4.1709

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 11e9a5bc-4517-4049-af9c-51554fb0fc09

systemOnly: TRUE

searchFlags: 0

rangeLower: 4

rangeUpper: 4

linkID: 2002

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.186"></a>
## 2.186 Attribute msDS-hasMasterNCs

This attribute specifies a list of the naming contexts contained by a DC.

cn: ms-DS-Has-Master-NCs

ldapDisplayName: msDS-hasMasterNCs

attributeId: 1.2.840.113556.1.4.1836

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: ae2de0e2-59d7-4d47-8d47-ed4dfe4357ad

systemOnly: TRUE

searchFlags: 0

linkID: 2036

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.187"></a>
## 2.187 Attribute msDS-IntId

The ms-DS-IntId attribute is for internal use only.

cn: ms-DS-IntId

ldapDisplayName: msDS-IntId

attributeId: 1.2.840.113556.1.4.1716

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bc60096a-1b47-4b30-8877-602c93f56532

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.188"></a>
## 2.188 Attribute msds-memberOfTransitive

This attribute specifies the set of distinguished names (DNs) in the memberOf attribute on the current object and the DNs from the memberOf attributes of each of the objects specified in the memberOf attribute on the current object.

cn: ms-DS-Is-Member-Of-DL-Transitive

lDAPDisplayName: msds-memberOfTransitive

attributeID: 1.2.840.113556.1.4.2236

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

systemOnly: TRUE

searchFlags: fBASEONLY

systemFlags: FLAG_ATTR_NOT_REPLICATED | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_ATTR_IS_OPERATIONAL | FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2 operating system.

<a id="Section_2.189"></a>
## 2.189 Attribute msds-memberTransitive

This attribute specifies the set of distinguished names (DNs) in the member attribute on the current object and the DNs from the member attribute of each of the objects specified in the member attribute on the current object.

cn: ms-DS-Member-Transitive

lDAPDisplayName: msds-memberTransitive

attributeID: 1.2.840.113556.1.4.2238

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

systemOnly: TRUE

searchFlags: fBASEONLY

systemFlags: FLAG_ATTR_NOT_REPLICATED | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_ATTR_IS_OPERATIONAL | FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.190"></a>
## 2.190 Attribute msDS-LastKnownRDN

This attribute holds the original RDN of a deleted object.

cn: ms-DS-Last-Known-RDN

ldapDisplayName: msDS-LastKnownRDN

attributeId: 1.2.840.113556.1.4.2067

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 8ab15858-683e-466d-877f-d640e1f9a611

systemOnly: TRUE

searchFlags: 0

rangeLower: 1

rangeUpper: 255

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.191"></a>
## 2.191 Attribute msDS-LocalEffectiveDeletionTime

This attribute stores the deletion time of the object in the local domain controller.

cn: ms-DS-Local-Effective-Deletion-Time

ldapDisplayName: msDS-LocalEffectiveDeletionTime

attributeId: 1.2.840.113556.1.4.2059

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 94f2800c-531f-4aeb-975d-48ac39fd8ca4

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT|FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.192"></a>
## 2.192 Attribute msDS-LocalEffectiveRecycleTime

This attribute stores the recycle time of the object in the local domain controller.

cn: ms-DS-Local-Effective-Recycle-Time

ldapDisplayName: msDS-LocalEffectiveRecycleTime

attributeId: 1.2.840.113556.1.4.2060

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 4ad6016b-b0d2-4c9b-93b6-5964b17b968c

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT|FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.193"></a>
## 2.193 Attribute msDs-masteredBy

This attribute specifies the backlink for [msDS-hasMasterNCs](#Section_3687926e7f48467e943d4449941bbe3d).

cn: ms-DS-Mastered-By

ldapDisplayName: msDs-masteredBy

attributeId: 1.2.840.113556.1.4.1837

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 60234769-4819-4615-a1b2-49d2f119acb5

systemOnly: TRUE

searchFlags: 0

linkID: 2037

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.194"></a>
## 2.194 Attribute msDS-MembersForAzRole

This attribute specifies the list of member application groups or users linked to Az-Role.

cn: ms-DS-Members-For-Az-Role

ldapDisplayName: msDS-MembersForAzRole

attributeId: 1.2.840.113556.1.4.1806

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: cbf7e6cd-85a4-4314-8939-8bfe80597835

systemOnly: FALSE

searchFlags: 0

linkID: 2016

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.195"></a>
## 2.195 Attribute msDS-MembersForAzRoleBL

This attribute specifies the backlink from a member application group or user to the Az-Role objects that link to it.

cn: ms-DS-Members-For-Az-Role-BL

ldapDisplayName: msDS-MembersForAzRoleBL

attributeId: 1.2.840.113556.1.4.1807

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: ececcd20-a7e0-4688-9ccf-02ece5e287f5

systemOnly: TRUE

searchFlags: 0

linkID: 2017

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.196"></a>
## 2.196 Attribute msDS-NC-Replica-Locations

This attribute specifies a list of servers that are the replica set for the corresponding non-domain naming context.

cn: ms-DS-NC-Replica-Locations

ldapDisplayName: msDS-NC-Replica-Locations

attributeId: 1.2.840.113556.1.4.1661

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 97de9615-b537-46bc-ac0f-10720f3909f3

systemOnly: FALSE

searchFlags: 0

linkID: 1044

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.197"></a>
## 2.197 Attribute msDS-NCReplCursors

This attribute specifies a list of past and present replication partners for a particular machine, and how up-to-date that machine is with each of them.

cn: ms-DS-NC-Repl-Cursors

ldapDisplayName: msDS-NCReplCursors

attributeId: 1.2.840.113556.1.4.1704

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 8a167ce4-f9e8-47eb-8d78-f7fe80abb2cc

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.198"></a>
## 2.198 Attribute msDS-NCReplInboundNeighbors

This attribute specifies replication partners for this partition. This server obtains replication data from these other servers, which act as sources.

cn: ms-DS-NC-Repl-Inbound-Neighbors

ldapDisplayName: msDS-NCReplInboundNeighbors

attributeId: 1.2.840.113556.1.4.1705

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9edba85a-3e9e-431b-9b1a-a5b6e9eda796

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.199"></a>
## 2.199 Attribute msDS-NCReplOutboundNeighbors

This attribute specifies replication partners for this partition. This server sends replication data to these other servers, which act as destinations. This server will notify these other servers when new data is available.

cn: ms-DS-NC-Repl-Outbound-Neighbors

ldapDisplayName: msDS-NCReplOutboundNeighbors

attributeId: 1.2.840.113556.1.4.1706

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 855f2ef5-a1c5-4cc4-ba6d-32522848b61f

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.200"></a>
## 2.200 Attribute msDS-Non-Security-Group-Extra-Classes

This attribute specifies the common names of the nonstandard classes that can be added to a non-security group through the Active Directory Users and Computers snap-in.

cn: ms-DS-Non-Security-Group-Extra-Classes

ldapDisplayName: msDS-Non-Security-Group-Extra-Classes

attributeId: 1.2.840.113556.1.4.1689

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2de144fc-1f52-486f-bdf4-16fcc3084e54

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.201"></a>
## 2.201 Attribute msDS-NonMembers

This attribute serves the same purpose as the **Non-Security-Member** attribute but with scoping rules applied.

cn: ms-DS-Non-Members

ldapDisplayName: msDS-NonMembers

attributeId: 1.2.840.113556.1.4.1793

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: cafcb1de-f23c-46b5-adf7-1e64957bd5db

systemOnly: FALSE

searchFlags: 0

linkID: 2014

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.202"></a>
## 2.202 Attribute msDS-NonMembersBL

This attribute specifies the backlink from a non-member group or user to the Az groups that link to it (has the same functionality as Non-Security-Member-BL).

cn: ms-DS-Non-Members-BL

ldapDisplayName: msDS-NonMembersBL

attributeId: 1.2.840.113556.1.4.1794

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 2a8c68fc-3a7a-4e87-8720-fe77c51cbe74

systemOnly: TRUE

searchFlags: 0

linkID: 2015

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.203"></a>
## 2.203 Attribute msDS-OperationsForAzRole

This attribute specifies a list of operations linked to Az-Role.

cn: ms-DS-Operations-For-Az-Role

ldapDisplayName: msDS-OperationsForAzRole

attributeId: 1.2.840.113556.1.4.1812

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 93f701be-fa4c-43b6-bc2f-4dbea718ffab

systemOnly: FALSE

searchFlags: 0

linkID: 2022

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.204"></a>
## 2.204 Attribute msDS-OperationsForAzRoleBL

This attribute specifies the backlink from Az-Operation to the Az-Role objects that link to it.

cn: ms-DS-Operations-For-Az-Role-BL

ldapDisplayName: msDS-OperationsForAzRoleBL

attributeId: 1.2.840.113556.1.4.1813

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: f85b6228-3734-4525-b6b7-3f3bb220902c

systemOnly: TRUE

searchFlags: 0

linkID: 2023

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.205"></a>
## 2.205 Attribute msDS-OperationsForAzTask

This attribute specifies a list of operations linked to Az-Task.

cn: ms-DS-Operations-For-Az-Task

ldapDisplayName: msDS-OperationsForAzTask

attributeId: 1.2.840.113556.1.4.1808

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 1aacb436-2e9d-44a9-9298-ce4debeb6ebf

systemOnly: FALSE

searchFlags: 0

linkID: 2018

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.206"></a>
## 2.206 Attribute msDS-OperationsForAzTaskBL

This attribute specifies the backlink from Az-Operation to the Az-Task objects that link to it.

cn: ms-DS-Operations-For-Az-Task-BL

ldapDisplayName: msDS-OperationsForAzTaskBL

attributeId: 1.2.840.113556.1.4.1809

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: a637d211-5739-4ed1-89b2-88974548bc59

systemOnly: TRUE

searchFlags: 0

linkID: 2019

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.207"></a>
## 2.207 Attribute msDS-OptionalFeatureFlags

This attribute stores an integer value that contains flags that define behavior of an optional feature in Active Directory.

cn: ms-DS-Optional-Feature-Flags

ldapDisplayName: msDS-OptionalFeatureFlags

attributeId: 1.2.840.113556.1.4.2063

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 8a0560c1-97b9-4811-9db7-dc061598965b

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.208"></a>
## 2.208 Attribute msDS-OptionalFeatureGUID

This attribute stores the GUID of an optional feature.

cn: ms-DS-Optional-Feature-GUID

ldapDisplayName: msDS-OptionalFeatureGUID

attributeId: 1.2.840.113556.1.4.2062

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 9b88bda8-dd82-4998-a91d-5f2d2baf1927

systemOnly: TRUE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.209"></a>
## 2.209 Attribute msDS-Other-Settings

This multivalued attribute is used to store any configurable setting for the DS stored in the NAME=VALUE format.

cn: ms-DS-Other-Settings

ldapDisplayName: msDS-Other-Settings

attributeId: 1.2.840.113556.1.4.1621

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 79d2f34c-9d7d-42bb-838f-866b3e4400e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.210"></a>
## 2.210 Attribute msDS-parentdistname

This attribute specifies the distinguished name (DN) of the parent object of the current object.

cn: ms-DS-Parent-Dist-Name

lDAPDisplayName: msDS-parentdistname

attributeID: 1.2.840.113556.1.4.2203

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b918fe7d-971a-f404-9e21-9261abec970b

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_ATTR_NOT_REPLICATED | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_ATTR_IS_OPERATIONAL | FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.211"></a>
## 2.211 Attribute msDS-PortLDAP

This attribute is used to specify which port is used by the Directory Service to listen for LDAP requests. Currently, this attribute is only used for AD LDS.

cn: ms-DS-Port-LDAP

ldapDisplayName: msDS-PortLDAP

attributeId: 1.2.840.113556.1.4.1859

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 977225c1-5bdf-42b7-b6db-c3af077f558f

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65535

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.212"></a>
## 2.212 Attribute msDS-PortSSL

ms-Ds-Port-SSL is used to specify which port is used by the Directory Service to listen for SSL-protected LDAP requests. Currently, this attribute is used only for AD LDS.

cn: ms-DS-Port-SSL

ldapDisplayName: msDS-PortSSL

attributeId: 1.2.840.113556.1.4.1860

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 2c85cfc2-2061-468c-a0ea-c8e0910f7374

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 65535

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.213"></a>
## 2.213 Attribute msDS-Preferred-GC-Site

The ms-DS-Preferred-GC-Site attribute is used by the security accounts manager for group expansion during token evaluation.

cn: ms-DS-Preferred-GC-Site

ldapDisplayName: msDS-Preferred-GC-Site

attributeId: 1.2.840.113556.1.4.1444

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: d921b50a-0ab2-42cd-87f6-09cf83a91854

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.214"></a>
## 2.214 Attribute msDS-PrincipalName

This attribute specifies the account name for the security principal (constructed).

cn: ms-DS-Principal-Name

ldapDisplayName: msDS-PrincipalName

attributeId: 1.2.840.113556.1.4.1865

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 564e9325-d057-c143-9e3b-4f9e5ef46f93

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.215"></a>
## 2.215 Attribute msDS-QuotaAmount

This attribute specifies the assigned quota in terms of number of objects owned in the database.

cn: ms-DS-Quota-Amount

ldapDisplayName: msDS-QuotaAmount

attributeId: 1.2.840.113556.1.4.1845

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: fbb9a00d-3a8c-4233-9cf9-7189264903a1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.216"></a>
## 2.216 Attribute msDS-QuotaEffective

This attribute specifies the effective quota for a security principal computed from the assigned quotas for a naming context.

cn: ms-DS-Quota-Effective

ldapDisplayName: msDS-QuotaEffective

attributeId: 1.2.840.113556.1.4.1848

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6655b152-101c-48b4-b347-e1fcebc60157

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.217"></a>
## 2.217 Attribute msDS-QuotaTrustee

This attribute specifies the SID, as defined in [MS-DTYP](../MS-DTYP/MS-DTYP.md) section 2.4.2, of the security principal for which a quota is being assigned.

cn: ms-DS-Quota-Trustee

ldapDisplayName: msDS-QuotaTrustee

attributeId: 1.2.840.113556.1.4.1844

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 16378906-4ea5-49be-a8d1-bfd41dff4f65

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 28

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.218"></a>
## 2.218 Attribute msDS-QuotaUsed

This attribute specifies the current quota being consumed by a security principal in the directory database.

cn: ms-DS-Quota-Used

ldapDisplayName: msDS-QuotaUsed

attributeId: 1.2.840.113556.1.4.1849

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: b5a84308-615d-4bb7-b05f-2f1746aa439f

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.219"></a>
## 2.219 Attribute msDS-ReplAttributeMetaData

This attribute specifies a list of metadata for each replicated attribute. The metadata indicates who changed the attribute last.

cn: ms-DS-Repl-Attribute-Meta-Data

ldapDisplayName: msDS-ReplAttributeMetaData

attributeId: 1.2.840.113556.1.4.1707

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: d7c53242-724e-4c39-9d4c-2df8c9d66c7a

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.220"></a>
## 2.220 Attribute msDS-ReplAuthenticationMode

The **ms-DS-Repl-Authentication-Mode** attribute is used to specify which authentication method is used to authenticate replication partners. This attribute applies to the configuration partition of an AD LDS instance.

cn: ms-DS-Repl-Authentication-Mode

ldapDisplayName: msDS-ReplAuthenticationMode

attributeId: 1.2.840.113556.1.4.1861

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 6e124d4f-1a3f-4cc6-8e09-4a54c81b1d50

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.221"></a>
## 2.221 Attribute msDS-Replication-Notify-First-DSA-Delay

This attribute controls the delay between changes to the DS and notification of the first replica partner for an NC.

cn: ms-DS-Replication-Notify-First-DSA-Delay

ldapDisplayName: msDS-Replication-Notify-First-DSA-Delay

attributeId: 1.2.840.113556.1.4.1663

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 85abd4f4-0a89-4e49-bdec-6f35bb2562ba

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.222"></a>
## 2.222 Attribute msDS-Replication-Notify-Subsequent-DSA-Delay

This attribute controls the delay between notification of each subsequent replica partner for an NC.

cn: ms-DS-Replication-Notify-Subsequent-DSA-Delay

ldapDisplayName: msDS-Replication-Notify-Subsequent-DSA-Delay

attributeId: 1.2.840.113556.1.4.1664

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: d63db385-dd92-4b52-b1d8-0d3ecc0e86b6

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.223"></a>
## 2.223 Attribute msDS-ReplicationEpoch

This attribute is used to hold the epoch under which all of the DCs are replicating. An epoch is the period in which a domain has a specific name. A new epoch starts when a domain name change occurs.

cn: ms-DS-ReplicationEpoch

ldapDisplayName: msDS-ReplicationEpoch

attributeId: 1.2.840.113556.1.4.1720

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 08e3aa79-eb1c-45b5-af7b-8f94246c8e41

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.224"></a>
## 2.224 Attribute msDS-ReplValueMetaData

This attribute specifies a list of metadata for each value of an attribute. The metadata indicates who changed the value last.

cn: ms-DS-Repl-Value-Meta-Data

ldapDisplayName: msDS-ReplValueMetaData

attributeId: 1.2.840.113556.1.4.1708

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 2f5c8145-e1bd-410b-8957-8bfa81d5acfd

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.225"></a>
## 2.225 Attribute msDS-ReplValueMetaDataExt

This attribute contains no values on any object.

cn: ms-DS-Repl-Value-Meta-Data-Ext

ldapDisplayName: msDS-ReplValueMetaDataExt

attributeId: 1.2.840.113556.1.4.2235

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 1e02d2ef-44ad-46b2-a67d-9fd18d780bca

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_ATTR_IS_CONSTRUCTED | FLAG_SCHEMA_BASE_OBJECT

showInAdvancedViewOnly: TRUE

Version-Specific Behavior: First implemented on Windows Server 2012 R2.

<a id="Section_2.226"></a>
## 2.226 Attribute msDS-RequiredDomainBehaviorVersion

This attribute specifies the required domain functional level for an optional feature enabled in a domain-wide scope.

cn: ms-DS-Required-Domain-Behavior-Version

ldapDisplayName: msDS-RequiredDomainBehaviorVersion

attributeId: 1.2.840.113556.1.4.2066

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: eadd3dfe-ae0e-4cc2-b9b9-5fe5b6ed2dd2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.227"></a>
## 2.227 Attribute msDS-RequiredForestBehaviorVersion

This attribute specifies the required forest functional level for an optional feature.

cn: ms-DS-Required-Forest-Behavior-Version

ldapDisplayName: msDS-RequiredForestBehaviorVersion

attributeId: 1.2.840.113556.1.4.2079

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 4beca2e8-a653-41b2-8fee-721575474bec

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.228"></a>
## 2.228 Attribute msDS-RetiredReplNCSignatures

This attribute specifies information about naming contexts that are no longer held on this computer.

cn: ms-DS-Retired-Repl-NC-Signatures

ldapDisplayName: msDS-RetiredReplNCSignatures

attributeId: 1.2.840.113556.1.4.1826

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: d5b35506-19d6-4d26-9afb-11357ac99b5e

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.229"></a>
## 2.229 Attribute msDs-Schema-Extensions

This attribute specifies a binary BLOB used to store information about extensions to schema objects.

cn: ms-ds-Schema-Extensions

ldapDisplayName: msDs-Schema-Extensions

attributeId: 1.2.840.113556.1.4.1440

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: b39a61be-ed07-4cab-9a4a-4963ed0141e1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.230"></a>
## 2.230 Attribute msDS-SCPContainer

This attribute specifies the custom location to place SCP objects. This attribute contains a DN value (either FQDN or GUID–based) for the container in Active Directory.

cn: ms-DS-SCP-Container

ldapDisplayName: msDS-SCPContainer

attributeId: 1.2.840.113556.1.4.1872

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 454588e6-0b4e-b642-a6b8-ec03f6e1d9c5

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 4096

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.231"></a>
## 2.231 Attribute msDS-SDReferenceDomain

This attribute specifies the domain to be used for default security descriptor translation for a non-domain naming context.

cn: ms-DS-SD-Reference-Domain

ldapDisplayName: msDS-SDReferenceDomain

attributeId: 1.2.840.113556.1.4.1711

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 4c51e316-f628-43a5-b06b-ffb695fcb4f3

systemOnly: FALSE

searchFlags: 0

linkID: 2000

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.232"></a>
## 2.232 Attribute msDS-Security-Group-Extra-Classes

This attribute specifies the common names of the nonstandard classes that can be added to a security group through the Active Directory Users and Computers snap-in.

cn: ms-DS-Security-Group-Extra-Classes

ldapDisplayName: msDS-Security-Group-Extra-Classes

attributeId: 1.2.840.113556.1.4.1688

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 4f146ae8-a4fe-4801-a731-f51848a4f4e4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.233"></a>
## 2.233 Attribute msDS-ServiceAccount

This attribute specifies the FPO representing the AD LDS service account.

cn: ms-DS-Service-Account

ldapDisplayName: msDS-ServiceAccount

attributeId: 1.2.840.113556.1.4.1866

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: a7f73651-688b-401e-b0cf-9345857bab23

systemOnly: TRUE

searchFlags: 0

linkID: 2040

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.234"></a>
## 2.234 Attribute msDS-ServiceAccountBL

This attribute specifies a backlink reference to the AD LDS DSA object that uses this service account.

cn: ms-DS-Service-Account-BL

ldapDisplayName: msDS-ServiceAccountBL

attributeId: 1.2.840.113556.1.4.1867

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 1322c9ff-1334-3d4a-9396-4d9284d42636

systemOnly: TRUE

searchFlags: 0

linkID: 2041

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.235"></a>
## 2.235 Attribute msDS-ServiceAccountDNSDomain

This attribute specifies the domain of which the AD LDS service account is a member.

cn: ms-DS-Service-Account-DNS-Domain

ldapDisplayName: msDS-ServiceAccountDNSDomain

attributeId: 1.2.840.113556.1.4.1862

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: fba633d4-20d7-4773-8b2c-c7445f54360d

systemOnly: TRUE

searchFlags: 0

rangeLower: 0

rangeUpper: 2048

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.236"></a>
## 2.236 Attribute msDS-Settings

This attribute is used to store settings for an object. Its use is solely determined by the object's owner. It is recommended to use it to store name/value pairs; for example, color=blue.

cn: ms-DS-Settings

ldapDisplayName: msDS-Settings

attributeId: 1.2.840.113556.1.4.1697

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0e1b47d7-40a3-4b48-8d1b-4cac0c1cdf21

systemOnly: FALSE

searchFlags: 0

rangeUpper: 1000000

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.237"></a>
## 2.237 Attribute msDS-TasksForAzRole

This attribute specifies a list of tasks for Az-Role.

cn: ms-DS-Tasks-For-Az-Role

ldapDisplayName: msDS-TasksForAzRole

attributeId: 1.2.840.113556.1.4.1814

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 35319082-8c4a-4646-9386-c2949d49894d

systemOnly: FALSE

searchFlags: 0

linkID: 2024

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.238"></a>
## 2.238 Attribute msDS-TasksForAzRoleBL

This attribute specifies a backlink from Az-Task to the Az-Role objects that link to it.

cn: ms-DS-Tasks-For-Az-Role-BL

ldapDisplayName: msDS-TasksForAzRoleBL

attributeId: 1.2.840.113556.1.4.1815

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: a0dcd536-5158-42fe-8c40-c00a7ad37959

systemOnly: TRUE

searchFlags: 0

linkID: 2025

showInAdvancedViewOnly: TRUE

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.239"></a>
## 2.239 Attribute msDS-TasksForAzTask

This attribute specifies a list of tasks linked to Az-Task.

cn: ms-DS-Tasks-For-Az-Task

ldapDisplayName: msDS-TasksForAzTask

attributeId: 1.2.840.113556.1.4.1810

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: b11c8ee2-5fcd-46a7-95f0-f38333f096cf

systemOnly: FALSE

searchFlags: 0

linkID: 2020

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.240"></a>
## 2.240 Attribute msDS-TasksForAzTaskBL

This attribute specifies a backlink from Az-Task to the Az-Task objects that link to it.

cn: ms-DS-Tasks-For-Az-Task-BL

ldapDisplayName: msDS-TasksForAzTaskBL

attributeId: 1.2.840.113556.1.4.1811

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: df446e52-b5fa-4ca2-a42f-13f98a526c8f

systemOnly: TRUE

searchFlags: 0

linkID: 2021

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.241"></a>
## 2.241 Attribute msDS-TombstoneQuotaFactor

This attribute specifies the percentage factor by which the tombstone object count is reduced for the purpose of quota accounting.

cn: ms-DS-Tombstone-Quota-Factor

ldapDisplayName: msDS-TombstoneQuotaFactor

attributeId: 1.2.840.113556.1.4.1847

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 461744d7-f3b6-45ba-8753-fb9552a5df32

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 100

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.242"></a>
## 2.242 Attribute msDS-TopQuotaUsage

This attribute lists the top quota users, ordered by decreasing quota usage currently in the directory database.

cn: ms-DS-Top-Quota-Usage

ldapDisplayName: msDS-TopQuotaUsage

attributeId: 1.2.840.113556.1.4.1850

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 7b7cce4f-f1f5-4bb6-b7eb-23504af19e75

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.243"></a>
## 2.243 Attribute msDS-UpdateScript

This attribute is used to hold the script with the domain restructure instructions.

cn: ms-DS-UpdateScript

ldapDisplayName: msDS-UpdateScript

attributeId: 1.2.840.113556.1.4.1721

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 146eb639-bb9f-4fc1-a825-e29e00c77920

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.244"></a>
## 2.244 Attribute msDS-User-Account-Control-Computed

This attribute specifies flags that control behavior of the user account. For more information, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.4.5.17.

cn: ms-DS-User-Account-Control-Computed

ldapDisplayName: msDS-User-Account-Control-Computed

attributeId: 1.2.840.113556.1.4.1460

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 2cc4b836-b63f-4940-8d23-ea7acf06af56

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.245"></a>
## 2.245 Attribute msDS-UserAccountDisabled

This attribute specifies a Boolean flag that controls whether an account is disabled or enabled.

cn: ms-DS-User-Account-Disabled

ldapDisplayName: msDS-UserAccountDisabled

attributeId: 1.2.840.113556.1.4.1853

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 7c708658-7372-4211-b22b-13a45ffd1d61

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.246"></a>
## 2.246 Attribute msDS-UserDontExpirePassword

This attribute specifies a Boolean flag that controls whether the password will expire for the account that this attribute references.

cn: ms-DS-User-Dont-Expire-Password

ldapDisplayName: msDS-UserDontExpirePassword

attributeId: 1.2.840.113556.1.4.1855

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8788193a-2925-43d9-a221-bb7fff397675

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.247"></a>
## 2.247 Attribute msDS-UserPasswordExpired

This attribute specifies a Boolean flag that indicates whether the password has expired for the account that this attribute references. TRUE means that the password has expired.

cn: ms-DS-User-Password-Expired

ldapDisplayName: msDS-UserPasswordExpired

attributeId: 1.2.840.113556.1.4.1858

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 565c7ab5-e13e-47f6-abb5-de741806f125

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.248"></a>
## 2.248 Attribute msDS-USNLastSyncSuccess

This attribute specifies the USN at which the last successful replication synchronization occurred.

cn: ms-DS-USN-Last-Sync-Success

ldapDisplayName: msDS-USNLastSyncSuccess

attributeId: 1.2.840.113556.1.4.2055

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 31f7b8b6-c9f8-4f2d-a37b-58a823030331

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED |

FLAG_ATTR_IS_OPERATIONAL

schemaFlagsEx: FLAG_ATTR_IS_CRITICAL

Version-Specific Behavior: First implemented on Windows Server 2008 R2.

<a id="Section_2.249"></a>
## 2.249 Attribute mustContain

This attribute specifies the list of mandatory attributes for a class. These attributes have to be specified when an instance of the class is created.

cn: Must-Contain

ldapDisplayName: mustContain

attributeId: 1.2.840.113556.1.2.24

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679d3-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.250"></a>
## 2.250 Attribute name

This attribute specifies the relative distinguished name of an object.

cn: RDN

ldapDisplayName: name

attributeId: 1.2.840.113556.1.4.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a0e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE| fANR | fATTINDEX

rangeLower: 1

rangeUpper: 255

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.251"></a>
## 2.251 Attribute nCName

This attribute specifies the distinguished name of the naming context for the object.

cn: NC-Name

ldapDisplayName: nCName

attributeId: 1.2.840.113556.1.2.16

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679d6-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.252"></a>
## 2.252 Attribute nETBIOSName

This attribute specifies the name of the object to be used over NetBIOS.

cn: NETBIOS-Name

ldapDisplayName: nETBIOSName

attributeId: 1.2.840.113556.1.4.87

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679d8-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.253"></a>
## 2.253 Attribute networkAddress

This attribute specifies the TCP/IP address for a network segment. Also called the subnet address.

cn: Network-Address

ldapDisplayName: networkAddress

attributeId: 1.2.840.113556.1.2.459

attributeSyntax: 2.5.5.4

omSyntax: 20

isSingleValued: FALSE

schemaIdGuid: bf9679d9-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 256

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.254"></a>
## 2.254 Attribute nonIndexedMetadata

ms-DS-Non-Indexed-Metadata

cn: ms-DS-Non-Indexed-Metadata

ldapDisplayName: nonIndexedMetadata

attributeId: 1.2.840.113556.1.4.1887

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.255"></a>
## 2.255 Attribute notificationList

This attribute is not necessary for Active Directory to function. The protocol does not define a format beyond that required by the schema.

cn: Notification-List

ldapDisplayName: notificationList

attributeId: 1.2.840.113556.1.4.303

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 19195a56-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.256"></a>
## 2.256 Attribute ntPwdHistory

This attribute specifies the password history of the user in Windows NT operating system one-way format (OWF). Windows 2000 operating system uses the Windows NT OWF.

cn: Nt-Pwd-History

ldapDisplayName: ntPwdHistory

attributeId: 1.2.840.113556.1.4.94

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf9679e2-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.257"></a>
## 2.257 Attribute nTSecurityDescriptor

This attribute specifies the Windows NT security descriptor for an object.

cn: NT-Security-Descriptor

ldapDisplayName: nTSecurityDescriptor

attributeId: 1.2.840.113556.1.2.281

attributeSyntax: 2.5.5.15

omSyntax: 66

isSingleValued: TRUE

schemaIdGuid: bf9679e3-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE

rangeLower: 0

rangeUpper: 132096

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_OPERATIONAL |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.258"></a>
## 2.258 Attribute o

This attribute specifies the name of the company or organization.

cn: Organization-Name

ldapDisplayName: o

attributeId: 2.5.4.10

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679ef-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.259"></a>
## 2.259 Attribute objectCategory

This attribute specifies an object class name used to group objects of this or derived classes.

cn: Object-Category

ldapDisplayName: objectCategory

attributeId: 1.2.840.113556.1.4.782

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97369-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.260"></a>
## 2.260 Attribute objectClass

This attribute specifies the list of classes of which this object is an instance.

cn: Object-Class

ldapDisplayName: objectClass

attributeId: 2.5.4.0

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679e5-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.261"></a>
## 2.261 Attribute objectClassCategory

This attribute contains the class type, such as abstract, auxiliary, or structured.

cn: Object-Class-Category

ldapDisplayName: objectClassCategory

attributeId: 1.2.840.113556.1.2.370

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: TRUE

schemaIdGuid: bf9679e6-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

rangeLower: 0

rangeUpper: 3

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.262"></a>
## 2.262 Attribute objectClasses

This attribute is a multivalued property containing strings that represent each class in the schema. Each value contains the [governsID](#Section_1c2fcfcf025946deb2cb06b9e32644e6), [lDAPDisplayName](#Section_fc92e718c06c4906a403cee6de4da32b), [mustContain](#Section_2a1e36cbd0d4411f8216543c14e524fe), [mayContain](#Section_f6ddd721da4343778afa6dcb6f752a73), and so on.

cn: Object-Classes

ldapDisplayName: objectClasses

attributeId: 2.5.21.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a7ad94b-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.263"></a>
## 2.263 Attribute objectGUID

This attribute specifies the unique identifier for an object.

cn: Object-Guid

ldapDisplayName: objectGUID

attributeId: 1.2.840.113556.1.4.2

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e7-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 16

rangeUpper: 16

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.264"></a>
## 2.264 Attribute objectSid

This attribute contains a binary value that specifies the security identifier (SID) of a security principal object. The SID is a unique value used to identify security principal objects.

cn: Object-Sid

ldapDisplayName: objectSid

attributeId: 1.2.840.113556.1.4.146

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e8-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

rangeLower: 0

rangeUpper: 28

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.265"></a>
## 2.265 Attribute objectVersion

This attribute can be used to store a version number for the object.

cn: Object-Version

ldapDisplayName: objectVersion

attributeId: 1.2.840.113556.1.2.76

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16775848-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.266"></a>
## 2.266 Attribute oMObjectClass

This attribute specifies the unique OID for the attribute or class.

cn: OM-Object-Class

ldapDisplayName: oMObjectClass

attributeId: 1.2.840.113556.1.2.218

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679ec-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.267"></a>
## 2.267 Attribute oMSyntax

Used as part of specifying the syntax of an attribute. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.2.2.2, LDAP Representation, for information on how this object is used by the Active Directory service.

cn: OM-Syntax

ldapDisplayName: oMSyntax

attributeId: 1.2.840.113556.1.2.231

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf9679ed-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.268"></a>
## 2.268 Attribute options

This attribute is a bit field, where the meaning of the bits varies from objectClass to objectClass. Can occur on Inter-Site-Transport, NTDS-Connection, NTDS-DSA, NTDS-Site-Settings, and Site-Link objects.

cn: Options

ldapDisplayName: options

attributeId: 1.2.840.113556.1.4.307

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 19195a53-6da0-11d0-afd3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.269"></a>
## 2.269 Attribute otherFacsimileTelephoneNumber

This attribute specifies a list of alternate facsimile numbers.

cn: Phone-Fax-Other

ldapDisplayName: otherFacsimileTelephoneNumber

attributeId: 1.2.840.113556.1.4.646

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0296c11d-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.270"></a>
## 2.270 Attribute otherHomePhone

This attribute specifies a list of alternate home phone numbers.

cn: Phone-Home-Other

ldapDisplayName: otherHomePhone

attributeId: 1.2.840.113556.1.2.277

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa2-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.271"></a>
## 2.271 Attribute otherIpPhone

This attribute specifies the list of alternate TCP/IP addresses for the phone. Used by telephony.

cn: Phone-Ip-Other

ldapDisplayName: otherIpPhone

attributeId: 1.2.840.113556.1.4.722

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 4d146e4b-48d4-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.272"></a>
## 2.272 Attribute otherMobile

This attribute specifies a list of alternate cell phone numbers.

cn: Phone-Mobile-Other

ldapDisplayName: otherMobile

attributeId: 1.2.840.113556.1.4.647

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0296c11e-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.273"></a>
## 2.273 Attribute otherPager

This attribute specifies a list of alternate pager numbers.

cn: Phone-Pager-Other

ldapDisplayName: otherPager

attributeId: 1.2.840.113556.1.2.118

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa4-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.274"></a>
## 2.274 Attribute otherTelephone

This attribute specifies a list of alternate office phone numbers.

cn: Phone-Office-Other

ldapDisplayName: otherTelephone

attributeId: 1.2.840.113556.1.2.18

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: f0f8ffa5-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.275"></a>
## 2.275 Attribute otherWellKnownObjects

This attribute contains a list of containers by GUID and distinguished name. This permits retrieving an object after it has been moved by using just the GUID and the domain name. Whenever the object is moved, the Active Directory system will automatically update the distinguished name.

cn: Other-Well-Known-Objects

ldapDisplayName: otherWellKnownObjects

attributeId: 1.2.840.113556.1.4.1359

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 1ea64e5d-ac0f-11d2-90df-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.276"></a>
## 2.276 Attribute ou

This attribute specifies the name of the organizational unit.

cn: Organizational-Unit-Name

ldapDisplayName: ou

attributeId: 2.5.4.11

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679f0-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.277"></a>
## 2.277 Attribute owner

This attribute specifies the distinguished name of an object that has ownership of an object.

cn: Owner

ldapDisplayName: owner

attributeId: 2.5.4.32

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679f3-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

linkID: 44

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.278"></a>
## 2.278 Attribute ownerBL

This attribute specifies the backlink to the [owner](#Section_3cd444e9c54a4ab496213baeb89834b9) attribute. It contains a list of owners for an object.

cn: ms-Exch-Owner-BL

ldapDisplayName: ownerBL

attributeId: 1.2.840.113556.1.2.104

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf9679f4-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

linkID: 45

systemFlags: FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.279"></a>
## 2.279 Attribute pager

This attribute specifies the primary pager number.

cn: Phone-Pager-Primary

ldapDisplayName: pager

attributeId: 0.9.2342.19200300.100.1.42

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ffa6-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.280"></a>
## 2.280 Attribute parentGUID

This is a constructed attribute, invented to support the DirSync control. Holds the objectGuid of an object's parent when replicating an object's creation, rename, or move.

cn: Parent-GUID

ldapDisplayName: parentGUID

attributeId: 1.2.840.113556.1.4.1224

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 2df90d74-009f-11d2-aa4c-00c04fd7d83a

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.281"></a>
## 2.281 Attribute partialAttributeDeletionList

This attribute tacks the internal replication state of partial replicas (that is, on GCs). It is an attribute of the partial replica NC object, and is used when the GC is in the process of removing attributes from the objects in its partial replica NCs.

cn: Partial-Attribute-Deletion-List

ldapDisplayName: partialAttributeDeletionList

attributeId: 1.2.840.113556.1.4.663

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 28630ec0-41d5-11d1-a9c1-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.282"></a>
## 2.282 Attribute partialAttributeSet

This attribute tracks the internal replication state of partial replicas (that is, on GCs). It is an attribute of the partial replica NC object, and defines the set of attributes present on a particular partial replica NC.

cn: Partial-Attribute-Set

ldapDisplayName: partialAttributeSet

attributeId: 1.2.840.113556.1.4.640

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 19405b9e-3cfa-11d1-a9c0-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.283"></a>
## 2.283 Attribute pekList

This attribute specifies a list of password encryption keys. The attribute is used internally. It is not replicated and its content is not accessible through any protocol. For more information see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.4.4 (Extended Access Checks).

cn: Pek-List

ldapDisplayName: pekList

attributeId: 1.2.840.113556.1.4.865

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 07383083-91df-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.284"></a>
## 2.284 Attribute personalTitle

This attribute specifies the user's title.

cn: Personal-Title

ldapDisplayName: personalTitle

attributeId: 1.2.840.113556.1.2.615

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 16775858-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.285"></a>
## 2.285 Attribute photo

This attribute specifies an object encoded in G3 fax as explained in recommendation T.4, with an ASN.1 wrapper to make it compatible with an X.400 BodyPart as defined in X.420.

cn: photo

ldapDisplayName: photo

attributeId: 0.9.2342.19200300.100.1.7

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 9c979768-ba1a-4c08-9632-c6a5c1ed649a

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.286"></a>
## 2.286 Attribute physicalDeliveryOfficeName

This attribute contains the office location in the user's place of business.

cn: Physical-Delivery-Office-Name

ldapDisplayName: physicalDeliveryOfficeName

attributeId: 2.5.4.19

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679f7-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.287"></a>
## 2.287 Attribute possibleInferiors

This attribute specifies the list of objects that this object can contain.

cn: Possible-Inferiors

ldapDisplayName: possibleInferiors

attributeId: 1.2.840.113556.1.4.915

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 9a7ad94c-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.288"></a>
## 2.288 Attribute possSuperiors

This attribute specifies the list of objects that can contain this class.

cn: Poss-Superiors

ldapDisplayName: possSuperiors

attributeId: 1.2.840.113556.1.2.8

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf9679fa-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.289"></a>
## 2.289 Attribute postalAddress

This attribute specifies the mailing address for the object.

cn: Postal-Address

ldapDisplayName: postalAddress

attributeId: 2.5.4.16

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679fc-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.290"></a>
## 2.290 Attribute postalCode

This attribute specifies the postal or ZIP code for mail delivery.

cn: Postal-Code

ldapDisplayName: postalCode

attributeId: 2.5.4.17

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf9679fd-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 40

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.291"></a>
## 2.291 Attribute postOfficeBox

This attribute specifies the P.O. box number for this object.

cn: Post-Office-Box

ldapDisplayName: postOfficeBox

attributeId: 2.5.4.18

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf9679fb-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 40

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.292"></a>
## 2.292 Attribute preferredDeliveryMethod

This attribute specifies the X.500–preferred way [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589) to deliver to the addressee.

cn: Preferred-Delivery-Method

ldapDisplayName: preferredDeliveryMethod

attributeId: 2.5.4.28

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: FALSE

schemaIdGuid: bf9679fe-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.293"></a>
## 2.293 Attribute preferredLanguage

This attribute specifies the preferred written or spoken language for a person.

cn: preferredLanguage

ldapDisplayName: preferredLanguage

attributeId: 2.16.840.1.113730.3.1.39

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 856be0d0-18e7-46e1-8f5f-7ee4d9020e0d

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.294"></a>
## 2.294 Attribute preferredOU

This attribute specifies the organizational unit to show by default on the user's desktop.

cn: Preferred-OU

ldapDisplayName: preferredOU

attributeId: 1.2.840.113556.1.4.97

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: bf9679ff-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.295"></a>
## 2.295 Attribute prefixMap

The **Prefix-Map** attribute is for internal use only.

cn: Prefix-Map

ldapDisplayName: prefixMap

attributeId: 1.2.840.113556.1.4.538

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 52458022-ca6a-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.296"></a>
## 2.296 Attribute primaryGroupToken

A computed attribute that is used in retrieving the membership list of a group such as Domain Users. The complete membership of such groups is not stored explicitly for scaling reasons.

cn: Primary-Group-Token

ldapDisplayName: primaryGroupToken

attributeId: 1.2.840.113556.1.4.1412

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: c0ed8738-7efd-4481-84d9-66d2db8be369

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.297"></a>
## 2.297 Attribute primaryInternationalISDNNumber

This attribute specifies the primary ISDN number.

cn: Phone-ISDN-Primary

ldapDisplayName: primaryInternationalISDNNumber

attributeId: 1.2.840.113556.1.4.649

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 0296c11f-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.298"></a>
## 2.298 Attribute primaryTelexNumber

This attribute specifies the primary telex number.

cn: Telex-Primary

ldapDisplayName: primaryTelexNumber

attributeId: 1.2.840.113556.1.4.648

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 0296c121-40da-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.299"></a>
## 2.299 Attribute proxiedObjectName

This attribute is used internally by Active Directory to help track interdomain moves.

cn: Proxied-Object-Name

ldapDisplayName: proxiedObjectName

attributeId: 1.2.840.113556.1.4.1249

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: TRUE

schemaIdGuid: e1aea402-cd5b-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.300"></a>
## 2.300 Attribute proxyAddresses

This attribute specifies proxy addresses. A proxy address is the address by which a Microsoft Exchange Server recipient object is recognized in a foreign mail system. Proxy addresses are required for all recipient objects, such as custom recipients and distribution lists.

cn: Proxy-Addresses

ldapDisplayName: proxyAddresses

attributeId: 1.2.840.113556.1.2.210

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: bf967a06-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 1123

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.301"></a>
## 2.301 Attribute pwdLastSet

This attribute specifies the date and time that the password for this account was last changed. This value is stored as a large integer that represents the number of 100-nanosecond intervals since January 1, 1601 (UTC).

cn: Pwd-Last-Set

ldapDisplayName: pwdLastSet

attributeId: 1.2.840.113556.1.4.96

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a0a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.302"></a>
## 2.302 Attribute queryFilter

Query-Filter attribute.

cn: Query-Filter

ldapDisplayName: queryFilter

attributeId: 1.2.840.113556.1.4.1355

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: cbf70a26-7e78-11d2-9921-0000f87a57d4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.303"></a>
## 2.303 Attribute queryPolicyBL

This attribute is the back link attribute of queryPolicy and lists all objects holding references to a given Query-Policy.

cn: Query-Policy-BL

ldapDisplayName: queryPolicyBL

attributeId: 1.2.840.113556.1.4.608

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: e1aea404-cd5b-11d0-afff-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 69

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.304"></a>
## 2.304 Attribute queryPolicyObject

This attribute contains a reference to the default Query-Policy in force for this server.

cn: Query-Policy-Object

ldapDisplayName: queryPolicyObject

attributeId: 1.2.840.113556.1.4.607

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: e1aea403-cd5b-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 68

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.305"></a>
## 2.305 Attribute rangeLower

This attribute specifies the minimum value or length of an attribute.

cn: Range-Lower

ldapDisplayName: rangeLower

attributeId: 1.2.840.113556.1.2.34

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a0c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.306"></a>
## 2.306 Attribute rangeUpper

This attribute specifies the maximum value or length of an attribute.

cn: Range-Upper

ldapDisplayName: rangeUpper

attributeId: 1.2.840.113556.1.2.35

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a0d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.307"></a>
## 2.307 Attribute rDNAttID

This attribute specifies the RDN for the attribute that is used to name a class.

cn: RDN-Att-ID

ldapDisplayName: rDNAttID

attributeId: 1.2.840.113556.1.2.26

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967a0f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.308"></a>
## 2.308 Attribute registeredAddress

This attribute specifies a mnemonic for an address associated with an object at a particular city location. The mnemonic is registered in the country/region in which the city is located and is used in the provision of the Public Telegram Service.

cn: Registered-Address

ldapDisplayName: registeredAddress

attributeId: 2.5.4.26

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a10-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 4096

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.309"></a>
## 2.309 Attribute replInterval

The attribute of Site-Link objects that defines the interval in minutes between replication cycles between the sites in the Site-List. It has to be a multiple of 15 minutes (the granularity of cross-site DS replication), a minimum of 15 minutes, and a maximum of 10,080 minutes (one week).

cn: Repl-Interval

ldapDisplayName: replInterval

attributeId: 1.2.840.113556.1.4.1336

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 45ba9d1a-56fa-11d2-90d0-00c04fd91ab1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.310"></a>
## 2.310 Attribute replPropertyMetaData

This attribute tracks internal replication state information for DS objects. Information here can be extracted in public form through the public DsReplicaGetInfo() API. This attribute is present on all DS objects.

cn: Repl-Property-Meta-Data

ldapDisplayName: replPropertyMetaData

attributeId: 1.2.840.113556.1.4.3

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 281416c0-1968-11d0-a28f-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_OPERATIONAL |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.311"></a>
## 2.311 Attribute replTopologyStayOfExecution

This attribute specifies the delay between deleting a server object and permanently removing it from the replication topology.

cn: Repl-Topology-Stay-Of-Execution

ldapDisplayName: replTopologyStayOfExecution

attributeId: 1.2.840.113556.1.4.677

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 7bfdcb83-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.312"></a>
## 2.312 Attribute replUpToDateVector

This attribute tracks internal replication state information for an entire NC. Information here can be extracted in public form through the DsReplicaGetInfo() API. Present on all NC root objects.

cn: Repl-UpToDate-Vector

ldapDisplayName: replUpToDateVector

attributeId: 1.2.840.113556.1.4.4

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967a16-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.313"></a>
## 2.313 Attribute repsFrom

This attribute lists the servers from which the directory will accept changes for the defined naming context (NC).

cn: Reps-From

ldapDisplayName: repsFrom

attributeId: 1.2.840.113556.1.2.91

attributeSyntax: 2.5.5.10

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.6

isSingleValued: FALSE

schemaIdGuid: bf967a1d-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.314"></a>
## 2.314 Attribute repsTo

This attribute lists the servers that the directory will notify of changes and the servers that the directory will send changes to, upon request for the defined NC.

cn: Reps-To

ldapDisplayName: repsTo

attributeId: 1.2.840.113556.1.2.83

attributeSyntax: 2.5.5.10

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.6

isSingleValued: FALSE

schemaIdGuid: bf967a1e-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.315"></a>
## 2.315 Attribute retiredReplDSASignatures

This attribute tracks the past DS replication identities of a given DC.

cn: Retired-Repl-DSA-Signatures

ldapDisplayName: retiredReplDSASignatures

attributeId: 1.2.840.113556.1.4.673

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 7bfdcb7f-4807-11d1-a9c3-0000f80367c1

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.316"></a>
## 2.316 Attribute revision

This attribute specifies the revision level for a security descriptor or other change. Only used in the sam-server and ds-ui-settings objects.

cn: Revision

ldapDisplayName: revision

attributeId: 1.2.840.113556.1.4.145

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a21-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.317"></a>
## 2.317 Attribute rightsGuid

This attribute specifies the GUID that is used to represent an extended right within an access control entry.

cn: Rights-Guid

ldapDisplayName: rightsGuid

attributeId: 1.2.840.113556.1.4.340

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 8297931c-86d3-11d0-afda-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

rangeLower: 36

rangeUpper: 36

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.318"></a>
## 2.318 Attribute roomNumber

This attribute specifies the room number of an object.

cn: roomNumber

ldapDisplayName: roomNumber

attributeId: 0.9.2342.19200300.100.1.6

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 81d7f8c2-e327-4a0d-91c6-b42d4009115f

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.319"></a>
## 2.319 Attribute rootTrust

This attribute specifies the distinguished name of another [Cross-Ref](#Section_f58b3a84de994b0aa1566ad64cea2d8e).

cn: Root-Trust

ldapDisplayName: rootTrust

attributeId: 1.2.840.113556.1.4.674

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 7bfdcb80-4807-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.320"></a>
## 2.320 Attribute schedule

This attribute specifies a schedule BLOB as defined by the NT Job Service. Used by replication.

cn: Schedule

ldapDisplayName: schedule

attributeId: 1.2.840.113556.1.4.211

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: dd712224-10e4-11d0-a05f-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.321"></a>
## 2.321 Attribute schemaFlagsEx

This attribute specifies an integer value that contains flags that define additional properties of the attribute, as shown below. See [MS-ADTS](../MS-ADTS/MS-ADTS.md) for more information. This is an optional attribute.

The schemaFlagsEx attribute contains bitwise flags. The following value is relevant to schema objects:

- FLAG_ATTR_IS_CRITICAL: Specifies that the attribute is not a member of the filtered attribute set even if the fRODCFilteredAttribute ([MS-ADTS] section 3.1.1.2.3.5) is set.
This attribute is defined as follows:

cn: Schema-Flags-Ex

ldapDisplayName: schemaFlagsEx

attributeId: 1.2.840.113556.1.4.120

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: bf967a2b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

The schemaFlagsEx attribute was added to this attribute definition in Windows Server 2008.

The FLAG_ATTR_IS_CRITICAL value was implemented in Windows Server 2008.

<a id="Section_2.322"></a>
## 2.322 Attribute schemaIDGUID

This attribute specifies the unique identifier for a schema object.

cn: Schema-ID-GUID

ldapDisplayName: schemaIDGUID

attributeId: 1.2.840.113556.1.4.148

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf967923-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.323"></a>
## 2.323 Attribute schemaInfo

This attribute specifies an internal binary value used to detect schema changes between DCs and force a schema NC replication cycle before replicating any other NC. Used to resolve ties when the schema FSMO is seized and a change is made on more than one DC.

cn: Schema-Info

ldapDisplayName: schemaInfo

attributeId: 1.2.840.113556.1.4.1358

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: f9fb64ae-93b4-11d2-9945-0000f87a57d4

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.324"></a>
## 2.324 Attribute schemaUpdate

cn: Schema-Update

ldapDisplayName: schemaUpdate

attributeId: 1.2.840.113556.1.4.481

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: 1e2d06b4-ac8f-11d0-afe3-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.325"></a>
## 2.325 Attribute schemaVersion

This attribute specifies the version number for the schema.

cn: Schema-Version

ldapDisplayName: schemaVersion

attributeId: 1.2.840.113556.1.2.471

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: FALSE

schemaIdGuid: bf967a2c-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.326"></a>
## 2.326 Attribute scopeFlags

cn: Scope-Flags

ldapDisplayName: scopeFlags

attributeId: 1.2.840.113556.1.4.1354

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16f3a4c2-7e79-11d2-9921-0000f87a57d4

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.327"></a>
## 2.327 Attribute sDRightsEffective

This constructed attribute returns a single DWORD value that can have up to three bits set: OWNER_SECURITY_INFORMATION, DACL_SECURITY_INFORMATION, and SACL_SECURITY_INFORMATION. If a bit is set, then the user has write access to the corresponding part of the security descriptor.

**Note**: "Owner" means both owner and group.

cn: SD-Rights-Effective

ldapDisplayName: sDRightsEffective

attributeId: 1.2.840.113556.1.4.1304

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: c3dbafa6-33df-11d2-98b2-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.328"></a>
## 2.328 Attribute searchFlags

This attribute contains a set of flags that specify search and indexing information for an attribute.

cn: Search-Flags

ldapDisplayName: searchFlags

attributeId: 1.2.840.113556.1.2.334

attributeSyntax: 2.5.5.9

omSyntax: 10

isSingleValued: TRUE

schemaIdGuid: bf967a2d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.329"></a>
## 2.329 Attribute searchGuide

This attribute specifies information of suggested search criteria that might be included in some entries that are expected to be a convenient base object for the search operation; for example, country/region or organization.

cn: Search-Guide

ldapDisplayName: searchGuide

attributeId: 2.5.4.14

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a2e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.330"></a>
## 2.330 Attribute secretary

This attribute contains the distinguished name of the secretary for an account.

cn: secretary

ldapDisplayName: secretary

attributeId: 0.9.2342.19200300.100.1.21

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 01072d9a-98ad-4a53-9744-e83e287278fb

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.331"></a>
## 2.331 Attribute seeAlso

This attribute specifies the list of DNs related to an object.

cn: See-Also

ldapDisplayName: seeAlso

attributeId: 2.5.4.34

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a31-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.332"></a>
## 2.332 Attribute serialNumber

This attribute is part of the X.500 specification [[X500]](https://go.microsoft.com/fwlink/?LinkId=90589).

cn: Serial-Number

ldapDisplayName: serialNumber

attributeId: 2.5.4.5

attributeSyntax: 2.5.5.5

omSyntax: 19

isSingleValued: FALSE

schemaIdGuid: bf967a32-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.333"></a>
## 2.333 Attribute serverReference

This attribute specifies a site computer object. The attribute is not necessary for Active Directory Lightweight Directory Services to function. The protocol does not define a format beyond that required by the schema.

cn: Server-Reference

ldapDisplayName: serverReference

attributeId: 1.2.840.113556.1.4.515

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d9736d-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 94

showInAdvancedViewOnly: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.334"></a>
## 2.334 Attribute serverReferenceBL

This attribute is the backlink attribute of serverReference, and it contains the DN of a server object under the sites folder. This attribute is not necessary for Active Directory Lightweight Directory Services to function. The protocol does not define a format beyond that required by the schema.

cn: Server-Reference-BL

ldapDisplayName: serverReferenceBL

attributeId: 1.2.840.113556.1.4.516

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 26d9736e-6070-11d1-a9c6-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 95

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.335"></a>
## 2.335 Attribute shellContextMenu

This attribute specifies the order number and GUID of the context menu for this object.

cn: Shell-Context-Menu

ldapDisplayName: shellContextMenu

attributeId: 1.2.840.113556.1.4.615

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 553fd039-f32e-11d0-b0bc-00c04fd8dca6

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.336"></a>
## 2.336 Attribute shellPropertyPages

This attribute specifies the order number and GUID of property pages for managing Active Directory objects. These property pages can be accessed from the Windows shell. For more information, see the document "Extending the User Interface for Directory Objects" [[MSDN-ExtUserIntDirObj]](https://go.microsoft.com/fwlink/?LinkId=107095).

cn: Shell-Property-Pages

ldapDisplayName: shellPropertyPages

attributeId: 1.2.840.113556.1.4.563

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 52458039-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.337"></a>
## 2.337 Attribute showInAdvancedViewOnly

This attribute is TRUE if the corresponding attribute is to be visible in the advanced mode of the UI.

cn: Show-In-Advanced-View-Only

ldapDisplayName: showInAdvancedViewOnly

attributeId: 1.2.840.113556.1.2.169

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967984-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY | fATTINDEX

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.338"></a>
## 2.338 Attribute siteLinkList

This attribute specifies a list of site links that are associated with this bridge.

cn: Site-Link-List

ldapDisplayName: siteLinkList

attributeId: 1.2.840.113556.1.4.822

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdd-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 142

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.339"></a>
## 2.339 Attribute siteList

This attribute specifies a list of sites that are connected to this link object.

cn: Site-List

ldapDisplayName: siteList

attributeId: 1.2.840.113556.1.4.821

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: d50c2cdc-8951-11d1-aebc-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 144

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.340"></a>
## 2.340 Attribute siteObject

This attribute specifies the DN for the site to which this subnet belongs.

cn: Site-Object

ldapDisplayName: siteObject

attributeId: 1.2.840.113556.1.4.512

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 3e10944c-c354-11d0-aff8-0000f80367c1

systemOnly: FALSE

searchFlags: 0

linkID: 46

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.341"></a>
## 2.341 Attribute siteObjectBL

This attribute is the backlink attribute of siteObject and contains the list of subnet objects that belong to a site.

cn: Site-Object-BL

ldapDisplayName: siteObjectBL

attributeId: 1.2.840.113556.1.4.513

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 3e10944d-c354-11d0-aff8-0000f80367c1

systemOnly: TRUE

searchFlags: 0

linkID: 47

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.342"></a>
## 2.342 Attribute siteServer

This attribute specifies the licensing master server for a given site.

cn: Site-Server

ldapDisplayName: siteServer

attributeId: 1.2.840.113556.1.4.494

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 1be8f17c-a9ff-11d0-afe2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.343"></a>
## 2.343 Attribute sn

This attribute contains the family or last name for a user.

cn: Surname

ldapDisplayName: sn

attributeId: 2.5.4.4

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a41-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fANR | fATTINDEX

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.344"></a>
## 2.344 Attribute sourceObjectGuid

ms-DS-Source-Object-Guid

cn: ms-DS-Source-Object-Guid

ldapDisplayName: sourceObjectGuid

attributeId: 1.2.840.113556.1.4.1885

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

searchFlags: fATTINDEX

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.345"></a>
## 2.345 Attribute st

This attribute specifies the name of a user's state or province.

cn: State-Or-Province-Name

ldapDisplayName: st

attributeId: 2.5.4.8

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a39-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 128

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.346"></a>
## 2.346 Attribute street

This attribute specifies the user's street address.

cn: Street-Address

ldapDisplayName: street

attributeId: 2.5.4.9

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a3a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: fCOPY

rangeLower: 1

rangeUpper: 1024

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.347"></a>
## 2.347 Attribute streetAddress

This attribute specifies the user's address.

cn: Address

ldapDisplayName: streetAddress

attributeId: 1.2.840.113556.1.2.256

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: f0f8ff84-1191-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 1024

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.348"></a>
## 2.348 Attribute structuralObjectClass

This constructed attribute stores a list of classes contained in a class hierarchy, including abstract classes. This list contains dynamically linked auxiliary classes.

cn: Structural-Object-Class

ldapDisplayName: structuralObjectClass

attributeId: 2.5.21.9

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: 3860949f-f6a8-4b38-9950-81ecb6bc2982

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.349"></a>
## 2.349 Attribute subClassOf

This attribute specifies the parent class of a class.

cn: Sub-Class-Of

ldapDisplayName: subClassOf

attributeId: 1.2.840.113556.1.2.21

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: bf967a3b-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.350"></a>
## 2.350 Attribute subRefs

This attribute specifies a list of subordinate references of a naming context.

cn: Sub-Refs

ldapDisplayName: subRefs

attributeId: 1.2.840.113556.1.2.7

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: bf967a3c-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.351"></a>
## 2.351 Attribute subSchemaSubEntry

This attribute specifies the DN for the location of the subschema object where a class or attribute is defined.

cn: SubSchemaSubEntry

ldapDisplayName: subSchemaSubEntry

attributeId: 2.5.18.10

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: FALSE

schemaIdGuid: 9a7ad94d-ca53-11d1-bbd0-0080c76670c0

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.352"></a>
## 2.352 Attribute superiorDNSRoot

This system attribute is used for referrals generation.

cn: Superior-DNS-Root

ldapDisplayName: superiorDNSRoot

attributeId: 1.2.840.113556.1.4.532

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 5245801d-ca6a-11d0-afff-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.353"></a>
## 2.353 Attribute supplementalCredentials

This attribute specifies stored credentials for use in authenticating. It provides the encrypted version of the user's password. This attribute is neither readable nor writable.

cn: Supplemental-Credentials

ldapDisplayName: supplementalCredentials

attributeId: 1.2.840.113556.1.4.125

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a3f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.354"></a>
## 2.354 Attribute systemAuxiliaryClass

This attribute specifies a list of auxiliary classes that cannot be modified by the user.

cn: System-Auxiliary-Class

ldapDisplayName: systemAuxiliaryClass

attributeId: 1.2.840.113556.1.4.198

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a43-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.355"></a>
## 2.355 Attribute systemFlags

This attribute specifies an integer value that contains flags that define additional properties of the class.

cn: System-Flags

ldapDisplayName: systemFlags

attributeId: 1.2.840.113556.1.4.375

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: e0fa1e62-9b45-11d0-afdd-00c04fd930c9

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.356"></a>
## 2.356 Attribute systemMayContain

This attribute specifies the list of optional attributes for a class. The list of attributes can only be modified by the Active Directory system [MS-ADOD](../MS-ADOD/MS-ADOD.md).

cn: System-May-Contain

ldapDisplayName: systemMayContain

attributeId: 1.2.840.113556.1.4.196

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a44-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.357"></a>
## 2.357 Attribute systemMustContain

This attribute specifies the list of mandatory attributes for a class. These attributes have to be specified when an instance of the class is created. The list of attributes can be modified only by the Active Directory system.

cn: System-Must-Contain

ldapDisplayName: systemMustContain

attributeId: 1.2.840.113556.1.4.197

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a45-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.358"></a>
## 2.358 Attribute systemOnly

This attribute is a Boolean value that specifies whether only Active Directory can modify the class. System-only classes can be created or deleted only by the directory system agent.

cn: System-Only

ldapDisplayName: systemOnly

attributeId: 1.2.840.113556.1.4.170

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: bf967a46-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.359"></a>
## 2.359 Attribute systemPossSuperiors

This attribute specifies the list of classes that can contain this class. This list can only be modified by the Active Directory system.

cn: System-Poss-Superiors

ldapDisplayName: systemPossSuperiors

attributeId: 1.2.840.113556.1.4.195

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: FALSE

schemaIdGuid: bf967a47-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.360"></a>
## 2.360 Attribute telephoneNumber

This attribute specifies the primary telephone number.

cn: Telephone-Number

ldapDisplayName: telephoneNumber

attributeId: 2.5.4.20

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a49-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.361"></a>
## 2.361 Attribute teletexTerminalIdentifier

This attribute specifies the Teletex terminal identifier, and optionally parameters, for a Teletex terminal associated with an object.

cn: Teletex-Terminal-Identifier

ldapDisplayName: teletexTerminalIdentifier

attributeId: 2.5.4.22

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a4a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.362"></a>
## 2.362 Attribute telexNumber

This attribute specifies a list of alternate telex numbers.

cn: Telex-Number

ldapDisplayName: telexNumber

attributeId: 2.5.4.21

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a4b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.363"></a>
## 2.363 Attribute thumbnailLogo

This attribute specifies a BLOB containing a logo for this object.

cn: Logo

ldapDisplayName: thumbnailLogo

attributeId: 2.16.840.1.113730.3.1.36

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679a9-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 32767

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.364"></a>
## 2.364 Attribute thumbnailPhoto

Picture

cn: Picture

ldapDisplayName: thumbnailPhoto

attributeId: 2.16.840.1.113730.3.1.35

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: 8d3bca50-1d7e-11d0-a081-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 102400

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.365"></a>
## 2.365 Attribute title

This attribute contains the user's job title. This property is commonly used to indicate the formal job title, such as Senior Programmer, rather than occupational class, such as programmer. It is not typically used for suffix titles such as "Esq." or "DDS".

cn: Title

ldapDisplayName: title

attributeId: 2.5.4.12

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a55-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 64

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.366"></a>
## 2.366 Attribute tokenGroups

This computed attribute contains the list of SIDs due to a transitive group membership expansion operation on a given user or computer. Token groups cannot be retrieved if no global catalog is present to retrieve the transitive reverse memberships.

cn: Token-Groups

ldapDisplayName: tokenGroups

attributeId: 1.2.840.113556.1.4.1301

attributeSyntax: 2.5.5.17

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: b7c69e6d-2cc7-11d2-854e-00a0c983f608

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: 037088f8-0ae1-11d2-b422-00a0c968f939

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_ATTR_IS_CONSTRUCTED |

FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.367"></a>
## 2.367 Attribute tombstoneLifetime

If the Recycle Bin optional feature is not enabled, this attribute specifies the number of days before a deleted object is removed from the directory services. If the Recycle Bin optional feature is enabled, this attribute specifies the number of days before a recycled object is removed from the directory services.

cn: Tombstone-Lifetime

ldapDisplayName: tombstoneLifetime

attributeId: 1.2.840.113556.1.2.54

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 16c3a860-1273-11d0-a060-00aa006c33ed

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.368"></a>
## 2.368 Attribute transportAddressAttribute

This attribute specifies the name of the address type for the transport.

cn: Transport-Address-Attribute

ldapDisplayName: transportAddressAttribute

attributeId: 1.2.840.113556.1.4.895

attributeSyntax: 2.5.5.2

omSyntax: 6

isSingleValued: TRUE

schemaIdGuid: c1dc867c-a261-11d1-b606-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.369"></a>
## 2.369 Attribute transportDLLName

This attribute specifies the name of the DLL that will manage a transport.

cn: Transport-DLL-Name

ldapDisplayName: transportDLLName

attributeId: 1.2.840.113556.1.4.789

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 26d97372-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 1024

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.370"></a>
## 2.370 Attribute transportType

This attribute specifies the DN for a type of transport that is being used to connect sites together. This value can point to an IP or SMTP transport.

cn: Transport-Type

ldapDisplayName: transportType

attributeId: 1.2.840.113556.1.4.791

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: 26d97374-6070-11d1-a9c6-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.371"></a>
## 2.371 Attribute treatAsLeaf

This attribute defines a flag for display specifiers (see the [displaySpecifier](#Section_abc7a1b5764144cbbd63759c2c5a6dcf) class in section [3](#Section_3)). Display specifiers that have this attribute set to true force the related class to be displayed as a leaf class even if it has children.

cn: Treat-As-Leaf

ldapDisplayName: treatAsLeaf

attributeId: 1.2.840.113556.1.4.806

attributeSyntax: 2.5.5.8

omSyntax: 1

isSingleValued: TRUE

schemaIdGuid: 8fd044e3-771f-11d1-aeae-0000f80367c1

systemOnly: FALSE

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_2.372"></a>
## 2.372 Attribute trustParent

This attribute specifies the parent in the Kerberos trust hierarchy.

cn: Trust-Parent

ldapDisplayName: trustParent

attributeId: 1.2.840.113556.1.4.471

attributeSyntax: 2.5.5.1

omSyntax: 127

omObjectClass: 1.3.12.2.1011.28.0.714

isSingleValued: TRUE

schemaIdGuid: b000ea7a-a086-11d0-afdd-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.373"></a>
## 2.373 Attribute uid

This attribute specifies the user ID.

cn: uid

ldapDisplayName: uid

attributeId: 0.9.2342.19200300.100.1.1

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 0bb0fca0-1e89-429f-901a-1413894d9f59

systemOnly: FALSE

searchFlags: fPRESERVEONDELETE

attributeSecurityGuid: 59ba2f42-79a2-11d0-9020-00c04fc2d3cf

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.374"></a>
## 2.374 Attribute unicodePwd

The password of the user in Windows NT one-way format (OWF). Windows 2000 uses the Windows NT OWF. This property is used only by the operating system.

**Note**: The clear password cannot be derived back from the OWF form of the password.

cn: Unicode-Pwd

ldapDisplayName: unicodePwd

attributeId: 1.2.840.113556.1.4.90

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: TRUE

schemaIdGuid: bf9679e1-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.375"></a>
## 2.375 Attribute uPNSuffixes

This attribute specifies the list of User-Principal-Name suffixes for a domain.

cn: UPN-Suffixes

ldapDisplayName: uPNSuffixes

attributeId: 1.2.840.113556.1.4.890

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 032160bf-9824-11d1-aec0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.376"></a>
## 2.376 Attribute url

This attribute specifies a list of alternate webpages.

cn: WWW-Page-Other

ldapDisplayName: url

attributeId: 1.2.840.113556.1.4.749

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 9a9a0221-4a5b-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

attributeSecurityGuid: e45795b3-9455-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.377"></a>
## 2.377 Attribute userCertificate

This attribute contains the DER-encoded X509v3 certificates issued to the user ([[RFC3280]](https://go.microsoft.com/fwlink/?LinkId=90414)).

**Note**: This property contains the public key certificates issued to this user by Microsoft Certificate Service.

cn: X509-Cert

ldapDisplayName: userCertificate

attributeId: 2.5.4.36

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a7f-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.378"></a>
## 2.378 Attribute userParameters

This attribute specifies the user's parameters and is set aside for use by applications. Microsoft products use this member to store user data that is specific to the individual program.

cn: User-Parameters

ldapDisplayName: userParameters

attributeId: 1.2.840.113556.1.4.138

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a6d-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 0

rangeUpper: 32767

attributeSecurityGuid: 4c164200-20c0-11d0-a768-00aa006e0529

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.379"></a>
## 2.379 Attribute userPassword

This attribute specifies the user's password in UTF-8 format. This is a write-only attribute.

cn: User-Password

ldapDisplayName: userPassword

attributeId: 2.5.4.35

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: bf967a6e-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 128

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.380"></a>
## 2.380 Attribute userPKCS12

This attribute specifies PKCS #12 PFX PDU for exchange of personal identity information.

cn: userPKCS12

ldapDisplayName: userPKCS12

attributeId: 2.16.840.1.113730.3.1.216

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: 23998ab5-70f8-4007-a4c1-a84a38311f9a

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.381"></a>
## 2.381 Attribute userPrincipalName

This attribute contains the UPN that is an Internet-style logon name for a user, as specified in [[RFC822]](https://go.microsoft.com/fwlink/?LinkId=90497). The UPN is shorter than the DN and easier to remember.

By convention, this attribute maps to the user email name. The value set for this attribute is equal to the length of the user's ID and the domain name.

cn: User-Principal-Name

ldapDisplayName: userPrincipalName

attributeId: 1.2.840.113556.1.4.656

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: 28630ebb-41d5-11d1-a9c1-0000f80367c1

systemOnly: FALSE

searchFlags: fATTINDEX

rangeUpper: 1024

attributeSecurityGuid: e48d0154-bcf8-11d1-8702-00c04fb96050

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.382"></a>
## 2.382 Attribute userSMIMECertificate

This attribute specifies a certificate distribution object or tagged certificates.

cn: User-SMIME-Certificate

ldapDisplayName: userSMIMECertificate

attributeId: 2.16.840.1.113730.3.140

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: e16a9db2-403c-11d1-a9c0-0000f80367c1

systemOnly: FALSE

searchFlags: 0

rangeUpper: 32768

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

isMemberOfPartialAttributeSet: TRUE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.383"></a>
## 2.383 Attribute uSNChanged

This attribute specifies an update sequence number (USN) value assigned by the local directory for the latest change, including creation.

cn: USN-Changed

ldapDisplayName: uSNChanged

attributeId: 1.2.840.113556.1.2.120

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a6f-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.384"></a>
## 2.384 Attribute uSNCreated

This attribute specifies a [USN-Changed](#Section_b2bce146f6e34d6883483b71aeafdc9d) value that is assigned at object creation.

cn: USN-Created

ldapDisplayName: uSNCreated

attributeId: 1.2.840.113556.1.2.19

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a70-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: fPRESERVEONDELETE | fATTINDEX

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.385"></a>
## 2.385 Attribute uSNDSALastObjRemoved

This attribute contains the USN for the last system object that was removed from a server.

cn: USN-DSA-Last-Obj-Removed

ldapDisplayName: uSNDSALastObjRemoved

attributeId: 1.2.840.113556.1.2.267

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a71-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.386"></a>
## 2.386 Attribute USNIntersite

This attribute specifies the USN for intersite replication.

cn: USN-Intersite

ldapDisplayName: USNIntersite

attributeId: 1.2.840.113556.1.2.469

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: a8df7498-c5ea-11d1-bbcb-0080c76670c0

systemOnly: FALSE

searchFlags: fATTINDEX

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.387"></a>
## 2.387 Attribute uSNLastObjRem

This attribute contains the USN for the last non-system object that was removed from a server.

cn: USN-Last-Obj-Rem

ldapDisplayName: uSNLastObjRem

attributeId: 1.2.840.113556.1.2.121

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: bf967a73-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.388"></a>
## 2.388 Attribute uSNSource

This attribute specifies the value of the **USN-Changed** attribute of the object from the remote directory that replicated the change to the local server.

cn: USN-Source

ldapDisplayName: uSNSource

attributeId: 1.2.840.113556.1.4.896

attributeSyntax: 2.5.5.16

omSyntax: 65

isSingleValued: TRUE

schemaIdGuid: 167758ad-47f3-11d1-a9c3-0000f80367c1

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.389"></a>
## 2.389 Attribute validAccesses

This attribute specifies the type of access that is permitted with an extended right.

cn: Valid-Accesses

ldapDisplayName: validAccesses

attributeId: 1.2.840.113556.1.4.1356

attributeSyntax: 2.5.5.9

omSyntax: 2

isSingleValued: TRUE

schemaIdGuid: 4d2fa380-7f54-11d2-992a-0000f87a57d4

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.390"></a>
## 2.390 Attribute wbemPath

This attribute specifies references to objects in other ADSI namespaces.

cn: Wbem-Path

ldapDisplayName: wbemPath

attributeId: 1.2.840.113556.1.4.301

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: FALSE

schemaIdGuid: 244b2970-5abd-11d0-afd2-00c04fd930c9

systemOnly: FALSE

searchFlags: 0

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.391"></a>
## 2.391 Attribute wellKnownObjects

This attribute contains a list of well-known object containers by GUID and distinguished name. The well-known objects are system containers. This information is used to retrieve an object after it has been moved by using just the GUID and the domain name.

Whenever the object is moved, the Active Directory system will automatically update the distinguished name portion of the Well-Known-Objects values that referred to the object.

For information on well-known objects, well-known GUIDs, and their symbolic names, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 6.1.1.4.

cn: Well-Known-Objects

ldapDisplayName: wellKnownObjects

attributeId: 1.2.840.113556.1.4.618

attributeSyntax: 2.5.5.7

omSyntax: 127

omObjectClass: 1.2.840.113556.1.1.1.11

isSingleValued: FALSE

schemaIdGuid: 05308983-7688-11d1-aded-00c04fd8d5cd

systemOnly: TRUE

searchFlags: 0

rangeLower: 16

rangeUpper: 16

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.392"></a>
## 2.392 Attribute whenChanged

This attribute specifies the date when this object was last changed. This value is not replicated and exists in the global catalog.

cn: When-Changed

ldapDisplayName: whenChanged

attributeId: 1.2.840.113556.1.2.3

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: bf967a77-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER | FLAG_ATTR_NOT_REPLICATED

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.393"></a>
## 2.393 Attribute whenCreated

This attribute specifies the date when this object was created. This value is replicated and is in the global catalog.

cn: When-Created

ldapDisplayName: whenCreated

attributeId: 1.2.840.113556.1.2.2

attributeSyntax: 2.5.5.11

omSyntax: 24

isSingleValued: TRUE

schemaIdGuid: bf967a78-0de6-11d0-a285-00aa003049e2

systemOnly: TRUE

searchFlags: 0

isMemberOfPartialAttributeSet: TRUE

systemFlags: FLAG_SCHEMA_BASE_OBJECT |

FLAG_ATTR_REQ_PARTIAL_SET_MEMBER

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.394"></a>
## 2.394 Attribute wWWHomePage

This attribute specifies the primary web page.

cn: WWW-Home-Page

ldapDisplayName: wWWHomePage

attributeId: 1.2.840.113556.1.2.464

attributeSyntax: 2.5.5.12

omSyntax: 64

isSingleValued: TRUE

schemaIdGuid: bf967a7a-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 2048

attributeSecurityGuid: e45795b3-9455-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.395"></a>
## 2.395 Attribute x121Address

This attribute specifies the X.121 address for an object, as specified in [[X121]](https://go.microsoft.com/fwlink/?LinkId=107134).

cn: X121-Address

ldapDisplayName: x121Address

attributeId: 2.5.4.24

attributeSyntax: 2.5.5.6

omSyntax: 18

isSingleValued: FALSE

schemaIdGuid: bf967a7b-0de6-11d0-a285-00aa003049e2

systemOnly: FALSE

searchFlags: 0

rangeLower: 1

rangeUpper: 15

attributeSecurityGuid: 77b5b886-944a-11d1-aebd-0000f80367c1

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_2.396"></a>
## 2.396 Attribute x500uniqueIdentifier

This attribute is used to distinguish between objects when a DN has been reused.

**Note**: This is a different attribute type from both the "uid" and "uniqueIdentifier" types.

cn: x500uniqueIdentifier

ldapDisplayName: x500uniqueIdentifier

attributeId: 2.5.4.45

attributeSyntax: 2.5.5.10

omSyntax: 4

isSingleValued: FALSE

schemaIdGuid: d07da11f-8a3d-42b6-b0aa-76c962be719a

systemOnly: FALSE

searchFlags: 0

showInAdvancedViewOnly: FALSE

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3"></a>
# 3 Classes

The following sections specify the classes in the **Active Directory Lightweight Directory Services** schema.

These sections normatively specify the schema definition of each class, as well as version-specific behavior of those schema definitions (such as when the class was added to the schema). As an aid to the reader, some of the sections also include informative notes about how the class can be used.

**Note**: In the following class definitions, "<SchemaNCDN>" is the DN of the schema NC. For more information, see [MS-ADTS](../MS-ADTS/MS-ADTS.md) section 3.1.1.1.7.

**Note**: Lines of text in the class definitions that are excessively long have been "folded" in accordance with [[RFC2849]](https://go.microsoft.com/fwlink/?LinkId=90389) Note 2.

<a id="Section_3.1"></a>
## 3.1 Class applicationSettings

This is the base class for server-specific application settings.

cn: Application-Settings

ldapDisplayName: applicationSettings

governsId: 1.2.840.113556.1.5.7000.49

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-Settings

systemPossSuperiors: server

schemaIdGuid: f780acc1-56f0-11d1-a9c6-0000f80367c1

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on Active Directory Application Mode (ADAM) and Windows Server 2008 operating system.

<a id="Section_3.2"></a>
## 3.2 Class applicationSiteSettings

This class specifies the container that holds all site-specific settings.

cn: Application-Site-Settings

ldapDisplayName: applicationSiteSettings

governsId: 1.2.840.113556.1.5.68

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemPossSuperiors: site

schemaIdGuid: 19195a5c-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Application-Site-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.3"></a>
## 3.3 Class attributeSchema

This class defines an attribute object in the schema.

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

linkID, isMemberOfPartialAttributeSet, isEphemeral, isDefunct,

extendedCharsAllowed, classDisplayName, attributeSecurityGUID

systemPossSuperiors: dMD

schemaIdGuid: bf967a80-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Attribute-Schema,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT | FLAG_DOMAIN_DISALLOW_RENAME

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.4"></a>
## 3.4 Class classSchema

This class defines a class object in the schema.

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

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.5"></a>
## 3.5 Class configuration

This class is a container that holds the configuration information for a domain.

cn: Configuration

ldapDisplayName: configuration

governsId: 1.2.840.113556.1.5.12

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: msDS-USNLastSyncSuccess, msDS-ReplAuthenticationMode

systemPossSuperiors: domainDNS

schemaIdGuid: bf967a87-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Configuration,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.6"></a>
## 3.6 Class container

This class is used to hold other classes.

cn: Container

ldapDisplayName: container

governsId: 1.2.840.113556.1.3.23

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: schemaVersion

possSuperiors: msDS-AzScope, msDS-AzApplication, msDS-AzAdminManager

systemPossSuperiors: subnet, server, nTDSService, domainDNS,

organization, configuration, container, organizationalUnit

schemaIdGuid: bf967a8b-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.7"></a>
## 3.7 Class controlAccessRight

This class identifies an extended right that can be granted or revoked via an access control list (ACL).

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Control-Access-Right,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.8"></a>
## 3.8 Class country

This class specifies the country/region in the address of the user. This is the full name.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Country,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.9"></a>
## 3.9 Class crossRef

This class holds knowledge information about all directory service (DS) naming contexts and all external directories to which referrals can be generated.

cn: Cross-Ref

ldapDisplayName: crossRef

governsId: 1.2.840.113556.1.3.11

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: nCName, cn

systemMayContain: trustParent, superiorDNSRoot, rootTrust,

nETBIOSName, msDS-Other-Settings, Enabled, msDS-SDReferenceDomain,

msDS-Replication-Notify-Subsequent-DSA-Delay,

msDS-Replication-Notify-First-DSA-Delay, msDS-NC-Replica-Locations,

msDS-DnsRootAlias, msDS-Behavior-Version, dnsRoot

systemPossSuperiors: crossRefContainer

schemaIdGuid: bf967a8d-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Cross-Ref,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.10"></a>
## 3.10 Class crossRefContainer

This class holds cross-reference objects for all naming contexts.

cn: Cross-Ref-Container

ldapDisplayName: crossRefContainer

governsId: 1.2.840.113556.1.5.7000.53

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-EnabledFeature, uPNSuffixes, msDS-UpdateScript,

msDS-ExecuteScriptPassword, msDS-Behavior-Version

systemPossSuperiors: configuration

schemaIdGuid: ef9e60e0-56f7-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: TRUE

defaultObjectCategory: CN=Cross-Ref-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.11"></a>
## 3.11 Class displaySpecifier

This class describes the context menus and property pages to be used with an object in the directory.

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

systemOnly: FALSE

defaultObjectCategory: CN=Display-Specifier,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_3.12"></a>
## 3.12 Class dMD

This class specifies the Directory Management Domain. In Active Directory, this is the class that holds the schema.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=DMD,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.13"></a>
## 3.13 Class domain

This class contains information about a domain.

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

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.14"></a>
## 3.14 Class domainDNS

This class specifies a Windows NT operating system domain with DNS-based (DC=) naming.

cn: Domain-DNS

ldapDisplayName: domainDNS

governsId: 1.2.840.113556.1.5.67

objectClassCategory: 1

rdnAttId: dc

subClassOf: domain

systemMayContain: msDS-EnabledFeature, msDS-USNLastSyncSuccess,

msDS-Behavior-Version, msDS-AllowedDNSSuffixes, managedBy

systemPossSuperiors: domainDNS

schemaIdGuid: 19195a5b-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Domain-DNS,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.15"></a>
## 3.15 Class dSUISettings

This class is used to store configuration settings used by the Active Directory Users and Computers snap-in.

cn: DS-UI-Settings

ldapDisplayName: dSUISettings

governsId: 1.2.840.113556.1.5.183

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-Security-Group-Extra-Classes,

msDS-Non-Security-Group-Extra-Classes, msDS-FilterContainers,

dSUIShellMaximum, dSUIAdminNotification, dSUIAdminMaximum

systemPossSuperiors: container

schemaIdGuid: 09b10f14-6f93-11d2-9905-0000f87a57d4

systemOnly: FALSE

defaultObjectCategory: CN=DS-UI-Settings,<SchemaNCDN>

Version-Specific Behavior: First implemented on Windows Server 2008.

<a id="Section_3.16"></a>
## 3.16 Class dynamicObject

If present in an entry, this class indicates that this entry has a limited lifetime and can disappear automatically when its time-to-live has reached 0. If the client has not supplied a value for the entryTtl attribute, the server will provide one.

cn: Dynamic-Object

ldapDisplayName: dynamicObject

governsId: 1.3.6.1.4.1.1466.101.119.2

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-Entry-Time-To-Die, entryTTL

schemaIdGuid: 66d51249-3355-4c1f-b24e-81f252aca23b

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Dynamic-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.17"></a>
## 3.17 Class foreignSecurityPrincipal

This class specifies the security principal from an external source.

cn: Foreign-Security-Principal

ldapDisplayName: foreignSecurityPrincipal

governsId: 1.2.840.113556.1.5.76

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: objectSid

systemPossSuperiors: container

schemaIdGuid: 89e31c12-8530-11d0-afda-00c04fd930c9

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Foreign-Security-Principal,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.18"></a>
## 3.18 Class group

This class stores a list of user names. Used to apply security principals on resources.

cn: Group

ldapDisplayName: group

governsId: 1.2.840.113556.1.5.8

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemAuxiliaryClass: securityPrincipal

systemMustContain: groupType

mayContain: msDS-AzGenericData, msDS-AzObjectGuid,

msDS-AzApplicationData, msDS-AzLastImportedBizRulePath,

msDS-AzBizRuleLanguage, msDS-AzBizRule, msDS-AzLDAPQuery

systemMayContain: msDS-NonMembers, primaryGroupToken, member,

managedBy, desktopProfile

possSuperiors: msDS-AzScope, msDS-AzApplication, msDS-AzAdminManager

systemPossSuperiors: container, organizationalUnit, domainDNS

schemaIdGuid: bf967a9c-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Group,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.19"></a>
## 3.19 Class groupOfNames

Group-Of-Names

cn: Group-Of-Names

ldapDisplayName: groupOfNames

governsId: 2.5.6.9

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

systemMustContain: cn

systemMayContain: member, businessCategory, o, ou, owner, seeAlso

systemPossSuperiors: container, organization, locality,

organizationalUnit

schemaIdGuid: bf967a9d-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Group-Of-Names,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.20"></a>
## 3.20 Class inetOrgPerson

This class represents people who are associated with an organization in some way.

cn: inetOrgPerson

ldapDisplayName: inetOrgPerson

governsId: 2.16.840.1.113730.3.2.2

objectClassCategory: 1

rdnAttId: cn

subClassOf: user

mayContain: audio, businessCategory, carLicense, departmentNumber,

displayName, employeeNumber, employeeType, givenName, homePhone,

homePostalAddress, initials, jpegPhoto, labeledURI, mail, manager,

mobile, o, pager, photo, preferredLanguage, roomNumber, secretary,

uid, userCertificate, userPKCS12, userSMIMECertificate,

x500uniqueIdentifier

possSuperiors: container, organizationalUnit, domainDNS

schemaIdGuid: 4828cc14-1437-45bc-9b07-ad6f015e5f28

defaultSecurityDescriptor:

D:(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)S:

showInAdvancedViewOnly: FALSE

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.21"></a>
## 3.21 Class interSiteTransport

This class specifies an optional attribute of [nTDSConnection](#Section_dc0bebacee8d44a4b27c5a77dd7f8d57) objects. If present, it holds the DN of an interSiteTransport object in the CN=Inter-Site Transports,CN=Sites,CN=Configuration,... container.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Inter-Site-Transport,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.22"></a>
## 3.22 Class interSiteTransportContainer

This class holds Inter-Site-Transport objects.

cn: Inter-Site-Transport-Container

ldapDisplayName: interSiteTransportContainer

governsId: 1.2.840.113556.1.5.140

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: sitesContainer

schemaIdGuid: 26d97375-6070-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Inter-Site-Transport-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.23"></a>
## 3.23 Class leaf

This class is the base class for leaf objects.

cn: Leaf

ldapDisplayName: leaf

governsId: 1.2.840.113556.1.5.20

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

schemaIdGuid: bf967a9e-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Leaf,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.24"></a>
## 3.24 Class locality

This class contains a locality, such as a street address, city, and state.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Locality,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.25"></a>
## 3.25 Class lostAndFound

This class is a special container for orphaned objects.

cn: Lost-And-Found

ldapDisplayName: lostAndFound

governsId: 1.2.840.113556.1.5.139

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: moveTreeState

systemPossSuperiors: configuration, domainDNS, dMD

schemaIdGuid: 52ab8671-5709-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Lost-And-Found,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.26"></a>
## 3.26 Class msDS-AzAdminManager

This class specifies the root of Authorization Policy store instance.

cn: ms-DS-Az-Admin-Manager

ldapDisplayName: msDS-AzAdminManager

governsId: 1.2.840.113556.1.5.234

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-AzMinorVersion,

msDS-AzMajorVersion, msDS-AzDomainTimeout,

msDS-AzScriptEngineCacheMax, msDS-AzScriptTimeout,

msDS-AzGenerateAudits, msDS-AzApplicationData

systemPossSuperiors: container, organizationalUnit, domainDNS

schemaIdGuid: cfee1051-5f28-4bae-a863-5d0cc18a8ed1

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Admin-Manager,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.27"></a>
## 3.27 Class msDS-AzApplication

This class defines an installed instance of an application that is bound to a particular policy store.

cn: ms-DS-Az-Application

ldapDisplayName: msDS-AzApplication

governsId: 1.2.840.113556.1.5.235

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-AzApplicationName,

msDS-AzClassId, msDS-AzApplicationVersion, msDS-AzGenerateAudits,

msDS-AzApplicationData

systemPossSuperiors: msDS-AzAdminManager

schemaIdGuid: ddf8de9b-cba5-4e12-842e-28d8b66f75ec

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Application,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.28"></a>
## 3.28 Class msDS-AzOperation

This class describes a particular operation supported by an application.

cn: ms-DS-Az-Operation

ldapDisplayName: msDS-AzOperation

governsId: 1.2.840.113556.1.5.236

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-AzOperationID

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-AzApplicationData

systemPossSuperiors: container, msDS-AzApplication

schemaIdGuid: 860abe37-9a9b-4fa4-b3d2-b8ace5df9ec5

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Operation,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.29"></a>
## 3.29 Class msDS-AzRole

This class defines a set of operations that can be performed by a particular set of users within a particular scope.

cn: ms-DS-Az-Role

ldapDisplayName: msDS-AzRole

governsId: 1.2.840.113556.1.5.239

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-MembersForAzRole,

msDS-OperationsForAzRole, msDS-TasksForAzRole, msDS-AzApplicationData

systemPossSuperiors: container, msDS-AzApplication, msDS-AzScope

schemaIdGuid: 8213eac9-9d55-44dc-925c-e9a52b927644

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Role,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.30"></a>
## 3.30 Class msDS-AzScope

This class describes a set of objects that is managed by an application.

cn: ms-DS-Az-Scope

ldapDisplayName: msDS-AzScope

governsId: 1.2.840.113556.1.5.237

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-AzScopeName

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-AzApplicationData

systemPossSuperiors: msDS-AzApplication

schemaIdGuid: 4feae054-ce55-47bb-860e-5b12063a51de

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Scope,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.31"></a>
## 3.31 Class msDS-AzTask

This class describes a set of operations.

cn: ms-DS-Az-Task

ldapDisplayName: msDS-AzTask

governsId: 1.2.840.113556.1.5.238

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

mayContain: msDS-AzGenericData, msDS-AzObjectGuid

systemMayContain: description, msDS-AzBizRule,

msDS-AzBizRuleLanguage, msDS-AzLastImportedBizRulePath,

msDS-AzTaskIsRoleDefinition, msDS-AzApplicationData,

msDS-OperationsForAzTask, msDS-TasksForAzTask

systemPossSuperiors: container, msDS-AzApplication, msDS-AzScope

schemaIdGuid: 1ed3a473-9b1b-418a-bfa0-3a37b95a5306

defaultSecurityDescriptor: D:(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;DA)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;SY)(A;;RPLCLORC;;;AU)

(A;;RPWPCRCCDCLCLORCWOWDSDDTSW;;;CO)

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Az-Task,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.32"></a>
## 3.32 Class msDS-BindableObject

This class specifies an auxiliary class to represent a bindable object. Any user-defined class that represents an entity that can be used to bind to the directory (that is, a user) includes this auxiliary class.

cn: ms-DS-Bindable-Object

ldapDisplayName: msDS-BindableObject

governsId: 1.2.840.113556.1.5.244

objectClassCategory: 3

rdnAttId: cn

subClassOf: securityPrincipal

systemMayContain: lastLogonTimestamp, accountExpires,

msDS-User-Account-Control-Computed, ms-DS-UserAccountAutoLocked,

msDS-UserPasswordExpired, ms-DS-UserEncryptedTextPasswordAllowed,

ms-DS-UserPasswordNotRequired, msDS-UserAccountDisabled,

msDS-UserDontExpirePassword, ntPwdHistory, lockoutTime, badPwdCount,

badPasswordTime, pwdLastSet, unicodePwd

schemaIdGuid: 89f4a69f-4416-6b49-821d-6e3c4a0ff802

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Bindable-Object,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.33"></a>
## 3.33 Class msDS-BindProxy

This class specifies an auxiliary class to represent a bind proxy in AD LDS. A bind proxy references a Windows security principal via its [objectSid](#Section_789fbfb52ddb41218126e594a9a9ecaf) attribute. When a user performs a simple bind against a bind-proxy object, the bind is redirected to the corresponding Windows principal.

cn: ms-DS-Bind-Proxy

ldapDisplayName: msDS-BindProxy

governsId: 1.2.840.113556.1.5.245

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMustContain: objectSid

systemMayContain: msDS-PrincipalName

schemaIdGuid: 717532ab-66e9-684d-a62b-8af1e3985e2f

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Bind-Proxy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.34"></a>
## 3.34 Class msDS-OptionalFeature

This class defines the configuration object for an optional feature.

cn: ms-DS-Optional-Feature

ldapDisplayName: msDS-OptionalFeature

governsId: 1.2.840.113556.1.5.265

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-OptionalFeatureFlags, msDS-OptionalFeatureGUID

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

Version-Specific Behavior: First implemented on Windows Server 2008 R2 operating system.

<a id="Section_3.35"></a>
## 3.35 Class msDS-QuotaContainer

This class specifies a special container that holds all quota specifications for the directory database.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Quota-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.36"></a>
## 3.36 Class msDS-QuotaControl

This class is used to represent quota specifications for the directory database.

cn: ms-DS-Quota-Control

ldapDisplayName: msDS-QuotaControl

governsId: 1.2.840.113556.1.5.243

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: msDS-QuotaAmount, msDS-QuotaTrustee, cn

systemPossSuperiors: msDS-QuotaContainer

schemaIdGuid: de91fc26-bd02-4b52-ae26-795999e96fc7

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Quota-Control,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.37"></a>
## 3.37 Class msDS-ServiceConnectionPointPublicationService

This class stores configuration options for the SCP publication service in AD LDS.

cn: ms-DS-Service-Connection-Point-Publication-Service

ldapDisplayName: msDS-ServiceConnectionPointPublicationService

governsId: 1.2.840.113556.1.5.247

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: Enabled, msDS-SCPContainer,

msDS-DisableForInstances, keywords

systemPossSuperiors: nTDSService

schemaIdGuid: d33f5da6-b009-7e48-8268-b2305529e933

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory:

CN=ms-DS-Service-Connection-Point-Publication-Service,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.38"></a>
## 3.38 Class nTDSConnection

This class specifies a connection from a remote domain controller (DC).

cn: NTDS-Connection

ldapDisplayName: nTDSConnection

governsId: 1.2.840.113556.1.5.71

objectClassCategory: 1

rdnAttId: cn

subClassOf: leaf

systemMustContain: options, fromServer, enabledConnection

systemMayContain: transportType, schedule, mS-DS-ReplicatesNCReason,

generatedConnection

systemPossSuperiors: nTDSDSA

schemaIdGuid: 19195a60-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Connection,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.39"></a>
## 3.39 Class nTDSDSA

This class represents the Active Directory DSA process on the server.

cn: NTDS-DSA

ldapDisplayName: nTDSDSA

governsId: 1.2.840.113556.1.5.7000.47

objectClassCategory: 1

rdnAttId: cn

subClassOf: applicationSettings

systemMayContain: msDS-DefaultNamingContext, serverReference,

msDS-RetiredReplNCSignatures, retiredReplDSASignatures,

queryPolicyObject, options, networkAddress, msDS-ServiceAccount,

msDS-ServiceAccountDNSDomain, msDS-PortSSL, msDS-PortLDAP,

msDS-ReplicationEpoch, msDS-HasInstantiatedNCs, msDS-hasMasterNCs,

msDS-HasDomainNCs, msDS-Behavior-Version, managedBy,

lastBackupRestorationTime, invocationId, hasPartialReplicaNCs,

hasMasterNCs, dMDLocation, msDS-EnabledFeature

systemPossSuperiors: organization, server

schemaIdGuid: f0f8ffab-1191-11d0-a060-00aa006c33ed

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=NTDS-DSA,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.40"></a>
## 3.40 Class nTDSService

This class is used for an NTDS services object, which contains information about the configuration of the directory service forest. This object is kept in the CN=Directory Service,CN=Windows NT,CN=Services,CN=Configuration,... container.

cn: NTDS-Service

ldapDisplayName: nTDSService

governsId: 1.2.840.113556.1.5.72

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-DeletedObjectLifetime, tombstoneLifetime,

replTopologyStayOfExecution, msDS-Other-Settings, garbageCollPeriod,

dSHeuristics

systemPossSuperiors: container

schemaIdGuid: 19195a5f-6da0-11d0-afd3-00c04fd930c9

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Service,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.41"></a>
## 3.41 Class nTDSSiteSettings

This class specifies a container for holding all Active Directory site-specific settings.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=NTDS-Site-Settings,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.42"></a>
## 3.42 Class organizationalPerson

This class is used for objects that contain organizational information about a user, such as the employee number, department, manager, title, and office address.

cn: Organizational-Person

ldapDisplayName: organizationalPerson

governsId: 2.5.6.7

objectClassCategory: 0

rdnAttId: cn

subClassOf: person

mayContain: homePostalAddress, houseIdentifier

systemMayContain: streetAddress, assistant, company, countryCode,

c, department, destinationIndicator, division, mail, employeeID,

facsimileTelephoneNumber, generationQualifier, givenName, initials,

internationalISDNNumber, l, thumbnailLogo, manager, o, ou,

middleName, personalTitle, otherFacsimileTelephoneNumber, homePhone,

otherHomePhone, otherIpPhone, ipPhone,

primaryInternationalISDNNumber, otherMobile, mobile, otherTelephone,

otherPager, pager, physicalDeliveryOfficeName, thumbnailPhoto,

postOfficeBox, postalAddress, postalCode, preferredDeliveryMethod,

registeredAddress, st, street, teletexTerminalIdentifier,

telexNumber, primaryTelexNumber, co, title, comment, x121Address

systemPossSuperiors: container, organization, organizationalUnit

schemaIdGuid: bf967aa4-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.43"></a>
## 3.43 Class organization

This class stores information about a company or organization.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Organization,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.44"></a>
## 3.44 Class organizationalUnit

This class specifies a container for storing users, computers, and other account objects.

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

physicalDeliveryOfficeName, managedBy, thumbnailLogo, l,

internationalISDNNumber, facsimileTelephoneNumber,

destinationIndicator, desktopProfile, defaultGroup, countryCode, c,

businessCategory

systemPossSuperiors: country, organization, organizationalUnit,

domainDNS

schemaIdGuid: bf967aa5-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Organizational-Unit,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.45"></a>
## 3.45 Class person

This class contains personal information about a user.

cn: Person

ldapDisplayName: person

governsId: 2.5.6.6

objectClassCategory: 0

rdnAttId: cn

subClassOf: top

systemMustContain: cn

mayContain: attributeCertificateAttribute

systemMayContain: seeAlso, serialNumber, sn, telephoneNumber,

userPassword

systemPossSuperiors: container, organizationalUnit

schemaIdGuid: bf967aa7-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.46"></a>
## 3.46 Class queryPolicy

This class holds administrative limits for LDAP server resources for sorted and paged results.

cn: Query-Policy

ldapDisplayName: queryPolicy

governsId: 1.2.840.113556.1.5.106

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: lDAPIPDenyList, lDAPAdminLimits

systemPossSuperiors: container

schemaIdGuid: 83cc7075-cca7-11d0-afff-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Query-Policy,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.47"></a>
## 3.47 Class securityPrincipal

This class contains the security information for an object.

cn: Security-Principal

ldapDisplayName: securityPrincipal

governsId: 1.2.840.113556.1.5.6

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMustContain: objectSid

systemMayContain: supplementalCredentials, tokenGroups,

nTSecurityDescriptor

schemaIdGuid: bf967ab0-0de6-11d0-a285-00aa003049e2

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Security-Principal,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.48"></a>
## 3.48 Class server

This class represents a server computer within a site.

cn: Server

ldapDisplayName: server

governsId: 1.2.840.113556.1.5.17

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: mailAddress, serverReference, managedBy,

nETBIOSName, dNSHostName, bridgeheadTransportList

systemPossSuperiors: serversContainer

schemaIdGuid: bf967a92-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Server,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.49"></a>
## 3.49 Class serversContainer

This class holds server objects within a site.

cn: Servers-Container

ldapDisplayName: serversContainer

governsId: 1.2.840.113556.1.5.7000.48

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: site

schemaIdGuid: f780acc0-56f0-11d1-a9c6-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Servers-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.50"></a>
## 3.50 Class site

This class specifies a container for storing server objects. This class represents a physical location containing computers; it is used to manage replication.

cn: Site

ldapDisplayName: site

governsId: 1.2.840.113556.1.5.31

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: msDS-BridgeHeadServersUsed, notificationList,

managedBy, location

systemPossSuperiors: sitesContainer

schemaIdGuid: bf967ab3-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Site,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.51"></a>
## 3.51 Class siteLink

This object represents the connection between two sites.

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

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Site-Link,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.52"></a>
## 3.52 Class siteLinkBridge

This class specifies an object for tracking the site links that are transitively connected.

cn: Site-Link-Bridge

ldapDisplayName: siteLinkBridge

governsId: 1.2.840.113556.1.5.148

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMustContain: siteLinkList

systemPossSuperiors: interSiteTransport

schemaIdGuid: d50c2cdf-8951-11d1-aebc-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Site-Link-Bridge,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.53"></a>
## 3.53 Class sitesContainer

This class specifies a container for storing site objects. Located in the configuration naming context.

cn: Sites-Container

ldapDisplayName: sitesContainer

governsId: 1.2.840.113556.1.5.107

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: configuration

schemaIdGuid: 7a4117da-cd67-11d0-afff-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Sites-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.54"></a>
## 3.54 Class subnet

This class represents a specific subnet in the network to which servers and workstations are attached.

cn: Subnet

ldapDisplayName: subnet

governsId: 1.2.840.113556.1.5.96

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemMayContain: siteObject, location

systemPossSuperiors: subnetContainer

schemaIdGuid: b7b13124-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Subnet,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.55"></a>
## 3.55 Class subnetContainer

This class specifies a container for holding all subnet objects.

cn: Subnet-Container

ldapDisplayName: subnetContainer

governsId: 1.2.840.113556.1.5.95

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemPossSuperiors: sitesContainer

schemaIdGuid: b7b13125-b82e-11d0-afee-0000f80367c1

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=Subnet-Container,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.56"></a>
## 3.56 Class subSchema

This class contains the schema definition.

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

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.57"></a>
## 3.57 Class syncEngineAuxConfiguration

ms-DS-Sync-Engine-Aux-Configuration

cn: ms-DS-Sync-Engine-Aux-Configuration

ldapDisplayName: syncEngineAuxConfiguration

governsId: 1.2.840.113556.1.4.1891

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMayContain: configurationFile

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Sync-Engine-Aux-Configuration,

<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.58"></a>
## 3.58 Class syncEngineAuxObject

ms-DS-Sync-Engine-Aux-Object

cn: ms-DS-Sync-Engine-Aux-Object

ldapDisplayName: syncEngineAuxObject

governsId: 1.2.840.113556.1.4.1890

objectClassCategory: 3

rdnAttId: cn

subClassOf: top

systemMayContain: nonIndexedMetadata, lastAgedChange,

configurationFileGuid, sourceObjectGuid

systemOnly: FALSE

defaultObjectCategory: CN=ms-DS-Sync-Engine-Aux-Object,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.59"></a>
## 3.59 Class top

This class is the top-level class from which all classes are derived.

cn: Top

ldapDisplayName: top

governsId: 2.5.6.0

objectClassCategory: 2

rdnAttId: cn

subClassOf: top

systemMustContain: objectClass, objectCategory, nTSecurityDescriptor,

instanceType

mayContain: directReports, ownerBL, msDS-TasksForAzRoleBL,

msDS-OperationsForAzRoleBL, msDS-TasksForAzTaskBL,

msDS-OperationsForAzTaskBL

systemMayContain: msDS-EnabledFeatureBL, msDS-LastKnownRDN,

msDS-LocalEffectiveRecycleTime, msDS-LocalEffectiveDeletionTime,

isRecycled, url, wWWHomePage, whenCreated, whenChanged,

wellKnownObjects, wbemPath, uSNSource, uSNLastObjRem, USNIntersite,

uSNDSALastObjRemoved, uSNCreated, uSNChanged, systemFlags,

subSchemaSubEntry, subRefs, structuralObjectClass, siteObjectBL,

serverReferenceBL, sDRightsEffective, revision, repsTo, repsFrom,

replUpToDateVector, replPropertyMetaData, name, queryPolicyBL,

proxyAddresses, proxiedObjectName, possibleInferiors,

partialAttributeSet, partialAttributeDeletionList,

otherWellKnownObjects, objectVersion, objectGUID, distinguishedName,

msDS-DisableForInstancesBL, msDS-ServiceAccountBL,

msDS-ReplValueMetaData, msDS-ReplAttributeMetaData,

msDS-NCReplOutboundNeighbors, msDS-NCReplInboundNeighbors,

msDS-NCReplCursors, msDS-NonMembersBL, msDS-MembersForAzRoleBL,

msDs-masteredBy, msDS-DefaultNamingContextBL, mS-DS-ConsistencyGuid,

mS-DS-ConsistencyChildCount, msDS-Approx-Immed-Subordinates,

modifyTimeStamp, masteredBy, managedObjects, lastKnownParent,

memberOf, isDeleted, isCriticalSystemObject, showInAdvancedViewOnly,

fSMORoleOwner, fromEntry, dSASignature, dSCorePropagationData,

displayName, description, createTimeStamp, cn, canonicalName,

bridgeheadServerListBL, allowedChildClassesEffective,

allowedChildClasses, allowedAttributesEffective, allowedAttributes,

adminDisplayName, adminDescription, msds-memberOfTransitive,

msds-memberTransitive, msDS-parentdistname, msDS-ReplValueMetaDataExt

systemPossSuperiors: lostAndFound

schemaIdGuid: bf967ab7-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor: D:S:

defaultHidingValue: TRUE

systemOnly: TRUE

defaultObjectCategory: CN=Top,<SchemaNCDN>

systemFlags: FLAG_SCHEMA_BASE_OBJECT

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.60"></a>
## 3.60 Class userProxy

This class is the sample class for bind proxy implementation.

cn: User-Proxy

ldapDisplayName: userProxy

governsId: 1.2.840.113556.1.5.246

objectClassCategory: 1

rdnAttId: cn

subClassOf: top

systemAuxiliaryClass: msDS-BindProxy

systemMayContain: userPrincipalName

possSuperiors: organization, container, organizationalUnit, domainDNS

schemaIdGuid: 60d6186f-f3b6-4898-b0ad-6535afc07620

defaultSecurityDescriptor:

D:(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)S:

defaultHidingValue: TRUE

systemOnly: FALSE

defaultObjectCategory: CN=User-Proxy,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.61"></a>
## 3.61 Class userProxyFull

This class is the sample user proxy class with the same properties as the native user class.

cn: User-Proxy-Full

ldapDisplayName: userProxyFull

governsId: 1.2.840.113556.1.5.248

objectClassCategory: 1

rdnAttId: cn

subClassOf: organizationalPerson

systemAuxiliaryClass: msDS-BindProxy

mayContain: audio, carLicense, departmentNumber, displayName,

employeeNumber, employeeType, givenName, homePostalAddress,

jpegPhoto, labeledURI, photo, preferredLanguage, roomNumber,

secretary, uid, userPKCS12, userSMIMECertificate,

x500uniqueIdentifier

systemMayContain: defaultClassStore, dynamicLDAPServer,

lastLogonTimestamp, preferredOU, userParameters, userPrincipalName,

userCertificate, businessCategory, homePhone, initials, mail,

manager, mobile, o, pager

systemPossSuperiors: domainDNS, organizationalUnit

schemaIdGuid: 2210527a-eb01-4ff0-b883-186f40a92979

defaultSecurityDescriptor:

D:(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_3.62"></a>
## 3.62 Class user

This class is used to store information about an employee or contractor who works for an organization. It is also possible to apply this class to long-term visitors.

cn: User

ldapDisplayName: user

governsId: 1.2.840.113556.1.5.9

objectClassCategory: 1

rdnAttId: cn

subClassOf: organizationalPerson

systemAuxiliaryClass: msDS-BindableObject, securityPrincipal

mayContain: audio, carLicense, departmentNumber, displayName,

employeeNumber, employeeType, givenName, homePostalAddress,

jpegPhoto, labeledURI, photo, preferredLanguage, roomNumber,

secretary, uid, userPKCS12, userSMIMECertificate,

x500uniqueIdentifier

systemMayContain: defaultClassStore, dynamicLDAPServer,

lastLogonTimestamp, preferredOU, userParameters, userPrincipalName,

userCertificate, businessCategory, homePhone, initials, mail,

manager, mobile, o, pager

systemPossSuperiors: domainDNS, organizationalUnit

schemaIdGuid: bf967aba-0de6-11d0-a285-00aa003049e2

defaultSecurityDescriptor:

D:(OA;;CR;ab721a53-1e2f-11d0-9819-00aa0040529b;;PS)S:

defaultHidingValue: FALSE

systemOnly: FALSE

defaultObjectCategory: CN=Person,<SchemaNCDN>

Version-Specific Behavior: First implemented on ADAM and Windows Server 2008.

<a id="Section_4"></a>
# 4 Change Tracking

This section identifies changes that were made to this document since the last release. Changes are classified as Major, Minor, or None.

The revision class **Major** means that the technical content in the document was significantly revised. Major changes affect protocol interoperability or implementation. Examples of major changes are:

- A document revision that incorporates changes to interoperability requirements.
- A document revision that captures changes to protocol functionality.
The revision class **Minor** means that the meaning of the technical content was clarified. Minor changes do not affect protocol interoperability or implementation. Examples of minor changes are updates to clarify ambiguity at the sentence, paragraph, or table level.

The revision class **None** means that no new technical changes were introduced. Minor editorial and formatting changes may have been made, but the relevant technical content is identical to the last released version.

The changes made to this document are listed in the following table. For more information, please contact [dochelp@microsoft.com](mailto:dochelp@microsoft.com).

| Section | Description | Revision class |
| --- | --- | --- |
| [1](../MS-ADTS/MS-ADTS.md) Introduction | Added a reference to [MS-ADTS] for the list of applicable products. | Minor |

