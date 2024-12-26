.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final DLP:I = 0x1b

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SEAMS:I = 0x1a

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field private static final SPDCONTROL:I = 0x19

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 152
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 164
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SPDControlPolicy"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SeamsPolicy"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DlpPolicy"

    const/16 v3, 0x1b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 2884
    const/4 v0, 0x0

    .line 2885
    .local v0, "callerName":Ljava/lang/String;
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 2886
    .local v1, "mPackageManagerService":Lcom/android/server/pm/PackageManagerService;
    if-eqz v1, :cond_0

    .line 2887
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2889
    :cond_0
    if-nez v0, :cond_1

    const-string v0, "fail to get caller name."

    .end local v0    # "callerName":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2913
    .local v0, "content_uri":Landroid/net/Uri;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2914
    .local v2, "token":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 2915
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2895
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2901
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2771
    .local v11, "callingUid":I
    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(), uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 2878
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v2, 0x0

    return-object v2

    .line 2786
    :sswitch_1
    const-string v2, "browser_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2789
    .local v13, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v13, :cond_0

    .line 2790
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2791
    .local v10, "api":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2792
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 2802
    .end local v10    # "api":Ljava/lang/String;
    .end local v13    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :sswitch_2
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 2805
    .local v14, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v14, :cond_0

    .line 2806
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2807
    .restart local v10    # "api":Ljava/lang/String;
    const-string v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 2808
    .local v12, "fail":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v12, :cond_0

    .line 2809
    const-string/jumbo v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2821
    .end local v10    # "api":Ljava/lang/String;
    .end local v12    # "fail":Ljava/lang/Integer;
    .end local v14    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    :sswitch_3
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2824
    .local v1, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v1, :cond_0

    .line 2826
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2827
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v2, "AuditLoggerAsUser"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2828
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "userid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 2838
    :cond_1
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2853
    .end local v1    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    .end local v10    # "api":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2856
    .local v15, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v15, :cond_0

    .line 2857
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2858
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v2, "setPwdChangeRequested"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2859
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z

    goto/16 :goto_0

    .line 2865
    .end local v10    # "api":Ljava/lang/String;
    .end local v15    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    :sswitch_5
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2867
    .local v16, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v16, :cond_0

    .line 2868
    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2869
    .restart local v10    # "api":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v2, "setDodBannerVisibleStatus"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2870
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_0

    .line 2778
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xe -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 74
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 224
    .local v8, "callingUid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 231
    .local v7, "userId":I
    const/16 v64, 0x0

    .line 234
    .local v64, "showMsg":Z
    const/16 v53, 0x0

    .line 236
    .local v53, "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "query(), uri = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v72, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v72

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v72, " selection = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "called from "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v5, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2764
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 245
    :pswitch_1
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 247
    .local v43, "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 248
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v5, :pswitch_data_1

    .line 504
    const/4 v5, 0x0

    goto :goto_1

    .line 248
    :sswitch_0
    const-string v6, "checkPackageSource"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v6, "isActivationLockAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v6, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v6, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v6, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v6, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v6, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v6, "isBackupAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v6, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v6, "isCameraEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v6, "isCellularDataAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v6, "isClipboardAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v6, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v6, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v6, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v6, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v6, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x10

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v6, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x11

    goto/16 :goto_2

    .line 250
    :pswitch_2
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_3

    .line 251
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 253
    :cond_3
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v7, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v59

    .line 256
    .local v59, "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v72, "checkPackageSource"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 259
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3
    move-object/from16 v5, v53

    .line 507
    goto/16 :goto_1

    .line 264
    .end local v59    # "result":Z
    :pswitch_3
    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5

    .line 265
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 267
    :cond_5
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 271
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isActivationLockAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 274
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 280
    .end local v59    # "result":Z
    :pswitch_4
    const/4 v10, 0x0

    .line 281
    .local v10, "arg":Z
    if-eqz p4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_6

    .line 282
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 283
    :cond_6
    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v59

    .line 286
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAirplaneModeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 289
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 295
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_5
    const/4 v10, 0x0

    .line 296
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_7

    .line 297
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 298
    :cond_7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 301
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAndroidBeamAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 304
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 310
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_6
    const/4 v10, 0x0

    .line 311
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_8

    .line 312
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 313
    :cond_8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 316
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAudioRecordAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 319
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 325
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_7
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 328
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBackgroundDataEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 331
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 337
    .end local v59    # "result":Z
    :pswitch_8
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 340
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBackgroundProcessLimitEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 343
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 349
    .end local v59    # "result":Z
    :pswitch_9
    if-eqz p4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a

    .line 350
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 351
    :cond_a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 355
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBackupAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 358
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 364
    .end local v59    # "result":Z
    :pswitch_a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 367
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBluetoothTetheringEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 370
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 376
    .end local v59    # "result":Z
    :pswitch_b
    if-eqz p4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_c

    .line 377
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 378
    :cond_c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 381
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isCameraEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 384
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 390
    .end local v59    # "result":Z
    :pswitch_c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 393
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isCellularDataAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 396
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 402
    .end local v59    # "result":Z
    :pswitch_d
    if-eqz p4, :cond_d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_e

    .line 404
    :cond_d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 411
    .restart local v59    # "result":Z
    :goto_4
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isClipboardAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 414
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 406
    .end local v59    # "result":Z
    :cond_e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_4

    .line 420
    .end local v59    # "result":Z
    :pswitch_e
    if-eqz p4, :cond_f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_10

    .line 421
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 422
    :cond_10
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v59

    .line 423
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isClipboardAllowedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 428
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 435
    .end local v59    # "result":Z
    :pswitch_f
    if-eqz p4, :cond_11

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_12

    .line 436
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 437
    :cond_12
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v59

    .line 440
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isClipboardShareAllowedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 443
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 449
    .end local v59    # "result":Z
    :pswitch_10
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 452
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isClipboardShareAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 455
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 461
    .end local v59    # "result":Z
    :pswitch_11
    const/4 v10, 0x0

    .line 462
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_13

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_13

    .line 463
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 464
    :cond_13
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 467
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDeveloperModeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 470
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v53

    .line 475
    goto/16 :goto_1

    .line 477
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_12
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 480
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isFactoryResetAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 483
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 489
    .end local v59    # "result":Z
    :pswitch_13
    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_14

    .line 490
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 492
    :cond_14
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 493
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isFastEncryptionAllowed return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isFastEncryptionAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 498
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 511
    .end local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v59    # "result":Z
    :pswitch_14
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 513
    .restart local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 514
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    :cond_15
    :goto_5
    packed-switch v5, :pswitch_data_2

    .line 785
    const-string v5, "SecContentProvider"

    const-string/jumbo v6, "return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 514
    :sswitch_12
    const-string/jumbo v6, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x0

    goto :goto_5

    :sswitch_13
    const-string/jumbo v6, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_14
    const-string/jumbo v6, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x2

    goto :goto_5

    :sswitch_15
    const-string/jumbo v6, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x3

    goto :goto_5

    :sswitch_16
    const-string/jumbo v6, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_17
    const-string/jumbo v6, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x5

    goto :goto_5

    :sswitch_18
    const-string/jumbo v6, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x6

    goto :goto_5

    :sswitch_19
    const-string/jumbo v6, "isLockScreenEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v5, 0x7

    goto :goto_5

    :sswitch_1a
    const-string/jumbo v6, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0x8

    goto/16 :goto_5

    :sswitch_1b
    const-string/jumbo v6, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0x9

    goto/16 :goto_5

    :sswitch_1c
    const-string/jumbo v6, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xa

    goto/16 :goto_5

    :sswitch_1d
    const-string/jumbo v6, "isMockLocationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xb

    goto/16 :goto_5

    :sswitch_1e
    const-string/jumbo v6, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xc

    goto/16 :goto_5

    :sswitch_1f
    const-string/jumbo v6, "isNFCEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xd

    goto/16 :goto_5

    :sswitch_20
    const-string/jumbo v6, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xe

    goto/16 :goto_5

    :sswitch_21
    const-string/jumbo v6, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0xf

    goto/16 :goto_5

    :sswitch_22
    const-string/jumbo v6, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/16 v5, 0x10

    goto/16 :goto_5

    .line 516
    :pswitch_15
    if-eqz p4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_17

    .line 517
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 519
    :cond_17
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 523
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isFirmwareAutoUpdateAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 526
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_6
    move-object/from16 v5, v53

    .line 789
    goto/16 :goto_1

    .line 532
    .end local v59    # "result":Z
    :pswitch_16
    if-eqz p4, :cond_18

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_19

    .line 533
    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 535
    :cond_19
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 539
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isFirmwareRecoveryAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 542
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    .line 548
    .end local v59    # "result":Z
    :pswitch_17
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 551
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isGoogleAccountsAutoSyncAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 554
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6

    .line 560
    .end local v59    # "result":Z
    :pswitch_18
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 563
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isGoogleCrashReportedAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 566
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 572
    .end local v59    # "result":Z
    :pswitch_19
    if-eqz p4, :cond_1a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1b

    .line 573
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 574
    :cond_1b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 578
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isHeadPhoneEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 581
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 587
    .end local v59    # "result":Z
    :pswitch_1a
    const/4 v10, 0x0

    .line 588
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_1c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_1c

    .line 589
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 590
    :cond_1c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 593
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isHomeKeyEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 596
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 602
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_1b
    if-nez p4, :cond_1d

    .line 603
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 604
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v72, " callingUid : "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_7
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isKillingActivitiesOnLeaveAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 614
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 607
    .end local v59    # "result":Z
    :cond_1d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 608
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isKillingActivitiesOnLeaveAllowed return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v72, " userid : "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 620
    .end local v59    # "result":Z
    :pswitch_1c
    if-eqz p4, :cond_1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_1f

    .line 621
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 622
    :cond_1f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 626
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isLockScreenEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 629
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 635
    .end local v59    # "result":Z
    :pswitch_1d
    if-eqz p4, :cond_20

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_21

    .line 636
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 637
    :cond_21
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    .line 638
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v59

    .line 645
    .restart local v59    # "result":Z
    :goto_8
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isLockScreenViewAllowed return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isLockScreenViewAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 650
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 642
    .end local v59    # "result":Z
    :cond_22
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_8

    .line 656
    .end local v59    # "result":Z
    :pswitch_1e
    if-eqz p4, :cond_23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_24

    .line 657
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 658
    :cond_24
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_25

    .line 659
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 666
    .restart local v59    # "result":Z
    :goto_9
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isMicrophoneEnabled return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isMicrophoneEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 671
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 663
    .end local v59    # "result":Z
    :cond_25
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_9

    .line 677
    .end local v59    # "result":Z
    :pswitch_1f
    if-eqz p4, :cond_26

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_27

    .line 678
    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 679
    :cond_27
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v59

    .line 681
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isMicrophoneEnabledAsUser return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isMicrophoneEnabledAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 686
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 693
    .end local v59    # "result":Z
    :pswitch_20
    if-nez p4, :cond_28

    .line 694
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 695
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "callingUid = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :goto_a
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isMockLocationEnabled return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isMockLocationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 706
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 698
    .end local v59    # "result":Z
    :cond_28
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 699
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "callingUid = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 712
    .end local v59    # "result":Z
    :pswitch_21
    if-eqz p4, :cond_29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_2a

    .line 713
    :cond_29
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 714
    :cond_2a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 718
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isNewAdminInstallationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 721
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 727
    .end local v59    # "result":Z
    :pswitch_22
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v59

    .line 730
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isNFCEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 733
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 739
    .end local v59    # "result":Z
    :pswitch_23
    if-eqz p4, :cond_2b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2c

    .line 740
    :cond_2b
    const/16 v64, 0x0

    .line 744
    :goto_b
    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v59

    .line 747
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isNFCEnabledWithMsg"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 750
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 742
    .end local v59    # "result":Z
    :cond_2c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v64

    goto :goto_b

    .line 756
    :pswitch_24
    if-eqz p4, :cond_2d

    .line 757
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 764
    .restart local v59    # "result":Z
    :goto_c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isNonMarketAppAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 767
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 760
    .end local v59    # "result":Z
    :cond_2d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_c

    .line 773
    .end local v59    # "result":Z
    :pswitch_25
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 776
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isNonTrustedAppInstallBlocked"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 779
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 793
    .end local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v59    # "result":Z
    :pswitch_26
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 795
    .restart local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 796
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    :cond_2e
    :goto_d
    packed-switch v5, :pswitch_data_3

    .line 1040
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 796
    :sswitch_23
    const-string/jumbo v6, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x0

    goto :goto_d

    :sswitch_24
    const-string/jumbo v6, "isShareListAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x1

    goto :goto_d

    :sswitch_25
    const-string/jumbo v6, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x2

    goto :goto_d

    :sswitch_26
    const-string/jumbo v6, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x3

    goto :goto_d

    :sswitch_27
    const-string/jumbo v6, "isPowerOffAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x4

    goto :goto_d

    :sswitch_28
    const-string/jumbo v6, "isSafeModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x5

    goto :goto_d

    :sswitch_29
    const-string/jumbo v6, "isSBeamAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x6

    goto :goto_d

    :sswitch_2a
    const-string/jumbo v6, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v5, 0x7

    goto :goto_d

    :sswitch_2b
    const-string/jumbo v6, "isSdCardEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0x8

    goto :goto_d

    :sswitch_2c
    const-string/jumbo v6, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0x9

    goto/16 :goto_d

    :sswitch_2d
    const-string/jumbo v6, "isScreenPinningAllowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xa

    goto/16 :goto_d

    :sswitch_2e
    const-string/jumbo v6, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xb

    goto/16 :goto_d

    :sswitch_2f
    const-string/jumbo v6, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xc

    goto/16 :goto_d

    :sswitch_30
    const-string/jumbo v6, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xd

    goto/16 :goto_d

    :sswitch_31
    const-string/jumbo v6, "isSVoiceAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xe

    goto/16 :goto_d

    :sswitch_32
    const-string/jumbo v6, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v5, 0xf

    goto/16 :goto_d

    .line 798
    :pswitch_27
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_30

    .line 799
    :cond_2f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 800
    :cond_30
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_31

    .line 801
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 810
    .restart local v59    # "result":Z
    :goto_e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSettingsChangesAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 813
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_f
    move-object/from16 v5, v53

    .line 1043
    goto/16 :goto_1

    .line 805
    .end local v59    # "result":Z
    :cond_31
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_e

    .line 819
    .end local v59    # "result":Z
    :pswitch_28
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_32

    .line 820
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 826
    .restart local v59    # "result":Z
    :goto_10
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isShareListAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 829
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_f

    .line 822
    .end local v59    # "result":Z
    :cond_32
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_10

    .line 835
    .end local v59    # "result":Z
    :pswitch_29
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 838
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isOdeTrustedBootVerificationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 841
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 847
    .end local v59    # "result":Z
    :pswitch_2a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 850
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isOTAUpgradeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 853
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v53

    .line 858
    goto/16 :goto_1

    .line 860
    .end local v59    # "result":Z
    :pswitch_2b
    const/4 v10, 0x0

    .line 861
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_33

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_33

    .line 862
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 864
    :cond_33
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 867
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPowerOffAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 870
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 876
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_2c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 879
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSafeModeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 882
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 888
    .end local v59    # "result":Z
    :pswitch_2d
    const/4 v10, 0x0

    .line 889
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_34

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_34

    .line 890
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 891
    :cond_34
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 894
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSBeamAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 897
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 903
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_2e
    if-eqz p4, :cond_35

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_36

    .line 904
    :cond_35
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 905
    :cond_36
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 909
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isScreenCaptureEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 912
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 918
    .end local v59    # "result":Z
    :pswitch_2f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 921
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSdCardEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 924
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 930
    .end local v59    # "result":Z
    :pswitch_30
    if-eqz p4, :cond_37

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_38

    .line 931
    :cond_37
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 932
    :cond_38
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 936
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSDCardMoveAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 939
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 945
    .end local v59    # "result":Z
    :pswitch_31
    const/4 v10, 0x0

    .line 946
    .restart local v10    # "arg":Z
    move/from16 v69, v7

    .line 947
    .local v69, "user":I
    if-eqz p4, :cond_39

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_39

    .line 948
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 950
    :cond_39
    if-eqz p4, :cond_3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3a

    .line 951
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 953
    :cond_3a
    move-object/from16 v0, v43

    move/from16 v1, v69

    invoke-virtual {v0, v10, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v59

    .line 956
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isScreenPinningAllowedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 959
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 965
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    .end local v69    # "user":I
    :pswitch_32
    const/4 v10, 0x0

    .line 966
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_3b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3b

    .line 967
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 968
    :cond_3b
    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v59

    .line 971
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSmartClipModeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 974
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 980
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_33
    const/4 v10, 0x0

    .line 981
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_3c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_3c

    .line 982
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 983
    :cond_3c
    move-object/from16 v0, v43

    invoke-virtual {v0, v10, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v59

    .line 986
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isStatusBarExpansionallowedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 989
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 995
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_34
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 998
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isStopSystemAppAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1001
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 1007
    .end local v59    # "result":Z
    :pswitch_35
    const/4 v10, 0x0

    .line 1008
    .restart local v10    # "arg":Z
    move/from16 v67, v8

    .line 1009
    .local v67, "uid":I
    if-eqz p4, :cond_3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    .line 1010
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1016
    :cond_3d
    :goto_11
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move/from16 v0, v67

    invoke-direct {v5, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1017
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isSVoiceAllowed result = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v72, " uid = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSVoiceAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1022
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 1012
    .end local v59    # "result":Z
    :cond_3e
    if-eqz p4, :cond_3d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3d

    .line 1013
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1014
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    goto :goto_11

    .line 1028
    .end local v10    # "arg":Z
    .end local v67    # "uid":I
    :pswitch_36
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1031
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUsbDebuggingEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1034
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 1047
    .end local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v59    # "result":Z
    :pswitch_37
    const-string/jumbo v5, "restriction_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1049
    .restart local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-eqz v43, :cond_0

    if-eqz p3, :cond_0

    .line 1050
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_3

    :cond_3f
    :goto_12
    packed-switch v5, :pswitch_data_4

    .line 1294
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1050
    :sswitch_33
    const-string/jumbo v6, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x0

    goto :goto_12

    :sswitch_34
    const-string/jumbo v6, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x1

    goto :goto_12

    :sswitch_35
    const-string/jumbo v6, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x2

    goto :goto_12

    :sswitch_36
    const-string/jumbo v6, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x3

    goto :goto_12

    :sswitch_37
    const-string/jumbo v6, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_38
    const-string/jumbo v6, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x5

    goto :goto_12

    :sswitch_39
    const-string/jumbo v6, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x6

    goto :goto_12

    :sswitch_3a
    const-string/jumbo v6, "isVpnAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/4 v5, 0x7

    goto :goto_12

    :sswitch_3b
    const-string/jumbo v6, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0x8

    goto :goto_12

    :sswitch_3c
    const-string/jumbo v6, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0x9

    goto/16 :goto_12

    :sswitch_3d
    const-string/jumbo v6, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xa

    goto/16 :goto_12

    :sswitch_3e
    const-string/jumbo v6, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xb

    goto/16 :goto_12

    :sswitch_3f
    const-string/jumbo v6, "isWifiEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xc

    goto/16 :goto_12

    :sswitch_40
    const-string/jumbo v6, "isScreenCaptureEnabledInternal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xd

    goto/16 :goto_12

    :sswitch_41
    const-string/jumbo v6, "isFotaVersionAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xe

    goto/16 :goto_12

    :sswitch_42
    const-string/jumbo v6, "isGearPolicyEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0xf

    goto/16 :goto_12

    :sswitch_43
    const-string/jumbo v6, "getAllowedFOTAInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v5, 0x10

    goto/16 :goto_12

    .line 1052
    :pswitch_38
    const/4 v10, 0x0

    .line 1053
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_40

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_40

    .line 1054
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1055
    :cond_40
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1059
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUsbHostStorageAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1062
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :cond_41
    :goto_13
    move-object/from16 v5, v53

    .line 1297
    goto/16 :goto_1

    .line 1068
    :pswitch_39
    if-eqz p4, :cond_42

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_43

    .line 1069
    :cond_42
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1070
    :cond_43
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1074
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUsbMassStorageEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1077
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 1083
    .end local v59    # "result":Z
    :pswitch_3a
    if-eqz p4, :cond_44

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_45

    .line 1084
    :cond_44
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1085
    :cond_45
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1089
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUsbMediaPlayerAvailable"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1092
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_13

    .line 1098
    .end local v59    # "result":Z
    :pswitch_3b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1102
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUsbTetheringEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1105
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1111
    .end local v59    # "result":Z
    :pswitch_3c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1115
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUserMobileDataLimitAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1118
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1124
    .end local v59    # "result":Z
    :pswitch_3d
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1128
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUseSecureKeypadEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1131
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1137
    .end local v59    # "result":Z
    :pswitch_3e
    const/4 v10, 0x0

    .line 1138
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_46

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_46

    .line 1139
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1140
    :cond_46
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1144
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isVideoRecordAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1147
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1153
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_3f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1157
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isVpnAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1160
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1166
    .end local v59    # "result":Z
    :pswitch_40
    const/4 v10, 0x0

    .line 1167
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_47

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_47

    .line 1168
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1169
    :cond_47
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1173
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isWallpaperChangeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1176
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1182
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_41
    const/4 v10, 0x0

    .line 1183
    .restart local v10    # "arg":Z
    if-eqz p4, :cond_48

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_48

    .line 1184
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1185
    :cond_48
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v10}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1189
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isWifiDirectAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1192
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1198
    .end local v10    # "arg":Z
    .end local v59    # "result":Z
    :pswitch_42
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1202
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isWifiTetheringEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1205
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1211
    .end local v59    # "result":Z
    :pswitch_43
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1215
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSDCardWriteAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1218
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1223
    .end local v59    # "result":Z
    :pswitch_44
    const-string/jumbo v5, "wifi_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1225
    .local v49, "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-eqz v49, :cond_49

    .line 1226
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v49

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1228
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isWifiEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1231
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1236
    .end local v59    # "result":Z
    :cond_49
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1240
    .end local v49    # "lWifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    :pswitch_45
    const/16 v64, 0x0

    .line 1241
    if-nez p4, :cond_4a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_4b

    .line 1242
    :cond_4a
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v64

    .line 1245
    :cond_4b
    move-object/from16 v0, v43

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v59

    .line 1247
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1250
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1257
    .end local v59    # "result":Z
    :pswitch_46
    const/16 v59, 0x1

    .line 1260
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isFotaVersionAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1264
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1270
    .end local v59    # "result":Z
    :pswitch_47
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWearablePolicyEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v59

    .line 1272
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1275
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_13

    .line 1280
    .end local v59    # "result":Z
    :pswitch_48
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getAllowedFOTAInfo(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v61

    .line 1281
    .local v61, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getAllowedFOTAInfo"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1285
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v61, :cond_41

    invoke-interface/range {v61 .. v61}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    .line 1286
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1287
    .local v30, "info":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v30, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_14

    .line 1301
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v30    # "info":Ljava/lang/String;
    .end local v43    # "lRestrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .end local v61    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_49
    const-string v5, "certificate_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1303
    .local v38, "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v38, :cond_0

    if-eqz p3, :cond_0

    .line 1304
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_4

    :cond_4c
    :goto_15
    packed-switch v5, :pswitch_data_5

    :cond_4d
    :goto_16
    move-object/from16 v5, v53

    .line 1486
    goto/16 :goto_1

    .line 1304
    :sswitch_44
    const-string/jumbo v6, "isCaCertificateTrustedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x0

    goto :goto_15

    :sswitch_45
    const-string/jumbo v6, "isCaCertificateDisabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x1

    goto :goto_15

    :sswitch_46
    const-string/jumbo v6, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x2

    goto :goto_15

    :sswitch_47
    const-string/jumbo v6, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x3

    goto :goto_15

    :sswitch_48
    const-string/jumbo v6, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x4

    goto :goto_15

    :sswitch_49
    const-string/jumbo v6, "notifyCertificateFailure"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x5

    goto :goto_15

    :sswitch_4a
    const-string/jumbo v6, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x6

    goto :goto_15

    :sswitch_4b
    const-string/jumbo v6, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v5, 0x7

    goto :goto_15

    :sswitch_4c
    const-string/jumbo v6, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v5, 0x8

    goto :goto_15

    :sswitch_4d
    const-string/jumbo v6, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v5, 0x9

    goto/16 :goto_15

    :sswitch_4e
    const-string/jumbo v6, "validateChainAtInstall"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v5, 0xa

    goto/16 :goto_15

    :sswitch_4f
    const-string/jumbo v6, "isPrivateKeyApplicationPermitted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v5, 0xb

    goto/16 :goto_15

    .line 1306
    :pswitch_4a
    if-eqz p4, :cond_4e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_4f

    .line 1307
    :cond_4e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1308
    :cond_4f
    move/from16 v69, v7

    .line 1309
    .restart local v69    # "user":I
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_50

    .line 1310
    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v69

    .line 1312
    :cond_50
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v38

    move/from16 v1, v69

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZI)Z

    move-result v59

    .line 1317
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isCaCertificateTrustedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1321
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1326
    .end local v59    # "result":Z
    .end local v69    # "user":I
    :pswitch_4b
    if-eqz p4, :cond_51

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_52

    .line 1327
    :cond_51
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1328
    :cond_52
    move/from16 v24, v7

    .line 1329
    .local v24, "defaultUser":I
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_53

    .line 1330
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 1332
    :cond_53
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v59

    .line 1335
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isCaCertificateDisabledAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1339
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1346
    .end local v24    # "defaultUser":I
    .end local v59    # "result":Z
    :pswitch_4c
    if-eqz p4, :cond_54

    move-object/from16 v0, p4

    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_54

    const/16 v27, 0x1

    .line 1348
    .local v27, "hasUserIdArgument":Z
    :goto_17
    if-eqz v27, :cond_55

    .line 1349
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v70

    .line 1350
    .local v70, "userIdArgument":I
    move-object/from16 v0, v38

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v59

    .line 1359
    .end local v70    # "userIdArgument":I
    .restart local v59    # "result":Z
    :goto_18
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUserRemoveCertificatesAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1363
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1346
    .end local v27    # "hasUserIdArgument":Z
    .end local v59    # "result":Z
    :cond_54
    const/16 v27, 0x0

    goto :goto_17

    .line 1353
    .restart local v27    # "hasUserIdArgument":Z
    :cond_55
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_18

    .line 1368
    .end local v27    # "hasUserIdArgument":Z
    .end local v59    # "result":Z
    :pswitch_4d
    if-eqz p4, :cond_56

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_57

    .line 1369
    :cond_56
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1370
    :cond_57
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v59

    .line 1373
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSignatureIdentityInformationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1377
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1382
    .end local v59    # "result":Z
    :pswitch_4e
    if-eqz p4, :cond_58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_59

    .line 1383
    :cond_58
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1384
    :cond_59
    new-instance v6, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v6, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Signature;

    check-cast v5, [Landroid/content/pm/Signature;

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v52

    .line 1387
    .local v52, "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getIdentitiesFromSignatures"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1391
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v52, :cond_4d

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4d

    .line 1393
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_5a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, [Ljava/lang/String;

    .line 1394
    .local v71, "value":[Ljava/lang/String;
    move-object/from16 v11, v71

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v50, v0

    .local v50, "len$":I
    const/16 v29, 0x0

    .local v29, "i$":I
    :goto_19
    move/from16 v0, v29

    move/from16 v1, v50

    if-ge v0, v1, :cond_5a

    aget-object v31, v11, v29

    .line 1395
    .local v31, "internalValue":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v31, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1394
    add-int/lit8 v29, v29, 0x1

    goto :goto_19

    .line 1403
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v29    # "i$":I
    .end local v31    # "internalValue":Ljava/lang/String;
    .end local v50    # "len$":I
    .end local v52    # "list":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    .end local v71    # "value":[Ljava/lang/String;
    :pswitch_4f
    if-eqz p4, :cond_5b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_5c

    .line 1404
    :cond_5b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1405
    :cond_5c
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/16 v72, 0x2

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v72

    move-object/from16 v0, v38

    move/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1407
    const/16 v53, 0x0

    .line 1408
    goto/16 :goto_16

    .line 1410
    :pswitch_50
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1413
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isRevocationCheckEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1417
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1422
    .end local v59    # "result":Z
    :pswitch_51
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1425
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isOcspCheckEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1429
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1434
    .end local v59    # "result":Z
    :pswitch_52
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1437
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isCertificateValidationAtInstallEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1441
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1446
    .end local v59    # "result":Z
    :pswitch_53
    if-eqz p4, :cond_5d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_5e

    .line 1447
    :cond_5d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1448
    :cond_5e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/CertificateInfo;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v58

    .line 1450
    .local v58, "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "validateCertificateAtInstall"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1454
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1459
    .end local v58    # "res":I
    :pswitch_54
    if-eqz p4, :cond_5f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_60

    .line 1460
    :cond_5f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1461
    :cond_60
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v58

    .line 1463
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "validateChainAtInstall"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1467
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1472
    .end local v58    # "res":I
    :pswitch_55
    if-eqz p4, :cond_61

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-gt v5, v6, :cond_62

    .line 1473
    :cond_61
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1474
    :cond_62
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v72, 0x1

    aget-object v72, p4, v72

    const/16 v73, 0x2

    aget-object v73, p4, v73

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    move-object/from16 v0, v38

    move-object/from16 v1, v72

    move/from16 v2, v73

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v66

    .line 1477
    .local v66, "stringResult":Ljava/lang/String;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPrivateKeyApplicationPermitted"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1481
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v66, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_16

    .line 1490
    .end local v38    # "lCertificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    .end local v66    # "stringResult":Ljava/lang/String;
    :pswitch_56
    const-string/jumbo v5, "password_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1492
    .local v42, "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v42, :cond_0

    if-eqz p3, :cond_0

    .line 1493
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_5

    :cond_63
    :goto_1a
    packed-switch v5, :pswitch_data_6

    .line 1683
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1493
    :sswitch_50
    const-string/jumbo v6, "getForbiddenStrings"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x0

    goto :goto_1a

    :sswitch_51
    const-string/jumbo v6, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x1

    goto :goto_1a

    :sswitch_52
    const-string/jumbo v6, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x2

    goto :goto_1a

    :sswitch_53
    const-string/jumbo v6, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x3

    goto :goto_1a

    :sswitch_54
    const-string/jumbo v6, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x4

    goto :goto_1a

    :sswitch_55
    const-string/jumbo v6, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x5

    goto :goto_1a

    :sswitch_56
    const-string/jumbo v6, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x6

    goto :goto_1a

    :sswitch_57
    const-string/jumbo v6, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/4 v5, 0x7

    goto :goto_1a

    :sswitch_58
    const-string/jumbo v6, "hasForbiddenData"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/16 v5, 0x8

    goto :goto_1a

    :sswitch_59
    const-string/jumbo v6, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/16 v5, 0x9

    goto/16 :goto_1a

    :sswitch_5a
    const-string/jumbo v6, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/16 v5, 0xa

    goto/16 :goto_1a

    :sswitch_5b
    const-string/jumbo v6, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    const/16 v5, 0xb

    goto/16 :goto_1a

    .line 1495
    :pswitch_57
    if-eqz p4, :cond_64

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_65

    .line 1496
    :cond_64
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1497
    :cond_65
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v51

    .line 1501
    .local v51, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getForbiddenStrings"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1505
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v51, :cond_66

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_66

    .line 1508
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/String;

    .line 1509
    .local v71, "value":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v71, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b

    .line 1517
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v51    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v71    # "value":Ljava/lang/String;
    :pswitch_58
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1521
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMaximumCharacterOccurences"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1525
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v58    # "res":I
    :cond_66
    :goto_1c
    move-object/from16 v5, v53

    .line 1686
    goto/16 :goto_1

    .line 1531
    :pswitch_59
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1535
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMaximumCharacterSequenceLength"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1539
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c

    .line 1545
    .end local v58    # "res":I
    :pswitch_5a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1549
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMaximumNumericSequenceLength"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1553
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c

    .line 1559
    .end local v58    # "res":I
    :pswitch_5b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1563
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMinimumCharacterChangeLength"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1567
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1573
    .end local v58    # "res":I
    :pswitch_5c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1577
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getPasswordChangeTimeout"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1581
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1587
    .end local v58    # "res":I
    :pswitch_5d
    if-eqz p4, :cond_67

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_68

    .line 1588
    :cond_67
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1589
    :cond_68
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v65

    .line 1593
    .local v65, "str":Ljava/lang/String;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getRequiredPwdPatternRestrictions"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1597
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v65, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1603
    .end local v65    # "str":Ljava/lang/String;
    :pswitch_5e
    if-eqz p4, :cond_69

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6a

    .line 1604
    :cond_69
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1605
    :cond_6a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v59

    .line 1609
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "hasForbiddenCharacterSequence"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1613
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1619
    .end local v59    # "result":Z
    :pswitch_5f
    if-eqz p4, :cond_6b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6c

    .line 1620
    :cond_6b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1621
    :cond_6c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v59

    .line 1625
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "hasForbiddenData"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1629
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1635
    .end local v59    # "result":Z
    :pswitch_60
    if-eqz p4, :cond_6d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_6e

    .line 1636
    :cond_6d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1637
    :cond_6e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v59

    .line 1641
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "hasForbiddenNumericSequence"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1645
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1651
    .end local v59    # "result":Z
    :pswitch_61
    if-eqz p4, :cond_6f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_70

    .line 1652
    :cond_6f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1653
    :cond_70
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v72, 0x1

    aget-object v72, p4, v72

    move-object/from16 v0, v42

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 1657
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "hasForbiddenStringDistance"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1661
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1667
    .end local v59    # "result":Z
    :pswitch_62
    if-eqz p4, :cond_71

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_72

    .line 1668
    :cond_71
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1669
    :cond_72
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v59

    .line 1673
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "hasMaxRepeatedCharacters"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1677
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1c

    .line 1690
    .end local v42    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v59    # "result":Z
    :pswitch_63
    const-string/jumbo v5, "password_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 1692
    .restart local v42    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-eqz v42, :cond_0

    if-eqz p3, :cond_0

    .line 1693
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_6

    :cond_73
    :goto_1d
    packed-switch v5, :pswitch_data_7

    .line 1862
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1693
    :sswitch_5c
    const-string/jumbo v6, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x0

    goto :goto_1d

    :sswitch_5d
    const-string/jumbo v6, "isChangeRequested"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x1

    goto :goto_1d

    :sswitch_5e
    const-string/jumbo v6, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x2

    goto :goto_1d

    :sswitch_5f
    const-string/jumbo v6, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x3

    goto :goto_1d

    :sswitch_60
    const-string/jumbo v6, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x4

    goto :goto_1d

    :sswitch_61
    const-string/jumbo v6, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x5

    goto :goto_1d

    :sswitch_62
    const-string/jumbo v6, "getPasswordLockDelay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x6

    goto :goto_1d

    :sswitch_63
    const-string/jumbo v6, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/4 v5, 0x7

    goto :goto_1d

    :sswitch_64
    const-string/jumbo v6, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    const/16 v5, 0x8

    goto :goto_1d

    .line 1695
    :pswitch_64
    if-eqz p4, :cond_74

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_75

    .line 1696
    :cond_74
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1697
    :cond_75
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v59

    .line 1701
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBiometricAuthenticationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1705
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v59    # "result":Z
    :goto_1e
    move-object/from16 v5, v53

    .line 1865
    goto/16 :goto_1

    .line 1711
    :pswitch_65
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1715
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isChangeRequested"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1719
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1e

    .line 1725
    .end local v58    # "res":I
    :pswitch_66
    if-eqz p4, :cond_76

    .line 1726
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1734
    .restart local v59    # "result":Z
    :goto_1f
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isExternalStorageForFailedPasswordsWipeExcluded"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1740
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1731
    .end local v59    # "result":Z
    :cond_76
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_1f

    .line 1746
    .end local v59    # "result":Z
    :pswitch_67
    if-eqz p4, :cond_77

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_78

    .line 1747
    :cond_77
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1748
    :cond_78
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v42

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v59

    .line 1752
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPasswordPatternMatched"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1756
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1762
    .end local v59    # "result":Z
    :pswitch_68
    if-nez p4, :cond_79

    .line 1763
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1765
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :goto_20
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isPasswordVisibilityEnabled return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPasswordVisibilityEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1778
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1768
    .end local v59    # "result":Z
    :cond_79
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1770
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isPasswordVisibilityEnabled callingUid = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1785
    .end local v59    # "result":Z
    :pswitch_69
    if-eqz p4, :cond_7a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_7b

    .line 1786
    :cond_7a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1787
    :cond_7b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v59

    .line 1789
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isPasswordVisibilityEnabledAsUser return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPasswordVisibilityEnabledAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1795
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1801
    .end local v59    # "result":Z
    :pswitch_6a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1805
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getPasswordLockDelay"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1809
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1815
    .end local v58    # "res":I
    :pswitch_6b
    if-eqz p4, :cond_7c

    .line 1816
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 1824
    .restart local v58    # "res":I
    :goto_21
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMaximumFailedPasswordsForDisable"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1830
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1821
    .end local v58    # "res":I
    :cond_7c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .restart local v58    # "res":I
    goto :goto_21

    .line 1836
    .end local v58    # "res":I
    :pswitch_6c
    if-eqz p4, :cond_7d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_7e

    .line 1837
    :cond_7d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1839
    :cond_7e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    if-nez v5, :cond_7f

    .line 1840
    const/16 v23, 0x0

    .line 1843
    .local v23, "cn":Landroid/content/ComponentName;
    :goto_22
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_80

    .line 1844
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v72, 0x0

    aget-object v72, p4, v72

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v58

    .line 1852
    .restart local v58    # "res":I
    :goto_23
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getMaximumFailedPasswordsForWipe"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1857
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1e

    .line 1842
    .end local v23    # "cn":Landroid/content/ComponentName;
    .end local v58    # "res":I
    :cond_7f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v23

    .restart local v23    # "cn":Landroid/content/ComponentName;
    goto :goto_22

    .line 1849
    :cond_80
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v58

    .restart local v58    # "res":I
    goto :goto_23

    .line 1870
    .end local v23    # "cn":Landroid/content/ComponentName;
    .end local v42    # "lPasswordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    .end local v58    # "res":I
    :pswitch_6d
    const-string v5, "browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 1873
    .local v37, "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-eqz v37, :cond_0

    if-eqz p3, :cond_0

    .line 1874
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_7

    :cond_81
    :goto_24
    packed-switch v5, :pswitch_data_8

    .line 1967
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1874
    :sswitch_65
    const-string/jumbo v6, "getHttpProxy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x0

    goto :goto_24

    :sswitch_66
    const-string/jumbo v6, "getAutoFillSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x1

    goto :goto_24

    :sswitch_67
    const-string/jumbo v6, "getCookiesSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x2

    goto :goto_24

    :sswitch_68
    const-string/jumbo v6, "getJavaScriptSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x3

    goto :goto_24

    :sswitch_69
    const-string/jumbo v6, "getPopupsSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x4

    goto :goto_24

    :sswitch_6a
    const-string/jumbo v6, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    const/4 v5, 0x5

    goto :goto_24

    .line 1876
    :pswitch_6e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v57

    .line 1879
    .local v57, "proxy":Ljava/lang/String;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getHttpProxy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1882
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v57, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v57    # "proxy":Ljava/lang/String;
    :goto_25
    move-object/from16 v5, v53

    .line 1970
    goto/16 :goto_1

    .line 1889
    :pswitch_6f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x4

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v12

    .line 1894
    .local v12, "bAutoFill":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getAutoFillSetting"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1898
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_25

    .line 1906
    .end local v12    # "bAutoFill":Z
    :pswitch_70
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x2

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v13

    .line 1911
    .local v13, "bCookiesSettings":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getCookiesSetting"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1914
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_25

    .line 1921
    .end local v13    # "bCookiesSettings":Z
    :pswitch_71
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v6, 0x10

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v19

    .line 1926
    .local v19, "bJavaScriptSetting":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getJavaScriptSetting"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1930
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .line 1938
    .end local v19    # "bJavaScriptSetting":Z
    :pswitch_72
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v20

    .line 1943
    .local v20, "bPopupSettings":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getPopupsSetting"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1946
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .line 1953
    .end local v20    # "bPopupSettings":Z
    :pswitch_73
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v6, 0x8

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v14

    .line 1958
    .local v14, "bForceWarning":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getForceFraudWarningSetting"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1961
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    .line 1976
    .end local v14    # "bForceWarning":Z
    .end local v37    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    :pswitch_74
    const-string v5, "bluetooth_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 1978
    .local v36, "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-eqz v36, :cond_0

    if-eqz p3, :cond_0

    .line 1979
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_8

    :cond_82
    :goto_26
    packed-switch v5, :pswitch_data_9

    .line 2091
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1979
    :sswitch_6b
    const-string/jumbo v6, "isBluetoothEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x0

    goto :goto_26

    :sswitch_6c
    const-string/jumbo v6, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x1

    goto :goto_26

    :sswitch_6d
    const-string/jumbo v6, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x2

    goto :goto_26

    :sswitch_6e
    const-string/jumbo v6, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x3

    goto :goto_26

    :sswitch_6f
    const-string/jumbo v6, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x4

    goto :goto_26

    :sswitch_70
    const-string/jumbo v6, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x5

    goto :goto_26

    :sswitch_71
    const-string v6, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x6

    goto :goto_26

    :sswitch_72
    const-string/jumbo v6, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    const/4 v5, 0x7

    goto :goto_26

    .line 1981
    :pswitch_75
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 1982
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isBluetoothEnabled = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBluetoothEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1988
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_27
    move-object/from16 v5, v53

    .line 2094
    goto/16 :goto_1

    .line 1994
    .end local v59    # "result":Z
    :pswitch_76
    if-eqz p4, :cond_83

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_84

    .line 1995
    :cond_83
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1996
    :cond_84
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v59

    .line 1998
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isBluetoothEnabled = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBluetoothEnabledWithMsg"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2004
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_27

    .line 2010
    .end local v59    # "result":Z
    :pswitch_77
    if-eqz p4, :cond_85

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_86

    .line 2011
    :cond_85
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2012
    :cond_86
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v59

    .line 2014
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isOutgoingCallsAllowed = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isOutgoingCallsAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2020
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2026
    .end local v59    # "result":Z
    :pswitch_78
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2029
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isLimitedDiscoverableEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2033
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2038
    .end local v59    # "result":Z
    :pswitch_79
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2041
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDiscoverableEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2045
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2050
    .end local v59    # "result":Z
    :pswitch_7a
    if-eqz p4, :cond_87

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_88

    .line 2051
    :cond_87
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2052
    :cond_88
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v59

    .line 2055
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDesktopConnectivityEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2059
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2064
    .end local v59    # "result":Z
    :pswitch_7b
    if-eqz p4, :cond_89

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_8a

    .line 2065
    :cond_89
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2066
    :cond_8a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v72, 0x1

    aget-object v72, p4, v72

    move-object/from16 v0, v36

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 2070
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v72, "bluetoothLog"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2074
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2079
    .end local v59    # "result":Z
    :pswitch_7c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2082
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBluetoothLogEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2086
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    .line 2098
    .end local v36    # "lBluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .end local v59    # "result":Z
    :pswitch_7d
    if-eqz p3, :cond_0

    .line 2099
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_9

    :cond_8b
    :goto_28
    packed-switch v5, :pswitch_data_a

    :goto_29
    move-object/from16 v5, v53

    .line 2213
    goto/16 :goto_1

    .line 2099
    :sswitch_73
    const-string/jumbo v6, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x0

    goto :goto_28

    :sswitch_74
    const-string/jumbo v6, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x1

    goto :goto_28

    :sswitch_75
    const-string/jumbo v6, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x2

    goto :goto_28

    :sswitch_76
    const-string/jumbo v6, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x3

    goto :goto_28

    :sswitch_77
    const-string/jumbo v6, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x4

    goto :goto_28

    :sswitch_78
    const-string v6, "bluetoothSocketLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x5

    goto :goto_28

    :sswitch_79
    const-string/jumbo v6, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x6

    goto :goto_28

    :sswitch_7a
    const-string v6, "bluetoothLog"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/4 v5, 0x7

    goto :goto_28

    :sswitch_7b
    const-string v6, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v5, 0x8

    goto :goto_28

    :sswitch_7c
    const-string v6, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8b

    const/16 v5, 0x9

    goto/16 :goto_28

    .line 2101
    :pswitch_7e
    if-eqz p4, :cond_8c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8d

    .line 2102
    :cond_8c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2103
    :cond_8d
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v59

    .line 2106
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isProfileAuthorizedBySecurityPolicy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2110
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2115
    .end local v59    # "result":Z
    :pswitch_7f
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v59

    .line 2118
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isBluetoothLogEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2122
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2127
    .end local v59    # "result":Z
    :pswitch_80
    if-eqz p4, :cond_8e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_8f

    .line 2128
    :cond_8e
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2129
    :cond_8f
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v59

    .line 2130
    .restart local v59    # "result":Z
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "PAIRINGALLOWEDBYSECURITY = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isPairingAllowedbySecurityPolicy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2136
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2141
    .end local v59    # "result":Z
    :pswitch_81
    if-eqz p4, :cond_90

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_91

    .line 2142
    :cond_90
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2143
    :cond_91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v59

    .line 2146
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isHeadsetAllowedBySecurityPolicy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2150
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2155
    .end local v59    # "result":Z
    :pswitch_82
    if-eqz p4, :cond_92

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_93

    .line 2156
    :cond_92
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2157
    :cond_93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p4, v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v72, 0x2

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    const/16 v73, 0x3

    aget-object v73, p4, v73

    invoke-static/range {v73 .. v73}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v73

    move/from16 v0, v72

    move-object/from16 v1, v73

    invoke-static {v5, v6, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v59

    .line 2160
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSocketAllowedBySecurityPolicy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2164
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2169
    .end local v59    # "result":Z
    :pswitch_83
    if-eqz p4, :cond_94

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_95

    .line 2170
    :cond_94
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2171
    :cond_95
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    const/16 v72, 0x1

    aget-object v72, p4, v72

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    const/16 v72, 0x2

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    const/16 v73, 0x3

    aget-object v73, p4, v73

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v73

    move/from16 v0, v72

    move/from16 v1, v73

    invoke-static {v5, v6, v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_29

    .line 2175
    :pswitch_84
    if-eqz p4, :cond_96

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_97

    .line 2176
    :cond_96
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2177
    :cond_97
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v59

    .line 2181
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2185
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 2190
    .end local v59    # "result":Z
    :pswitch_85
    if-eqz p4, :cond_98

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_98

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_99

    .line 2191
    :cond_98
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2192
    :cond_99
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v5, v6}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2195
    :pswitch_86
    if-eqz p4, :cond_9a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9a

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_9b

    .line 2196
    :cond_9a
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2197
    :cond_9b
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    const/16 v72, 0x2

    aget-object v72, p4, v72

    move-object/from16 v0, v72

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2201
    :pswitch_87
    if-eqz p4, :cond_9c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_9c

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v5

    if-nez v5, :cond_9d

    .line 2202
    :cond_9c
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2203
    :cond_9d
    const/4 v5, 0x2

    aget-object v5, p4, v5

    if-nez v5, :cond_9e

    .line 2204
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/16 v72, 0x0

    move-object/from16 v0, v72

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_29

    .line 2208
    :cond_9e
    const/4 v5, 0x0

    aget-object v5, p4, v5

    const/4 v6, 0x1

    aget-object v6, p4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v72

    const/16 v73, 0x2

    aget-object v73, p4, v73

    invoke-virtual/range {v72 .. v73}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v72

    move-object/from16 v0, v72

    invoke-static {v5, v6, v0}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_29

    .line 2217
    :pswitch_88
    const-string/jumbo v5, "roaming_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 2219
    .local v44, "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-eqz v44, :cond_0

    if-eqz p3, :cond_0

    .line 2220
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_a

    :cond_9f
    :goto_2a
    packed-switch v5, :pswitch_data_b

    .line 2274
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2220
    :sswitch_7d
    const-string/jumbo v6, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const/4 v5, 0x0

    goto :goto_2a

    :sswitch_7e
    const-string/jumbo v6, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const/4 v5, 0x1

    goto :goto_2a

    :sswitch_7f
    const-string/jumbo v6, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const/4 v5, 0x2

    goto :goto_2a

    :sswitch_80
    const-string/jumbo v6, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    const/4 v5, 0x3

    goto :goto_2a

    .line 2222
    :pswitch_89
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2225
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isRoamingSyncEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2229
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2b
    move-object/from16 v5, v53

    .line 2277
    goto/16 :goto_1

    .line 2235
    .end local v59    # "result":Z
    :pswitch_8a
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2238
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isRoamingPushEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2242
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2b

    .line 2248
    .end local v59    # "result":Z
    :pswitch_8b
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2251
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isRoamingDataEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2255
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2b

    .line 2261
    .end local v59    # "result":Z
    :pswitch_8c
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2264
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isRoamingVoiceCallsEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2268
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2b

    .line 2283
    .end local v44    # "lRoamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    .end local v59    # "result":Z
    :pswitch_8d
    const-string/jumbo v5, "location_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 2285
    .local v40, "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-eqz v40, :cond_0

    if-eqz p3, :cond_0

    .line 2286
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_b

    :cond_a0
    :goto_2c
    packed-switch v5, :pswitch_data_c

    .line 2342
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2286
    :sswitch_81
    const-string/jumbo v6, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    const/4 v5, 0x0

    goto :goto_2c

    :sswitch_82
    const-string/jumbo v6, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    const/4 v5, 0x1

    goto :goto_2c

    :sswitch_83
    const-string/jumbo v6, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a0

    const/4 v5, 0x2

    goto :goto_2c

    .line 2288
    :pswitch_8e
    if-eqz p4, :cond_a1

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a2

    .line 2289
    :cond_a1
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2290
    :cond_a2
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v59

    .line 2293
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isLocationProviderBlocked"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2297
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2d
    move-object/from16 v5, v53

    .line 2345
    goto/16 :goto_1

    .line 2303
    .end local v59    # "result":Z
    :pswitch_8f
    if-eqz p4, :cond_a3

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_a4

    .line 2304
    :cond_a3
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2305
    :cond_a4
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a6

    .line 2306
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v56

    .line 2307
    .local v56, "providedUserId":I
    const/4 v5, -0x2

    move/from16 v0, v56

    if-ne v0, v5, :cond_a5

    .line 2308
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v56

    .line 2309
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "isLocationProviderBlockedAsUser using userId = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v72, " instead of UserHandle.USER_CURRENT"

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    :cond_a5
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v40

    move/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v59

    .line 2319
    .end local v56    # "providedUserId":I
    .restart local v59    # "result":Z
    :goto_2e
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isLocationProviderBlockedAsUser"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2323
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2d

    .line 2315
    .end local v59    # "result":Z
    :cond_a6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5, v7}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v59

    .restart local v59    # "result":Z
    goto :goto_2e

    .line 2329
    .end local v59    # "result":Z
    :pswitch_90
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2332
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isGPSStateChangeAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2336
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2d

    .line 2349
    .end local v40    # "lLocationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    .end local v59    # "result":Z
    :pswitch_91
    const-string v5, "auditlog"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 2352
    .local v35, "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-eqz v35, :cond_0

    .line 2353
    if-eqz p3, :cond_0

    const-string/jumbo v5, "isAuditLogEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2355
    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v17

    .line 2358
    .local v17, "bIsAuditLogEnabled":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAuditLogEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2361
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v53

    .line 2366
    goto/16 :goto_1

    .line 2374
    .end local v17    # "bIsAuditLogEnabled":Z
    .end local v35    # "lAuditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    :pswitch_92
    const-string/jumbo v5, "smartcard_browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    .line 2377
    .local v48, "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    if-eqz v48, :cond_0

    .line 2378
    if-eqz p3, :cond_a7

    const-string/jumbo v5, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 2380
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v18

    .line 2384
    .local v18, "bIsAuthenticationEnabled":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAuthenticationEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2388
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v53

    .line 2393
    goto/16 :goto_1

    .line 2395
    .end local v18    # "bIsAuthenticationEnabled":Z
    :cond_a7
    if-eqz p3, :cond_0

    const-string/jumbo v5, "getClientCertificateAlias"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2398
    if-eqz p4, :cond_a8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_a9

    .line 2399
    :cond_a8
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2401
    :cond_a9
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    const/16 v72, 0x1

    aget-object v72, p4, v72

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v72

    move-object/from16 v0, v48

    move/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v63

    .line 2406
    .local v63, "sGetClientCertificateAlias":Ljava/lang/String;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getClientCertificateAlias"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2411
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v63, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v5, v53

    .line 2416
    goto/16 :goto_1

    .line 2422
    .end local v48    # "lSmartCardBrowserPolicy":Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
    .end local v63    # "sGetClientCertificateAlias":Ljava/lang/String;
    :pswitch_93
    const-string/jumbo v5, "security_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 2425
    .local v47, "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    if-eqz v47, :cond_0

    if-eqz p3, :cond_0

    .line 2426
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_c

    :cond_aa
    :goto_2f
    packed-switch v5, :pswitch_data_d

    .line 2460
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2426
    :sswitch_84
    const-string/jumbo v6, "isDodBannerVisible"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    const/4 v5, 0x0

    goto :goto_2f

    :sswitch_85
    const-string/jumbo v6, "getCredentialStorageStatus"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    const/4 v5, 0x1

    goto :goto_2f

    .line 2430
    :pswitch_94
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v25

    .line 2433
    .local v25, "dodbanner":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDodBannerVisible"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2437
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v25    # "dodbanner":Z
    :goto_30
    move-object/from16 v5, v53

    .line 2463
    goto/16 :goto_1

    .line 2445
    :pswitch_95
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I

    move-result v58

    .line 2449
    .restart local v58    # "res":I
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2453
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 2456
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v72, "getCredentialStorageStatus = "

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 2468
    .end local v47    # "lSecurityPolicy":Lcom/android/server/enterprise/security/SecurityPolicy;
    .end local v58    # "res":I
    :pswitch_96
    const-string v5, "browser_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 2470
    .restart local v37    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    const-string/jumbo v5, "misc_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 2472
    .local v41, "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-eqz v37, :cond_0

    if-eqz p3, :cond_0

    if-eqz v41, :cond_0

    .line 2473
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d

    :cond_ab
    :goto_31
    packed-switch v5, :pswitch_data_e

    .line 2560
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2473
    :sswitch_86
    const-string/jumbo v6, "getURLFilterEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v5, 0x0

    goto :goto_31

    :sswitch_87
    const-string/jumbo v6, "getURLFilterList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v5, 0x1

    goto :goto_31

    :sswitch_88
    const-string/jumbo v6, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v5, 0x2

    goto :goto_31

    :sswitch_89
    const-string/jumbo v6, "isUrlBlocked"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v5, 0x3

    goto :goto_31

    :sswitch_8a
    const-string/jumbo v6, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ab

    const/4 v5, 0x4

    goto :goto_31

    .line 2477
    :pswitch_97
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v72, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v15

    .line 2481
    .local v15, "bGetURLFilterEnabled":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getURLFilterEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2485
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v15    # "bGetURLFilterEnabled":Z
    :cond_ac
    :goto_32
    move-object/from16 v5, v53

    .line 2563
    goto/16 :goto_1

    .line 2494
    :pswitch_98
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v72, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v68

    .line 2497
    .local v68, "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getURLFilterList"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2502
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v68, :cond_ac

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ac

    .line 2505
    invoke-interface/range {v68 .. v68}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 2506
    .local v26, "filterList":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v26, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_33

    .line 2517
    .end local v26    # "filterList":Ljava/lang/String;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v68    # "urFilterList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_99
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x1

    const/16 v72, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v72

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    .line 2521
    .local v22, "bUrlFilterReportEnable":Ljava/lang/Boolean;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getURLFilterReportEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2525
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v22, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_32

    .line 2531
    .end local v22    # "bUrlFilterReportEnable":Ljava/lang/Boolean;
    :pswitch_9a
    if-eqz p4, :cond_ad

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_ae

    .line 2532
    :cond_ad
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2533
    :cond_ae
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    .line 2537
    .local v21, "bUrlBlocked":Ljava/lang/Boolean;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isUrlBlocked"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2541
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v21, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_32

    .line 2547
    .end local v21    # "bUrlBlocked":Ljava/lang/Boolean;
    :pswitch_9b
    invoke-virtual/range {v41 .. v41}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2550
    .local v16, "bGlobalProxy":Ljava/lang/Boolean;
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isGlobalProxyAllowed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2554
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v16, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_32

    .line 2579
    .end local v16    # "bGlobalProxy":Ljava/lang/Boolean;
    .end local v37    # "lBrowserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    .end local v41    # "lMiscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    :pswitch_9c
    const-string v5, "apppermission_control_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    .line 2582
    .local v34, "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    if-eqz v34, :cond_0

    if-eqz p3, :cond_0

    .line 2583
    if-eqz p4, :cond_af

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_b0

    .line 2584
    :cond_af
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2586
    :cond_b0
    const-string/jumbo v5, "getPermissionBlockedList"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2587
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2588
    .local v9, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v9, Ljava/util/List;

    .line 2589
    .restart local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v6, 0x0

    aget-object v6, p4, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6, v9}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v55

    .line 2593
    .local v55, "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getPermissionBlockedList"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2598
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v55, :cond_b1

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b1

    .line 2601
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Ljava/lang/String;

    .line 2602
    .local v54, "perm":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v54, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v54    # "perm":Ljava/lang/String;
    :cond_b1
    move-object/from16 v5, v53

    .line 2609
    goto/16 :goto_1

    .line 2615
    .end local v9    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v34    # "lAppPermissionControlPol":Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
    .end local v55    # "permList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9d
    const-string v5, "date_time_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 2618
    .local v39, "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-eqz v39, :cond_0

    if-eqz p3, :cond_0

    .line 2619
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_e

    :cond_b2
    :goto_35
    packed-switch v5, :pswitch_data_f

    .line 2652
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2619
    :sswitch_8b
    const-string/jumbo v6, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v5, 0x0

    goto :goto_35

    :sswitch_8c
    const-string/jumbo v6, "getAutomaticTime"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v5, 0x1

    goto :goto_35

    .line 2622
    :pswitch_9e
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2626
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDateTimeChangeEnalbed"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2631
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_36
    move-object/from16 v5, v53

    .line 2655
    goto/16 :goto_1

    .line 2638
    .end local v59    # "result":Z
    :pswitch_9f
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Landroid/app/enterprise/ContextInfo;)Z

    move-result v59

    .line 2642
    .restart local v59    # "result":Z
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getAutomaticTime"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2647
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_36

    .line 2659
    .end local v39    # "lDateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    .end local v59    # "result":Z
    :pswitch_a0
    const-string/jumbo v5, "spd_control_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/enterprise/spd/SPDControlPolicy;

    .line 2661
    .local v46, "lSPDControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    if-eqz v46, :cond_0

    if-eqz p3, :cond_0

    .line 2662
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_10

    :cond_b3
    :goto_37
    packed-switch v5, :pswitch_data_11

    .line 2672
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2662
    :pswitch_a1
    const-string/jumbo v6, "isSPDAutomaticUpdateEnabled"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b3

    const/4 v5, 0x0

    goto :goto_37

    .line 2664
    :pswitch_a2
    const/16 v62, -0x1

    .line 2665
    .local v62, "ret":I
    invoke-virtual/range {v46 .. v46}, Lcom/android/server/enterprise/spd/SPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v62

    .line 2666
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isSPDAutomaticUpdateEnabled"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2669
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2677
    .end local v46    # "lSPDControlPolicy":Lcom/android/server/enterprise/spd/SPDControlPolicy;
    .end local v62    # "ret":I
    :pswitch_a3
    const-string v5, "SEAMService"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v45

    check-cast v45, Lcom/android/server/SEAMService;

    .line 2678
    .local v45, "lSEAMSPolicy":Lcom/android/server/SEAMService;
    if-eqz v45, :cond_0

    if-eqz p3, :cond_0

    .line 2679
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_f

    :cond_b4
    :goto_38
    packed-switch v5, :pswitch_data_12

    .line 2708
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2679
    :sswitch_8d
    const-string/jumbo v6, "getSEContainerClipboardMode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    const/4 v5, 0x0

    goto :goto_38

    :sswitch_8e
    const-string/jumbo v6, "getAllSEContainerCategory"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b4

    const/4 v5, 0x1

    goto :goto_38

    .line 2681
    :pswitch_a4
    if-eqz p4, :cond_b5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    if-gtz v5, :cond_b6

    .line 2682
    :cond_b5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2684
    :cond_b6
    const/4 v5, 0x0

    aget-object v5, p4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lcom/android/server/SEAMService;->getSEContainerClipboardMode(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b8

    const/16 v59, 0x1

    .line 2687
    .restart local v59    # "result":Z
    :goto_39
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getSEContainerClipboardMode"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2690
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v59    # "result":Z
    :cond_b7
    move-object/from16 v5, v53

    .line 2710
    goto/16 :goto_1

    .line 2684
    :cond_b8
    const/16 v59, 0x0

    goto :goto_39

    .line 2696
    :pswitch_a5
    invoke-virtual/range {v45 .. v45}, Lcom/android/server/SEAMService;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v60

    .line 2698
    .local v60, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "getAllSEContainerCategory"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2701
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v60, :cond_b7

    invoke-interface/range {v60 .. v60}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b7

    .line 2702
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28    # "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Ljava/lang/Integer;

    .line 2703
    .local v71, "value":Ljava/lang/Integer;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    aput-object v71, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3a

    .line 2714
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v45    # "lSEAMSPolicy":Lcom/android/server/SEAMService;
    .end local v60    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v71    # "value":Ljava/lang/Integer;
    :pswitch_a6
    if-eqz p3, :cond_bf

    .line 2715
    const/4 v5, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_10

    :cond_b9
    :goto_3b
    packed-switch v5, :pswitch_data_13

    .line 2754
    const-string v5, "SecContentProvider"

    const-string v6, "Case DLP selection is not matched"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 2715
    :sswitch_8f
    const-string/jumbo v6, "isAllowedToShare"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x0

    goto :goto_3b

    :sswitch_90
    const-string/jumbo v6, "isDLPActivated"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v5, 0x1

    goto :goto_3b

    .line 2717
    :pswitch_a7
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 2718
    .local v33, "isShareAllowed":Ljava/lang/Boolean;
    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 2720
    const-string v5, "enterprise_dlp_service"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;

    .line 2722
    .local v3, "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    if-eqz v3, :cond_bc

    .line 2723
    new-instance v4, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v4, v8}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .local v4, "ctxInfo":Landroid/app/enterprise/ContextInfo;
    move-object/from16 v5, p4

    move-object/from16 v6, p3

    .line 2724
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isShareAllowed(Landroid/app/enterprise/ContextInfo;[Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 2729
    .end local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .end local v4    # "ctxInfo":Landroid/app/enterprise/ContextInfo;
    :cond_ba
    :goto_3c
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isAllowedToShare"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2733
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v53, :cond_bb

    .line 2734
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Cursor not null:"

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    :cond_bb
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v33, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    .end local v33    # "isShareAllowed":Ljava/lang/Boolean;
    :goto_3d
    move-object/from16 v5, v53

    .line 2757
    goto/16 :goto_1

    .line 2726
    .restart local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .restart local v33    # "isShareAllowed":Ljava/lang/Boolean;
    :cond_bc
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "dlp service is null:"

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 2739
    .end local v3    # "IdlpPolicy":Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;
    .end local v33    # "isShareAllowed":Ljava/lang/Boolean;
    :pswitch_a8
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 2740
    .local v32, "isDLPActivated":Ljava/lang/Boolean;
    invoke-static {v7}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_bd

    .line 2742
    invoke-static {v7}, Lcom/android/server/enterprise/dlp/DLPManagerPolicyService;->isActivated(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .line 2744
    :cond_bd
    new-instance v53, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    .end local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v72, "isDLPActivated"

    aput-object v72, v5, v6

    move-object/from16 v0, v53

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 2748
    .restart local v53    # "mCursor":Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;
    if-eqz v53, :cond_be

    .line 2749
    const-string v5, "SecContentProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v72, "Cursor not null:"

    move-object/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v72

    move/from16 v0, v72

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_be
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Boolean;

    const/4 v6, 0x0

    aput-object v32, v5, v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3d

    .line 2759
    .end local v32    # "isDLPActivated":Ljava/lang/Boolean;
    :cond_bf
    const-string v5, "SecContentProvider"

    const-string v6, "Case DLP selection null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_91
        :pswitch_74
        :pswitch_7d
        :pswitch_6d
        :pswitch_49
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_96
        :pswitch_0
        :pswitch_8d
        :pswitch_56
        :pswitch_63
        :pswitch_1
        :pswitch_14
        :pswitch_26
        :pswitch_37
        :pswitch_88
        :pswitch_93
        :pswitch_0
        :pswitch_92
        :pswitch_9c
        :pswitch_9d
        :pswitch_a0
        :pswitch_a3
        :pswitch_a6
    .end packed-switch

    .line 248
    :sswitch_data_0
    .sparse-switch
        -0x5d9fe8ab -> :sswitch_8
        -0x5c7edb84 -> :sswitch_b
        -0x4bfd3947 -> :sswitch_c
        -0x38cefab6 -> :sswitch_a
        -0x36978d55 -> :sswitch_4
        -0x34742384 -> :sswitch_7
        -0x2d47f4e1 -> :sswitch_5
        -0x2b582cae -> :sswitch_9
        0x3e05fd -> :sswitch_6
        0x7ed85f2 -> :sswitch_d
        0x2ea4b8a5 -> :sswitch_f
        0x3593cbd4 -> :sswitch_3
        0x3d337bfd -> :sswitch_1
        0x4ef9c1f9 -> :sswitch_10
        0x64034c9f -> :sswitch_11
        0x71560275 -> :sswitch_e
        0x77163a49 -> :sswitch_2
        0x7e3d73d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 514
    :sswitch_data_1
    .sparse-switch
        -0x74a4d725 -> :sswitch_20
        -0x71206782 -> :sswitch_22
        -0x6c0db8af -> :sswitch_15
        -0x694bd3d6 -> :sswitch_1c
        -0x553c4d53 -> :sswitch_1b
        -0x4d525a40 -> :sswitch_19
        -0x4406e5f2 -> :sswitch_1e
        -0x39e13355 -> :sswitch_12
        -0x2de531be -> :sswitch_1a
        -0x1ab59b72 -> :sswitch_13
        -0xa2586fa -> :sswitch_21
        0x5ad79eb -> :sswitch_17
        0x5be9d3d -> :sswitch_16
        0x26581d58 -> :sswitch_1d
        0x36e6d3e0 -> :sswitch_1f
        0x4bd14915 -> :sswitch_14
        0x6c3b6517 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch

    .line 796
    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_24
        -0x5eef4930 -> :sswitch_29
        -0x57f5d70e -> :sswitch_2d
        -0x55af2a6c -> :sswitch_27
        -0x42b9a7be -> :sswitch_30
        -0x3d0295e2 -> :sswitch_26
        -0x331a660a -> :sswitch_2b
        -0x1ad99baa -> :sswitch_2e
        -0x10b8615d -> :sswitch_25
        -0x53b1dd2 -> :sswitch_28
        0x3e90c48d -> :sswitch_32
        0x405a90ec -> :sswitch_2c
        0x53ef861d -> :sswitch_2f
        0x5bb25232 -> :sswitch_23
        0x6bef28f1 -> :sswitch_2a
        0x7c45f31f -> :sswitch_31
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch

    .line 1050
    :sswitch_data_3
    .sparse-switch
        -0x562f9482 -> :sswitch_35
        -0x4e3d6d40 -> :sswitch_3b
        -0x460411da -> :sswitch_39
        -0x39b5211e -> :sswitch_3f
        -0x37226d22 -> :sswitch_3a
        -0x3581de92 -> :sswitch_37
        -0x30c133a0 -> :sswitch_3c
        -0x28516cec -> :sswitch_3e
        -0x9cfa0f0 -> :sswitch_41
        -0x4e1daa7 -> :sswitch_38
        -0x4445baa -> :sswitch_42
        -0xebe1ca -> :sswitch_43
        0x12bbc810 -> :sswitch_3d
        0x5f1771f4 -> :sswitch_34
        0x730fdeab -> :sswitch_36
        0x75020c0f -> :sswitch_33
        0x788dd2ce -> :sswitch_40
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
    .end packed-switch

    .line 1304
    :sswitch_data_4
    .sparse-switch
        -0x7f682541 -> :sswitch_4c
        -0x6f783fb9 -> :sswitch_4d
        -0x51cc33cc -> :sswitch_4b
        -0x4d8cc16d -> :sswitch_46
        -0x3d0bb61b -> :sswitch_44
        -0x3c6ca389 -> :sswitch_48
        -0x3c036018 -> :sswitch_45
        -0x3bc628df -> :sswitch_47
        -0x374aace4 -> :sswitch_49
        -0x1c091992 -> :sswitch_4f
        0x6305badd -> :sswitch_4e
        0x692685a1 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
    .end packed-switch

    .line 1493
    :sswitch_data_5
    .sparse-switch
        -0x7f91d479 -> :sswitch_54
        -0x7c284bba -> :sswitch_52
        -0x6f335556 -> :sswitch_53
        -0x4cb7d87b -> :sswitch_5a
        -0x2d0cb7a5 -> :sswitch_51
        0xdc5fecf -> :sswitch_56
        0x33b94bbf -> :sswitch_50
        0x367ce700 -> :sswitch_55
        0x465482c9 -> :sswitch_58
        0x552e154b -> :sswitch_57
        0x69712d6f -> :sswitch_59
        0x6ab4c78e -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_61
        :pswitch_62
    .end packed-switch

    .line 1693
    :sswitch_data_6
    .sparse-switch
        -0x4e857510 -> :sswitch_63
        -0x1c894ef7 -> :sswitch_5e
        -0xe2e3396 -> :sswitch_60
        -0x9b47ac1 -> :sswitch_64
        0x17f43207 -> :sswitch_62
        0x48803b14 -> :sswitch_5d
        0x60a98cb9 -> :sswitch_5f
        0x65054427 -> :sswitch_61
        0x75f9239b -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
    .end packed-switch

    .line 1874
    :sswitch_data_7
    .sparse-switch
        -0x74ddc0dd -> :sswitch_6a
        -0x67f870ad -> :sswitch_69
        -0x499a7018 -> :sswitch_66
        -0x364e80b3 -> :sswitch_68
        0x9515810 -> :sswitch_65
        0x78a801b7 -> :sswitch_67
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6f
        :pswitch_70
        :pswitch_71
        :pswitch_72
        :pswitch_73
    .end packed-switch

    .line 1979
    :sswitch_data_8
    .sparse-switch
        -0x625ba203 -> :sswitch_6b
        -0x534f8be2 -> :sswitch_6c
        -0x5319be4a -> :sswitch_71
        -0x4ebf90df -> :sswitch_72
        -0x11927f68 -> :sswitch_70
        0x52d2774 -> :sswitch_6f
        0x3962d1ce -> :sswitch_6e
        0x6422cbe9 -> :sswitch_6d
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
    .end packed-switch

    .line 2099
    :sswitch_data_9
    .sparse-switch
        -0x74fa9afd -> :sswitch_73
        -0x5319be4a -> :sswitch_7a
        -0x4ebf90df -> :sswitch_74
        -0x3ce44687 -> :sswitch_76
        -0x3a6a65ad -> :sswitch_75
        -0x103e8c3d -> :sswitch_78
        0x292f3f94 -> :sswitch_79
        0x2eef3494 -> :sswitch_77
        0x65788769 -> :sswitch_7c
        0x7d586159 -> :sswitch_7b
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_85
        :pswitch_86
        :pswitch_87
    .end packed-switch

    .line 2220
    :sswitch_data_a
    .sparse-switch
        -0x3edf31d1 -> :sswitch_80
        -0x15a386e9 -> :sswitch_7d
        -0xc145ad8 -> :sswitch_7f
        0x4744a7b8 -> :sswitch_7e
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
    .end packed-switch

    .line 2286
    :sswitch_data_b
    .sparse-switch
        -0x66608807 -> :sswitch_82
        -0x40efadf9 -> :sswitch_83
        0x63cbc5bc -> :sswitch_81
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
    .end packed-switch

    .line 2426
    :sswitch_data_c
    .sparse-switch
        -0x6e1bb3c9 -> :sswitch_84
        0x741c2b00 -> :sswitch_85
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_94
        :pswitch_95
    .end packed-switch

    .line 2473
    :sswitch_data_d
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_87
        -0x3ecb9a99 -> :sswitch_8a
        0x3ba3e2f0 -> :sswitch_86
        0x62658647 -> :sswitch_89
        0x6f38e3dc -> :sswitch_88
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_97
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
    .end packed-switch

    .line 2619
    :sswitch_data_e
    .sparse-switch
        -0x57099b48 -> :sswitch_8b
        0x333ea7e2 -> :sswitch_8c
    .end sparse-switch

    :pswitch_data_f
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_9f
    .end packed-switch

    .line 2662
    :pswitch_data_10
    .packed-switch -0x28e089b6
        :pswitch_a1
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x0
        :pswitch_a2
    .end packed-switch

    .line 2679
    :sswitch_data_f
    .sparse-switch
        -0x74717860 -> :sswitch_8d
        -0x1b958fde -> :sswitch_8e
    .end sparse-switch

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_a4
        :pswitch_a5
    .end packed-switch

    .line 2715
    :sswitch_data_10
    .sparse-switch
        -0x1d831fed -> :sswitch_90
        0x67e79726 -> :sswitch_8f
    .end sparse-switch

    :pswitch_data_13
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a8
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 2908
    const/4 v0, 0x0

    return v0
.end method
