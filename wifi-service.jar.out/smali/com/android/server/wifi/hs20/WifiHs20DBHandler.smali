.class public Lcom/android/server/wifi/hs20/WifiHs20DBHandler;
.super Ljava/lang/Object;
.source "WifiHs20DBHandler.java"


# static fields
.field private static final ADD_OPERATION:I = 0x0

.field public static final BAD_MANAGEMENT_TREE:I = 0x37

.field public static final BASE:I = 0x32

.field public static final COMMAND_FAILED:I = 0x34

.field public static final COMMAND_NOT_ALLOWED:I = 0x39

.field public static final COMMAND_NOT_EXECUTED_DUE_TO_USER:I = 0x3a

.field public static final DEVICE_FULL:I = 0x36

.field public static final HOTSPOT_ID:Ljava/lang/String;

.field public static final MO_ADDITION_UPDATE_FAILED:I = 0x33

.field public static final NEW_CREDENTIAL_ID:I = -0x1

.field public static final NOT_FOUND:I = 0x3b

.field public static final NO_ERROR:I = 0x32

.field public static final PERMISSION_DENIED:I = 0x35

.field public static final POLICY_UPDATE_NODE:I = 0x0

.field public static final REQUEST_ENTRY_TOO_LARGE:I = 0x38

.field public static final SUBSCRIPTION_UPDATE_NODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiHs20DBHandler"

.field private static final UPDATE_OPERATION:I = 0x1


# instance fields
.field private DEFAULT_LENGTH:I

.field private HS20_DB_ADD_OPERATION:I

.field private HS20_DB_UPDATE_OPERATION:I

.field private UPDATE_SUCCESS:I

.field private cr:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HOTSPOT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    .line 49
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->DEFAULT_LENGTH:I

    .line 51
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->UPDATE_SUCCESS:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    .line 55
    iput v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    .line 88
    iput-object p1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    .line 90
    return-void
.end method

.method private addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1369
    const-string v0, "WifiHs20DBHandler"

    const-string v5, "addCredential"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1371
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    const-string v0, "creation_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1374
    const-string v0, "expiration_date"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    :cond_0
    const-string v0, "realm"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const-string v0, "WifiHs20DBHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding CA cert AAA finger print Credential"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v12, v12, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1378
    const-string v0, "hs20_aaa_ca_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_1
    const-string v5, "check_aaa_server_cert_status"

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-boolean v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    const-string v0, "credential_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_2

    .line 1383
    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    :cond_2
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    if-eqz v0, :cond_3

    .line 1385
    const-string v0, "username"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v0, "password"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1389
    const-string v0, "machine_managed"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1391
    const-string v0, "soft_tokenapp"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string v0, "abletoshare"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-boolean v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1395
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    if-eqz v0, :cond_3

    .line 1396
    const-string v0, "inner_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    const-string v0, "inner_method"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v0, "inner_vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1402
    const-string v0, "inner_vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1404
    const-string v0, "vendor_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1406
    const-string v0, "vendor_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1408
    const-string v0, "eap_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1412
    :cond_3
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    if-eqz v0, :cond_4

    .line 1413
    const-string v0, "certificate_type"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    const-string v0, "cert_sha256_finger_print"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    const-string v0, "cert_id"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    const-string v0, "private_key_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    const-string v0, "client_cert_hash"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    :cond_4
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    if-eqz v0, :cond_5

    .line 1425
    const-string v0, "sim_eaptype"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    const-string v0, "imsi"

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    iget-object v5, v5, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    invoke-virtual {v11, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    :cond_5
    const-string v3, "hotspot_id=?"

    .line 1429
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    .line 1432
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1434
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1436
    if-eqz v7, :cond_6

    .line 1437
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1438
    .local v6, "count":I
    if-nez v6, :cond_9

    .line 1439
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1440
    .local v9, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1450
    .end local v6    # "count":I
    .end local v9    # "newUri":Landroid/net/Uri;
    :cond_6
    :goto_1
    if-eqz v7, :cond_7

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1454
    :cond_7
    :goto_2
    return-void

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_8
    move v0, v2

    .line 1379
    goto/16 :goto_0

    .line 1442
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_9
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1444
    .local v10, "ret":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Credential"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1447
    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .line 1448
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1450
    if-eqz v7, :cond_7

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1450
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 1451
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0
.end method

.method private addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1498
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Adding HomeOI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1500
    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1501
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .line 1502
    .local v9, "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const-string v0, "server_homeoilist_id"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v0, "homeoi"

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    const-string v0, "homeoirequired"

    iget-boolean v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1506
    const-string v3, "hotspot_id=? AND server_homeoilist_id=?"

    .line 1508
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1511
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1513
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1515
    if-eqz v7, :cond_0

    .line 1516
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1517
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1518
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1520
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    .end local v6    # "count":I
    .end local v11    # "newUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1531
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1534
    :cond_1
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1522
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1524
    .local v12, "ret":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Home OI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1527
    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .line 1528
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1530
    if-eqz v7, :cond_1

    .line 1531
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1530
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1531
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1537
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "homeOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 4
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/16 v1, 0x33

    .line 1275
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1276
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1277
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :cond_0
    :goto_0
    return v1

    .line 1280
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1282
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "addMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1287
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1289
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1290
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1292
    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1293
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1295
    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    .line 1296
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1299
    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1301
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1306
    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1309
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    .line 1304
    :cond_7
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "addMO: HomeSP is coming NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1540
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Adding Network ID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1542
    .local v13, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1543
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .line 1544
    .local v10, "networkID":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    const-string v0, "server_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v0, "ssid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    const-string v0, "hessid"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    const-string v3, "hotspot_id=? AND server_network_id=?"

    .line 1550
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1553
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1555
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1557
    if-eqz v7, :cond_0

    .line 1558
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1559
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1560
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1563
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1574
    .end local v6    # "count":I
    .end local v11    # "newUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1575
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1578
    :cond_1
    :goto_2
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1565
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1568
    .local v12, "ret":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for Network ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1571
    .end local v6    # "count":I
    .end local v12    # "ret":I
    :catch_0
    move-exception v8

    .line 1572
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1574
    if-eqz v7, :cond_1

    .line 1575
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1574
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1575
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1581
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "networkID":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :cond_4
    return-void
.end method

.method private addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1457
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Adding Other HomeOi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1459
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1460
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .line 1461
    .local v10, "otherHomePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    const-string v0, "server_otherhome_network_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v0, "fqdn"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    const-string v3, "hotspot_id=? AND server_otherhome_network_id=?"

    .line 1467
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1470
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1472
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1475
    if-eqz v7, :cond_0

    .line 1476
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1477
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    .end local v6    # "count":I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1492
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1481
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1485
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1486
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1488
    if-eqz v7, :cond_1

    .line 1489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1488
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1489
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1495
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "otherHomePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    :cond_4
    return-void
.end method

.method private addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1642
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Adding AAA Trustroot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1644
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1645
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .line 1646
    .local v6, "aaaServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    const-string v0, "server_trustroot_id"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const-string v0, "certurl"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    const-string v3, "hotspot_id=? AND server_trustroot_id=?"

    .line 1655
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1658
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1660
    .local v8, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1662
    if-eqz v8, :cond_0

    .line 1663
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1664
    .local v7, "count":I
    if-nez v7, :cond_2

    .line 1665
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1667
    .local v11, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    .end local v7    # "count":I
    .end local v11    # "newUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    .line 1677
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1680
    :cond_1
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1669
    .restart local v7    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1673
    .end local v7    # "count":I
    :catch_0
    move-exception v9

    .line 1674
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1676
    if-eqz v8, :cond_1

    .line 1677
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1676
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1677
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1683
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "aaaServerTrustRoot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .end local v8    # "cur":Landroid/database/Cursor;
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1313
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1314
    .local v11, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_2

    .line 1315
    const-string v0, "fqdn"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const-string v0, "ppsmo_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: ppsmo.updateIdentifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_0

    .line 1319
    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1323
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_1

    .line 1324
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: URI for FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1326
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1365
    .end local v10    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    .line 1328
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1332
    .end local v10    # "uri":Landroid/net/Uri;
    :cond_2
    const-string v3, "fqdn=? AND ppsmo_id=?"

    .line 1334
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1337
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1339
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1341
    if-eqz v7, :cond_5

    .line 1342
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1343
    .local v6, "count":I
    if-eqz v6, :cond_3

    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    .line 1344
    :cond_3
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1347
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 1349
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1350
    iget v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    if-lez v0, :cond_5

    .line 1351
    const-string v0, "update_identifier"

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1352
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1354
    .local v9, "ret":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN updation status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    .end local v6    # "count":I
    .end local v9    # "ret":I
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    .line 1357
    :catch_0
    move-exception v8

    .line 1358
    .local v8, "e":Ljava/lang/Exception;
    if-eqz v7, :cond_6

    .line 1359
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1361
    :cond_6
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToFQDN: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z
    .locals 6
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .param p2, "typeOfOperation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1912
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1913
    .local v2, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_0

    .line 1914
    const-string v3, "hotspot_id"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_0
    const-string v3, "subscription_priority"

    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1919
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    if-eqz v3, :cond_1

    .line 1920
    const-string v3, "uri"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v3, :cond_1

    .line 1922
    const-string v3, "certurl"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string v3, "cert_sha256_finger_print"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    :cond_1
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    if-eqz v3, :cond_2

    .line 1930
    const-string v3, "creation_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    const-string v3, "expiration_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    const-string v3, "type_of_subscription"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v3, v3, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    if-eqz v3, :cond_2

    .line 1937
    const-string v3, "start_date"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    const-string v3, "date_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1941
    const-string v3, "time_limit"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1943
    const-string v3, "usage_interval"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    iget v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1948
    :cond_2
    iget-object v3, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v3, :cond_3

    .line 1949
    const-string v3, "fqdn"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v3, "friendly_name"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v3, "icon_url"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    const-string v3, "roamingconsortiumoi"

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    iget-object v4, v4, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    :cond_3
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_ADD_OPERATION:I

    if-ne p2, v3, :cond_5

    .line 1956
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1965
    :cond_4
    :goto_0
    return v5

    .line 1957
    :cond_5
    iget v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->HS20_DB_UPDATE_OPERATION:I

    if-ne p2, v3, :cond_4

    .line 1958
    const-string v0, "hotspot_id=?"

    .line 1959
    .local v0, "selection":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v4, v1, v3

    .line 1962
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1821
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1822
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1823
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    .line 1824
    .local v10, "minBackHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    const-string v0, "server_backhaul_threshold_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const-string v0, "dlbandwidh"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1829
    const-string v0, "network_type"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    const-string v0, "ulbandwidth"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    const-string v3, "hotspot_id=? AND server_backhaul_threshold_id=?"

    .line 1837
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1840
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1842
    .local v6, "backHaulCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1845
    if-eqz v6, :cond_0

    .line 1846
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1847
    .local v7, "count":I
    if-nez v7, :cond_2

    .line 1848
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1858
    .end local v7    # "count":I
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1862
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1851
    .restart local v7    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1855
    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .line 1856
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1858
    if-eqz v6, :cond_1

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1858
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1865
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "backHaulCur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "minBackHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_4
    return-void
.end method

.method private addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1686
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1687
    .local v9, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    if-eqz v0, :cond_4

    .line 1688
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1690
    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-wide v10, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1696
    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    .line 1701
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1706
    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    .line 1707
    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 1714
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    const-string v1, "0"

    aput-object v1, v4, v0

    .line 1717
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1719
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1721
    if-eqz v7, :cond_2

    .line 1722
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1723
    .local v6, "count":I
    if-nez v6, :cond_5

    .line 1724
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1734
    .end local v6    # "count":I
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 1735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1738
    :cond_3
    :goto_1
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1740
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    :cond_4
    return-void

    .line 1727
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v7    # "cur":Landroid/database/Cursor;
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1731
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1732
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1734
    if-eqz v7, :cond_3

    .line 1735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1734
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1735
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1743
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1744
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1745
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    .line 1746
    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v0, "server_tupple_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v0, "ip_protocol"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1750
    const-string v0, "port_number"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1751
    const-string v3, "hotspot_id=? AND server_tupple_id=?"

    .line 1753
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1756
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1758
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1760
    if-eqz v7, :cond_0

    .line 1761
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1762
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1763
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    .end local v6    # "count":I
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1773
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1776
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1765
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1769
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1770
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1772
    if-eqz v7, :cond_1

    .line 1773
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1772
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1773
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1779
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_4
    return-void
.end method

.method private addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1782
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1783
    .local v12, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1784
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    .line 1785
    .local v11, "spexclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v0, "server_spexclusion_id"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    const-string v0, "ssid"

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    const-string v3, "hotspot_id=? AND server_spexclusion_id=?"

    .line 1790
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1793
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1795
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1797
    if-eqz v7, :cond_0

    .line 1798
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1799
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1800
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1802
    .local v10, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1811
    .end local v6    # "count":I
    .end local v10    # "newUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 1812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_1
    :goto_2
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1804
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1808
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 1809
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1811
    if-eqz v7, :cond_1

    .line 1812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1811
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 1812
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1818
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "spexclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_4
    return-void
.end method

.method private addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 14
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1584
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1585
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1586
    const-string v0, "type_of_node"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1587
    const-string v0, "other"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    const-string v0, "restriction"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    const-string v0, "update_interval"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-wide v12, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1592
    const-string v0, "update_method"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1594
    const-string v0, "uri"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    if-eqz v0, :cond_0

    .line 1596
    const-string v0, "username"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v0, "password"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1601
    :cond_0
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    if-eqz v0, :cond_1

    .line 1602
    const-string v0, "certurl"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string v0, "cert_sha256_finger_print"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    iget-object v1, v1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 1609
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v2

    .line 1612
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1614
    .local v7, "cur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1617
    if-eqz v7, :cond_2

    .line 1618
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1619
    .local v6, "count":I
    if-nez v6, :cond_4

    .line 1620
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 1623
    .local v9, "newUri":Landroid/net/Uri;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    .end local v6    # "count":I
    .end local v9    # "newUri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 1635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1638
    :cond_3
    :goto_1
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 1639
    return-void

    .line 1625
    .restart local v6    # "count":I
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1628
    .local v10, "ret":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating the values for subscription update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1631
    .end local v6    # "count":I
    .end local v10    # "ret":I
    :catch_0
    move-exception v8

    .line 1632
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1634
    if-eqz v7, :cond_3

    .line 1635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1634
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1635
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1868
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1869
    .local v11, "values":Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 1870
    iget-object v0, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    iget-object v0, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    .line 1871
    .local v10, "preferredroamin":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "hotspot_id"

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    const-string v0, "country"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    const-string v0, "fqdn_match"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    const-string v0, "priority"

    iget v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    const-string v0, "server_roaming_partner_id"

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v3, "hotspot_id=? AND server_roaming_partner_id=?"

    .line 1882
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget-object v1, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    aput-object v1, v4, v0

    .line 1885
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1887
    .local v9, "prefCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1889
    if-eqz v9, :cond_0

    .line 1890
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1891
    .local v6, "count":I
    if-nez v6, :cond_2

    .line 1892
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    .end local v6    # "count":I
    :cond_0
    :goto_1
    if-eqz v9, :cond_1

    .line 1903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1906
    :cond_1
    :goto_2
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1895
    .restart local v6    # "count":I
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1899
    .end local v6    # "count":I
    :catch_0
    move-exception v7

    .line 1900
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1902
    if-eqz v9, :cond_1

    .line 1903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1902
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 1903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1909
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "prefCur":Landroid/database/Cursor;
    .end local v10    # "preferredroamin":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_4
    return-void
.end method

.method private getPpsMoID(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 2156
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPpsMoID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v3, "hotspot_id=?"

    .line 2158
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2161
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v9, ""

    .line 2162
    .local v9, "ppsMoID":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2164
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2166
    if-eqz v7, :cond_1

    .line 2167
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2168
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_3

    .line 2169
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2170
    const/4 v9, 0x0

    .line 2180
    .end local v6    # "count":I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 2181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2184
    :cond_2
    :goto_1
    return-object v9

    .line 2172
    .restart local v6    # "count":I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2173
    const-string v0, "ppsmo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 2176
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2177
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPpsMoID: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2178
    const/4 v9, 0x0

    .line 2180
    if-eqz v7, :cond_2

    .line 2181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2180
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2181
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getSPExclusionList(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    if-nez p2, :cond_1

    .line 282
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSPExclusionList: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 284
    if-nez p2, :cond_1

    .line 285
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSPExclusionList: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v11, 0x0

    .line 325
    :cond_0
    :goto_0
    return-object v11

    .line 289
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 290
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 293
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 294
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 296
    .local v11, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 297
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 298
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSPExclusionList: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v7, :cond_3

    .line 300
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :cond_3
    const/4 v11, 0x0

    .line 321
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    if-eqz v7, :cond_0

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 304
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 305
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 306
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .local v12, "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 308
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;-><init>()V

    .line 309
    .local v10, "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    const-string v0, "server_spexclusion_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->id:Ljava/lang/String;

    .line 311
    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;->ssid:Ljava/lang/String;

    .line 313
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 321
    .end local v10    # "spExclusion":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;
    :cond_5
    if-eqz v7, :cond_7

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_0

    .line 316
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 317
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSPExclusionList: Exception Occurred, setting Exclusion List to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    const/4 v11, 0x0

    .line 321
    if-eqz v7, :cond_0

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 321
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 322
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 321
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_3

    .line 316
    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto :goto_2

    .end local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    .restart local v11    # "spExclusionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;>;"
    goto/16 :goto_0
.end method

.method private getUpdateIdentifier(Ljava/lang/String;)I
    .locals 11
    .param p1, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 2224
    const-string v3, "hotspot_id=?"

    .line 2225
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2229
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2231
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2233
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2234
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_1

    .line 2235
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2247
    .end local v6    # "count":I
    :goto_0
    return v9

    .line 2238
    .restart local v6    # "count":I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2239
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2246
    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2242
    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

    .line 2243
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateIdentifier:FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 4
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/16 v1, 0x33

    .line 1231
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToFQDN(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1232
    .local v0, "ret":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1233
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :cond_0
    :goto_0
    return v1

    .line 1236
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToHotspot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1238
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: Failed to add the PPSMO"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_2
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    if-eqz v2, :cond_3

    .line 1242
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "policy object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addtoPreferredRoamingPartner(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1244
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToMinBackHaulThreshold(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSPExclusionList(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToRequiredProtoPortTupple(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1247
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToPolicyUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1249
    :cond_3
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1250
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: aaaServerTrustRootObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToAAAServerTrustRoot(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1253
    :cond_4
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    if-eqz v2, :cond_5

    .line 1254
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: subscriptionUpdate object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addToSubscriptionUpdate(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1258
    :cond_5
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    if-eqz v2, :cond_7

    .line 1259
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: homeSPObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addNetworkID(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1261
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1262
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addOtherHomeOi(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1266
    :goto_1
    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    if-eqz v2, :cond_6

    .line 1267
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: credentialObj object not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addCredential(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)V

    .line 1270
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x32

    goto :goto_0

    .line 1264
    :cond_7
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "updateMO: HomeSP is coming NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addPPSMONode(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 13
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .prologue
    const/4 v12, 0x1

    .line 1035
    const/16 v10, 0x32

    .line 1036
    .local v10, "retVal":I
    const/4 v7, 0x0

    .line 1038
    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 1039
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONode: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v1, 0x33

    .line 1083
    :cond_0
    :goto_0
    return v1

    .line 1043
    :cond_1
    :try_start_0
    const-string v1, "WifiHs20DBHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPPSMONode: Nppsmo.ppsMoId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Fqdn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Action"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 1046
    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .line 1048
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 1051
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1052
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1054
    if-nez v7, :cond_2

    .line 1055
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONode: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    const/16 v1, 0x3b

    .line 1079
    if-eqz v7, :cond_0

    .line 1080
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1058
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1059
    .local v6, "count":I
    if-nez v6, :cond_4

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_4

    .line 1060
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1079
    :goto_1
    if-eqz v7, :cond_3

    .line 1080
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :cond_3
    :goto_2
    move v1, v10

    .line 1083
    goto :goto_0

    .line 1061
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v9    # "ppsMoId":Ljava/lang/String;
    :cond_4
    if-ne v6, v12, :cond_5

    :try_start_2
    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-nez v1, :cond_5

    .line 1062
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    const-string v2, "Already Subscribed. Clear Cred to subscribe again"

    const/4 v5, 0x1

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1064
    .local v11, "toast":Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 1065
    const/16 v10, 0x35

    .line 1066
    goto :goto_1

    .end local v11    # "toast":Landroid/widget/Toast;
    :cond_5
    if-ne v6, v12, :cond_6

    iget v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    if-ne v1, v12, :cond_6

    .line 1067
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1068
    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    .line 1072
    :cond_6
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONode: The same entry already exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    const/16 v10, 0x35

    goto :goto_1

    .line 1075
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1076
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1077
    const/16 v10, 0x35

    .line 1079
    if-eqz v7, :cond_3

    .line 1080
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1079
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_7

    .line 1080
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method

.method public addPPSMONodeFromCred(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    .locals 12
    .param p1, "ppsmo"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    .prologue
    const/4 v11, 0x1

    .line 1087
    const/16 v10, 0x32

    .line 1088
    .local v10, "retVal":I
    const/4 v7, 0x0

    .line 1090
    .local v7, "dbCur":Landroid/database/Cursor;
    if-nez p1, :cond_1

    .line 1091
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONodeFromCred: Not a valid PPSMO"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const/16 v1, 0x33

    .line 1130
    :cond_0
    :goto_0
    return v1

    .line 1095
    :cond_1
    :try_start_0
    const-string v1, "WifiHs20DBHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPPSMONodeFromCred: Nppsmo.ppsMoId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Fqdn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Action"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->action:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 1098
    .local v9, "ppsMoId":Ljava/lang/String;
    const-string v3, "ppsmo_id=? AND fqdn=?"

    .line 1100
    .local v3, "selection":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v9, v4, v1

    const/4 v1, 0x1

    iget-object v2, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->fqdn:Ljava/lang/String;

    aput-object v2, v4, v1

    .line 1103
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1104
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1106
    if-nez v7, :cond_2

    .line 1107
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONodeFromCred: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    const/16 v1, 0x3b

    .line 1126
    if-eqz v7, :cond_0

    .line 1127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1110
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1111
    .local v6, "count":I
    if-nez v6, :cond_4

    .line 1112
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->addMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 1126
    :goto_1
    if-eqz v7, :cond_3

    .line 1127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :cond_3
    :goto_2
    move v1, v10

    .line 1130
    goto :goto_0

    .line 1113
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v9    # "ppsMoId":Ljava/lang/String;
    :cond_4
    if-ne v6, v11, :cond_5

    .line 1114
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1115
    const-string v1, "hotspot_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->updateMO(Lcom/android/server/wifi/hs20/WifiHs20PPSMO;)I

    move-result v10

    goto :goto_1

    .line 1119
    :cond_5
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "addPPSMONodeFromCred: More than one entry exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1120
    const/16 v10, 0x33

    goto :goto_1

    .line 1122
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v9    # "ppsMoId":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1123
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1124
    const/16 v10, 0x33

    .line 1126
    if-eqz v7, :cond_3

    .line 1127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1126
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 1127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method public addToSpIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "hash"    # Ljava/lang/String;

    .prologue
    .line 2026
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2027
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "sp_icon_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    const-string v2, "sp_icon_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    const-string v2, "sp_icon_hash"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2031
    .local v0, "newUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 2032
    const-string v2, "WifiHs20DBHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "URI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/4 v2, 0x1

    .line 2035
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteSubscription(I)V
    .locals 4
    .param p1, "hotspotID"    # I

    .prologue
    .line 1164
    const-string v1, "hotspot_id=?"

    .line 1165
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1168
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1169
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1170
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1171
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1172
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1173
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1174
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1175
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1176
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1177
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1178
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1179
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1180
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1181
    iget-object v2, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1182
    return-void
.end method

.method public deleteTheContents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1134
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1135
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1137
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1138
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1139
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1140
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1141
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1142
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1143
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1145
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1146
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1148
    return-void
.end method

.method public deleteppsMO(I)V
    .locals 4
    .param p1, "credentialID"    # I

    .prologue
    .line 1151
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v1

    .line 1152
    .local v1, "hotspotID":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1153
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "Entry doesn\'t exists "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_0
    return-void

    .line 1157
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->deleteSubscription(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiHs20DBHandler"

    const-string v3, "Exception occurred [FATAL]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableSubscription(IZ)Z
    .locals 12
    .param p1, "hotspotID"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 1185
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .local v10, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    const-string v0, "=?"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1189
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1192
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1194
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1196
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1197
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    if-eqz v7, :cond_1

    .line 1199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    :cond_1
    const/4 v0, 0x0

    .line 1216
    if-eqz v7, :cond_2

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1226
    :cond_2
    :goto_0
    return v0

    .line 1203
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 1204
    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_4

    .line 1205
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHotspotId: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1207
    const/4 v0, 0x0

    .line 1216
    if-eqz v7, :cond_2

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1216
    :cond_4
    if-eqz v7, :cond_5

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1220
    :cond_5
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1221
    .local v11, "values":Landroid/content/ContentValues;
    const-string v1, "enable_subscr"

    if-eqz p2, :cond_8

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1222
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1223
    .local v9, "status":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_9

    .line 1224
    const/4 v0, 0x1

    goto :goto_0

    .line 1209
    .end local v6    # "count":I
    .end local v9    # "status":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 1210
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1211
    if-eqz v7, :cond_6

    .line 1212
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1214
    :cond_6
    const/4 v0, 0x0

    .line 1216
    if-eqz v7, :cond_2

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1216
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 1217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 1221
    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 1226
    .restart local v9    # "status":I
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 94
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getAAATrustRoot: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 96
    if-nez p2, :cond_1

    .line 97
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getAAATrustRoot: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v7, 0x0

    .line 144
    :cond_0
    :goto_0
    return-object v7

    .line 101
    :cond_1
    const-string v3, ""

    .line 102
    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 103
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 106
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 107
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 109
    .local v7, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 110
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 111
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getAAATrustRoot: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v10, :cond_3

    .line 113
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_3
    const/4 v7, 0x0

    .line 140
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    if-eqz v10, :cond_0

    .line 141
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 117
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 118
    .local v9, "count":I
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAAATrust root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 120
    const/4 v6, 0x0

    .line 121
    .local v6, "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .local v8, "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    .line 123
    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;

    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;-><init>()V

    .line 124
    .restart local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    const-string v0, "server_trustroot_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootID:Ljava/lang/String;

    .line 127
    const-string v0, "certurl"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->trustRootURL:Ljava/lang/String;

    .line 130
    const-string v0, "cert_sha256_finger_print"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 133
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 140
    :cond_5
    if-eqz v10, :cond_7

    .line 141
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto/16 :goto_0

    .line 136
    .end local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .line 137
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    const/4 v7, 0x0

    .line 140
    if-eqz v10, :cond_0

    .line 141
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 140
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 141
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 140
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto :goto_3

    .line 136
    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto :goto_2

    .end local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v6    # "aaaserverTrust":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;
    .restart local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    :cond_7
    move-object v7, v8

    .end local v8    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    .restart local v7    # "aaaserverTrustRootList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;>;"
    goto/16 :goto_0
.end method

.method public getCredentialId(I)I
    .locals 11
    .param p1, "hsId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2889
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCredentialId: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    const-string v3, "hotspot_id=?"

    .line 2891
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    .line 2894
    .local v4, "selectArgs":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "credential_id"

    aput-object v0, v2, v10

    .line 2897
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, -0x1

    .line 2898
    .local v6, "credId":I
    const/4 v7, 0x0

    .line 2900
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2902
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v0, v9, :cond_3

    .line 2903
    :cond_0
    if-eqz v7, :cond_1

    .line 2904
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    :cond_1
    const/4 v0, -0x1

    .line 2915
    if-eqz v7, :cond_2

    .line 2916
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2919
    :cond_2
    :goto_0
    return v0

    .line 2908
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2909
    const-string v0, "credential_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2911
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2915
    if-eqz v7, :cond_4

    .line 2916
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move v0, v6

    .line 2919
    goto :goto_0

    .line 2912
    :catch_0
    move-exception v8

    .line 2913
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2915
    if-eqz v7, :cond_4

    .line 2916
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2915
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2916
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getCredentialIds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2570
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getCredentialIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "credential_id"

    aput-object v1, v2, v0

    .line 2574
    .local v2, "projection":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2575
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2577
    .local v7, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2579
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2580
    :cond_0
    if-eqz v10, :cond_1

    .line 2581
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    :cond_1
    if-eqz v10, :cond_2

    .line 2601
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    .line 2604
    :goto_0
    return-object v0

    .line 2585
    :cond_3
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2586
    .local v6, "count":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2587
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v8, "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2588
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    .line 2589
    const-string v0, "credential_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2592
    .local v9, "credentialID":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2593
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 2588
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2595
    .end local v9    # "credentialID":I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2600
    if-eqz v10, :cond_7

    .line 2601
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v6    # "count":I
    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v7

    .line 2604
    goto :goto_0

    .line 2596
    :catch_0
    move-exception v11

    .line 2597
    .local v11, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2598
    const/4 v7, 0x0

    .line 2600
    if-eqz v10, :cond_5

    .line 2601
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2600
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v10, :cond_6

    .line 2601
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2600
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 2596
    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "i":I
    :cond_7
    move-object v7, v8

    .end local v8    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "credIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public getDigitalCertificateInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 825
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;-><init>()V

    .line 826
    .local v0, "digitalCert":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;
    const-string v1, "certificate_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certificateType:Ljava/lang/String;

    .line 828
    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certSHA256FingerPrint:Ljava/lang/String;

    .line 830
    const-string v1, "cert_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->certID:I

    .line 831
    const-string v1, "client_cert_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->clientcertHash:Ljava/lang/String;

    .line 833
    const-string v1, "private_key_hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;->privateKeyHash:Ljava/lang/String;

    .line 835
    return-object v0
.end method

.method public getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 858
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;-><init>()V

    .line 859
    .local v0, "eapMethod":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    const-string v1, "eap_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->eapType:I

    .line 860
    const-string v1, "inner_method"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerMethod:Ljava/lang/String;

    .line 862
    const-string v1, "inner_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerEAPType:Ljava/lang/String;

    .line 864
    const-string v1, "inner_vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorID:I

    .line 866
    const-string v1, "inner_vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->innerVendorType:I

    .line 868
    const-string v1, "vendor_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorID:I

    .line 870
    const-string v1, "vendor_type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;->vendorType:I

    .line 872
    return-object v0
.end method

.method public getEnableSubscription(I)Z
    .locals 12
    .param p1, "hotspotID"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2188
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getEnableSubscription"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-string v3, "hotspot_id=?"

    .line 2190
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 2193
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x1

    .line 2194
    .local v9, "enableSubscription":Z
    const/4 v7, 0x0

    .line 2196
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2198
    if-eqz v7, :cond_1

    .line 2199
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2200
    .local v6, "count":I
    if-eqz v6, :cond_0

    if-le v6, v10, :cond_3

    .line 2201
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableSubscription : FQDN entry doesnt exists/ More than one entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    const/4 v9, 0x0

    .line 2216
    .end local v6    # "count":I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 2217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2220
    :cond_2
    :goto_1
    return v9

    .line 2206
    .restart local v6    # "count":I
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2207
    const-string v0, "enable_subscr"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_4

    move v9, v10

    :goto_2
    goto :goto_0

    :cond_4
    move v9, v11

    goto :goto_2

    .line 2212
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2213
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnableSubscription: FQDN exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2214
    const/4 v9, 0x0

    .line 2216
    if-eqz v7, :cond_2

    .line 2217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2216
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 2217
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getFqdn(I)Ljava/lang/String;
    .locals 14
    .param p1, "credentialID"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v10

    .line 696
    .local v10, "hotspotID":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 697
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v12

    .line 737
    :cond_0
    :goto_0
    return-object v9

    .line 700
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    .local v11, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "hotspot_id"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v13, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 707
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 708
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 710
    .local v9, "fqdn":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 712
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 713
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getFqdn: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    if-eqz v7, :cond_3

    .line 715
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    :cond_3
    if-eqz v7, :cond_4

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v12

    goto :goto_0

    .line 719
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 720
    .local v6, "count":I
    if-le v6, v13, :cond_7

    .line 721
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getFqdn: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    if-eqz v7, :cond_6

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v12

    goto :goto_0

    .line 725
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 726
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 727
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFqdn:FQDN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 733
    if-eqz v7, :cond_0

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 728
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 729
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 730
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occurred, Setting fqdn to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 731
    const/4 v9, 0x0

    .line 733
    if-eqz v7, :cond_0

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 733
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 734
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getHomeOInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2425
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeOInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    if-nez p2, :cond_1

    .line 2427
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2428
    if-nez p2, :cond_1

    .line 2429
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeOInfo:Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    const/4 v10, 0x0

    .line 2475
    :cond_0
    :goto_0
    return-object v10

    .line 2433
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2434
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2437
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2438
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 2440
    .local v10, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2442
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2443
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeOInfo :Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    if-eqz v7, :cond_3

    .line 2445
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2447
    :cond_3
    const/4 v10, 0x0

    .line 2471
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    if-eqz v7, :cond_0

    .line 2472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2449
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2450
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2451
    const/4 v9, 0x0

    .line 2452
    .local v9, "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2453
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .local v11, "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_6

    .line 2454
    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;

    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;-><init>()V

    .line 2455
    .restart local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    const-string v0, "server_homeoilist_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOiID:Ljava/lang/String;

    .line 2458
    const-string v0, "homeoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOI:Ljava/lang/String;

    .line 2460
    const-string v0, "homeoirequired"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;->homeOIRequired:Z

    .line 2463
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2453
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2460
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 2466
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2471
    if-eqz v7, :cond_8

    .line 2472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto/16 :goto_0

    .line 2467
    .end local v6    # "count":I
    .end local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .end local v12    # "i":I
    :catch_0
    move-exception v8

    .line 2468
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2469
    const/4 v10, 0x0

    .line 2471
    if-eqz v7, :cond_0

    .line 2472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2471
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_7

    .line 2472
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 2471
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v6    # "count":I
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto :goto_4

    .line 2467
    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto :goto_3

    .end local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v9    # "homeSPOI":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;
    .restart local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    :cond_8
    move-object v10, v11

    .end local v11    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    .restart local v10    # "homeSPOIList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;>;"
    goto/16 :goto_0
.end method

.method public getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2256
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeSPInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    if-nez p2, :cond_1

    .line 2258
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2259
    if-nez p2, :cond_1

    .line 2260
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeSPInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 2307
    :cond_0
    :goto_0
    return-object v9

    .line 2264
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2265
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2268
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2269
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2271
    .local v9, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2273
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2274
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeSPInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    if-eqz v7, :cond_3

    .line 2276
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    :cond_3
    if-eqz v7, :cond_4

    .line 2304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 2280
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2281
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2282
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHomeSPInfo: More than 1 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2303
    if-eqz v7, :cond_6

    .line 2304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 2286
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2287
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2288
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .local v10, "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :try_start_3
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->fqdn:Ljava/lang/String;

    .line 2290
    const-string v0, "friendly_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->friendlyName:Ljava/lang/String;

    .line 2292
    const-string v0, "icon_url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->iconURL:Ljava/lang/String;

    .line 2294
    const-string v0, "roamingconsortiumoi"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->roamingConsortium:Ljava/lang/String;

    .line 2296
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeOInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->homeOIList:Ljava/util/List;

    .line 2297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getNetworkIDInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->networkIDList:Ljava/util/List;

    .line 2298
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getOtherHomePartner(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;->otherHomePartner:Ljava/util/List;

    .line 2299
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2303
    if-eqz v7, :cond_9

    .line 2304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto/16 :goto_0

    .line 2300
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2301
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2303
    if-eqz v7, :cond_0

    .line 2304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2303
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 2304
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2303
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v6    # "count":I
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto :goto_2

    .line 2300
    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto :goto_1

    .end local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    :cond_9
    move-object v9, v10

    .end local v10    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    .restart local v9    # "homeSP":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;
    goto/16 :goto_0
.end method

.method public getHotspotID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "ppsmoID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    .line 2923
    const-string v3, "fqdn=? AND ppsmo_id=?"

    .line 2925
    .local v3, "selection":Ljava/lang/String;
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotID : fqdn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PPSMO ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    aput-object p2, v4, v12

    .line 2929
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 2930
    .local v10, "id":I
    const/4 v7, 0x0

    .line 2931
    .local v7, "cr":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2933
    .local v9, "hotspotID":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2935
    if-eqz v7, :cond_0

    .line 2936
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2937
    .local v6, "count":I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2938
    .local v11, "values":Landroid/content/ContentValues;
    if-nez v6, :cond_2

    .line 2939
    move v9, v6

    .line 2949
    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 2950
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2953
    :cond_1
    :goto_1
    return v9

    .line 2940
    .restart local v6    # "count":I
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_2
    if-ne v6, v12, :cond_0

    .line 2941
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2942
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 2943
    move v9, v10

    goto :goto_0

    .line 2946
    .end local v6    # "count":I
    .end local v11    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 2947
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotID: Exception occured :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2949
    if-eqz v7, :cond_1

    .line 2950
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2949
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2950
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getHotspotId(I)Ljava/lang/String;
    .locals 11
    .param p1, "credentialID"    # I

    .prologue
    const/4 v10, 0x0

    .line 659
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 660
    .local v9, "stbuilder":Ljava/lang/StringBuilder;
    const-string v0, "credential_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    const-string v0, "=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 666
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 667
    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 669
    .local v8, "hotspotID":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 671
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 672
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHotspotId: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-eqz v6, :cond_1

    .line 674
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_1
    if-eqz v6, :cond_2

    .line 688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    .line 691
    :goto_0
    return-object v0

    .line 678
    :cond_3
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 679
    const-string v0, "hotspot_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 681
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHotspotId: Hotspot ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    if-eqz v6, :cond_4

    .line 688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v0, v8

    .line 691
    goto :goto_0

    .line 682
    :catch_0
    move-exception v7

    .line 683
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 684
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occurred, Setting hotspotID to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    const/4 v8, 0x0

    .line 687
    if-eqz v6, :cond_4

    .line 688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 687
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 688
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public getHotspotIds()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 2608
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHotspotIds"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "hotspot_id"

    aput-object v1, v2, v0

    .line 2612
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2613
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2615
    .local v9, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2617
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2618
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getHotspotIds:Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    if-eqz v7, :cond_1

    .line 2620
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2638
    :cond_1
    if-eqz v7, :cond_2

    .line 2639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v13

    .line 2642
    :goto_0
    return-object v0

    .line 2624
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2625
    .local v6, "count":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2626
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v10, "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2627
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_4

    .line 2628
    const-string v0, "hotspot_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2630
    .local v11, "hotspotId":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2631
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2627
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2633
    .end local v11    # "hotspotId":I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2638
    if-eqz v7, :cond_7

    .line 2639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v6    # "count":I
    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "i":I
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_5
    :goto_2
    move-object v0, v9

    .line 2642
    goto :goto_0

    .line 2634
    :catch_0
    move-exception v8

    .line 2635
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2636
    const/4 v9, 0x0

    .line 2638
    if-eqz v7, :cond_5

    .line 2639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2638
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    .line 2639
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2638
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v6    # "count":I
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_4

    .line 2634
    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_3

    .end local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "i":I
    :cond_7
    move-object v9, v10

    .end local v10    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "hotspotIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    goto :goto_2
.end method

.method public getMethodType(I)I
    .locals 12
    .param p1, "credentialID"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, -0x1

    .line 2533
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getMethodType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const-string v3, "credential_id=?"

    .line 2535
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2538
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, -0x1

    .line 2539
    .local v9, "methodType":I
    const/4 v7, 0x0

    .line 2541
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2543
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2544
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getMethodType: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    if-eqz v7, :cond_1

    .line 2546
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2562
    :cond_1
    if-eqz v7, :cond_2

    .line 2563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    .line 2566
    :goto_0
    return v0

    .line 2550
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2551
    .local v6, "count":I
    if-le v6, v11, :cond_5

    .line 2552
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2562
    if-eqz v7, :cond_4

    .line 2563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    .line 2555
    :cond_5
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2556
    const-string v0, "method_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2558
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2562
    if-eqz v7, :cond_6

    .line 2563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_6
    :goto_1
    move v0, v9

    .line 2566
    goto :goto_0

    .line 2559
    :catch_0
    move-exception v8

    .line 2560
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2562
    if-eqz v7, :cond_6

    .line 2563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2562
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_7

    .line 2563
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public getMinBackHaulThresholdInfo(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    if-nez p2, :cond_1

    .line 606
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 608
    if-nez p2, :cond_1

    .line 609
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v7, 0x0

    .line 655
    :cond_0
    :goto_0
    return-object v7

    .line 613
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 614
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 617
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 618
    .local v10, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 620
    .local v7, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 622
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 623
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getMinBackHaulThresholdInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-eqz v10, :cond_3

    .line 625
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :cond_3
    const/4 v7, 0x0

    .line 651
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    if-eqz v10, :cond_0

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 629
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_4
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 630
    .local v9, "count":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 631
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .local v8, "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v9, :cond_5

    .line 634
    :try_start_2
    new-instance v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;

    invoke-direct {v6}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;-><init>()V

    .line 635
    .local v6, "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    const-string v0, "server_backhaul_threshold_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->minBackHaulThresholdID:Ljava/lang/String;

    .line 637
    const-string v0, "dlbandwidh"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->dlBandWidth:I

    .line 639
    const-string v0, "network_type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->networkType:Ljava/lang/String;

    .line 641
    const-string v0, "ulbandwidth"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;->ulBandWidth:I

    .line 643
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 633
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 651
    .end local v6    # "backHaulThreshold":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;
    :cond_5
    if-eqz v10, :cond_7

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto/16 :goto_0

    .line 646
    .end local v9    # "count":I
    .end local v12    # "i":I
    :catch_0
    move-exception v11

    .line 647
    .local v11, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occured, Setting backHaulThresholdList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 649
    const/4 v7, 0x0

    .line 651
    if-eqz v10, :cond_0

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 651
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v10, :cond_6

    .line 652
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 651
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v9    # "count":I
    .restart local v12    # "i":I
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto :goto_3

    .line 646
    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :catch_1
    move-exception v11

    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto :goto_2

    .end local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    :cond_7
    move-object v7, v8

    .end local v8    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    .restart local v7    # "backHaulThresholdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;>;"
    goto/16 :goto_0
.end method

.method public getNetworkIDInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2316
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getNetworkIDInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    if-nez p2, :cond_1

    .line 2318
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getNetworkIDInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2320
    if-nez p2, :cond_1

    .line 2321
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getNetworkIDInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    const/4 v11, 0x0

    .line 2365
    :cond_0
    :goto_0
    return-object v11

    .line 2325
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2326
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2329
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2331
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2333
    .local v11, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2335
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2336
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getNetworkIDInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    if-eqz v7, :cond_3

    .line 2338
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2340
    :cond_3
    const/4 v11, 0x0

    .line 2361
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    if-eqz v7, :cond_0

    .line 2362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2342
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2343
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2344
    const/4 v10, 0x0

    .line 2345
    .local v10, "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2346
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .local v12, "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 2347
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;

    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;-><init>()V

    .line 2348
    .restart local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    const-string v0, "server_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->networkID:Ljava/lang/String;

    .line 2350
    const-string v0, "ssid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->ssid:Ljava/lang/String;

    .line 2352
    const-string v0, "hessid"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;->hessid:Ljava/lang/String;

    .line 2354
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2355
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2346
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2357
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2361
    if-eqz v7, :cond_7

    .line 2362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_0

    .line 2358
    .end local v6    # "count":I
    .end local v9    # "i":I
    .end local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    :catch_0
    move-exception v8

    .line 2359
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2361
    if-eqz v7, :cond_0

    .line 2362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2361
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 2362
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2361
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_3

    .line 2358
    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto :goto_2

    .end local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v10    # "networkId":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;
    .restart local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    .restart local v11    # "networkIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;>;"
    goto/16 :goto_0
.end method

.method public getOtherHomePartner(ILjava/lang/String;)Ljava/util/List;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2369
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getOtherHomePartner"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    if-nez p2, :cond_1

    .line 2371
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getOtherHomePartner: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2373
    if-nez p2, :cond_1

    .line 2374
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getOtherHomePartner: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/4 v11, 0x0

    .line 2416
    :cond_0
    :goto_0
    return-object v11

    .line 2378
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2379
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2382
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2383
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2385
    .local v11, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2387
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 2388
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getOtherHomePartner: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    if-eqz v7, :cond_3

    .line 2390
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2392
    :cond_3
    const/4 v11, 0x0

    .line 2412
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    if-eqz v7, :cond_0

    .line 2413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2394
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2395
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2396
    const/4 v9, 0x0

    .line 2397
    .local v9, "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2398
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .local v12, "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_5

    .line 2399
    :try_start_2
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;

    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;-><init>()V

    .line 2400
    .restart local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    const-string v0, "server_otherhome_network_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->otherHomePartnerID:Ljava/lang/String;

    .line 2402
    const-string v0, "fqdn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;->fqdn:Ljava/lang/String;

    .line 2404
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2398
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2407
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2412
    if-eqz v7, :cond_7

    .line 2413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_0

    .line 2408
    .end local v6    # "count":I
    .end local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    .end local v10    # "i":I
    :catch_0
    move-exception v8

    .line 2409
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2410
    const/4 v11, 0x0

    .line 2412
    if-eqz v7, :cond_0

    .line 2413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2412
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 2413
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2412
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v6    # "count":I
    .restart local v10    # "i":I
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_3

    .line 2408
    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto :goto_2

    .end local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v9    # "homePartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;
    .restart local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    .restart local v11    # "otherHomePartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;>;"
    goto/16 :goto_0
.end method

.method public getPPSMONode(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 13
    .param p1, "credentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2044
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .line 2046
    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 2047
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2048
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 2095
    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .line 2051
    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2052
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2055
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2057
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2059
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2060
    :cond_2
    if-eqz v7, :cond_3

    .line 2061
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2091
    :cond_3
    if-eqz v7, :cond_4

    .line 2092
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 2065
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2066
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2067
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2091
    if-eqz v7, :cond_6

    .line 2092
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 2070
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2071
    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 2072
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 2073
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(Ljava/lang/String;)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 2074
    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    .line 2076
    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 2078
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    .line 2079
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 2080
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 2081
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 2082
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    .line 2084
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    .line 2086
    invoke-virtual {p0, p1, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2091
    if-eqz v7, :cond_0

    .line 2092
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2088
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2089
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2091
    if-eqz v7, :cond_0

    .line 2092
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2091
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 2092
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPPSMONodeHotspotID(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    .locals 13
    .param p1, "hotspotID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2103
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPPSMONode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;-><init>()V

    .line 2105
    .local v10, "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    if-gez p1, :cond_1

    .line 2106
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 2152
    .end local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_0
    :goto_0
    return-object v10

    .line 2109
    .restart local v10    # "ppsMO":Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 2110
    .local v9, "hsId":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 2111
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2114
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2116
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2118
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2119
    :cond_2
    if-eqz v7, :cond_3

    .line 2120
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    :cond_3
    if-eqz v7, :cond_4

    .line 2149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 2124
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2125
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    if-eqz v7, :cond_6

    .line 2149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 2129
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2130
    iput-object v9, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->hotspotID:Ljava/lang/String;

    .line 2131
    invoke-direct {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPpsMoID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->ppsMoId:Ljava/lang/String;

    .line 2132
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUpdateIdentifier(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->updateIdentifier:I

    .line 2133
    const-string v0, "subscription_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionPriority:I

    .line 2135
    const-string v0, "user_priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->userPriority:I

    .line 2137
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getAAATrustRoot(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->aaaServerTrustRootObj:Ljava/util/ArrayList;

    .line 2138
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    .line 2139
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHomeSPInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

    .line 2140
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    .line 2141
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    .line 2143
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    .line 2144
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO;->subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2148
    if-eqz v7, :cond_0

    .line 2149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2145
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2146
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2148
    if-eqz v7, :cond_0

    .line 2149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2148
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 2149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPolicyInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    .locals 12
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 226
    new-instance v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

    invoke-direct {v9}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;-><init>()V

    .line 227
    .local v9, "policy":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;
    if-nez p2, :cond_0

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 229
    if-nez p2, :cond_0

    .line 230
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 277
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const-string v3, "hotspot_id=?"

    .line 235
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v11, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 238
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 240
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 242
    :cond_1
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v7, :cond_2

    .line 244
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_2
    if-eqz v7, :cond_3

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v10

    goto :goto_0

    .line 248
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 249
    .local v6, "count":I
    if-le v6, v11, :cond_7

    .line 250
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v7, :cond_5

    .line 252
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :cond_5
    if-eqz v7, :cond_6

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v10

    goto :goto_0

    .line 256
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    const-string v0, "maximumbss_load_value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->maximumBSSLoadValue:I

    .line 260
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getMinBackHaulThresholdInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->minBackHaulThreshold:Ljava/util/ArrayList;

    .line 262
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPreferredRoamingPartnerInfo(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->preferredRoamingPartner:Ljava/util/ArrayList;

    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getProtoPortTupple(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->protoPortTupple:Ljava/util/ArrayList;

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->policyUpdateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSPExclusionList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;->spExclusionList:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    if-eqz v7, :cond_8

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_8
    :goto_1
    move-object v0, v9

    .line 277
    goto :goto_0

    .line 268
    :catch_0
    move-exception v8

    .line 269
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyInfo: Exception Occured, Setting Policy to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    const/4 v9, 0x0

    .line 273
    if-eqz v7, :cond_8

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 273
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public getPolicyURI(I)Ljava/lang/String;
    .locals 13
    .param p1, "credenentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 881
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 882
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyURI: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .line 921
    :cond_0
    :goto_0
    return-object v10

    .line 885
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 887
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .line 891
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 892
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 894
    .local v10, "policyURI":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 896
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 897
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyURI: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    if-eqz v7, :cond_3

    .line 899
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    :cond_3
    if-eqz v7, :cond_4

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v10, v11

    goto :goto_0

    .line 903
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 904
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 905
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyURI: More than 1entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 917
    if-eqz v7, :cond_6

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v10, v11

    goto :goto_0

    .line 909
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 910
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .line 917
    if-eqz v7, :cond_0

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 912
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 913
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 914
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception Occured, Setting policyURI to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 915
    const/4 v10, 0x0

    .line 917
    if-eqz v7, :cond_0

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 917
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    .line 918
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public getPolicyUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 334
    if-nez p2, :cond_1

    .line 335
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 337
    if-nez p2, :cond_1

    .line 338
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 394
    :cond_0
    :goto_0
    return-object v9

    .line 342
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 344
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "0"

    aput-object v0, v4, v12

    .line 347
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 348
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 350
    .local v9, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 352
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 353
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v7, :cond_3

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    :cond_3
    if-eqz v7, :cond_4

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 359
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 360
    .local v6, "count":I
    if-le v6, v12, :cond_8

    .line 361
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v7, :cond_6

    .line 363
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :cond_6
    if-eqz v7, :cond_7

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v11

    goto :goto_0

    .line 367
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .local v10, "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->other:Ljava/lang/String;

    .line 371
    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->restriction:Ljava/lang/String;

    .line 373
    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateInterval:J

    .line 375
    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->updateMethod:Ljava/lang/String;

    .line 377
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->uri:Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    .line 380
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    .line 382
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    .line 384
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    if-eqz v7, :cond_a

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto/16 :goto_0

    .line 385
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPolicyUpdateInfo: Exception occurred, Settings PolicyUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 388
    const/4 v9, 0x0

    .line 390
    if-eqz v7, :cond_0

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 390
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_9

    .line 391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    .line 390
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto :goto_2

    .line 385
    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto :goto_1

    .end local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    :cond_a
    move-object v9, v10

    .end local v10    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    .restart local v9    # "policyUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    goto/16 :goto_0
.end method

.method public getPreferredRoamingPartnerInfo(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    if-nez p2, :cond_1

    .line 541
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 543
    if-nez p2, :cond_1

    .line 544
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v11, 0x0

    .line 595
    :cond_0
    :goto_0
    return-object v11

    .line 548
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 549
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 552
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 553
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 555
    .local v11, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 557
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 558
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getPreferredRoamingPartnerInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v7, :cond_3

    .line 560
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_3
    const/4 v11, 0x0

    .line 591
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    if-eqz v7, :cond_0

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 564
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 565
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 566
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .local v12, "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 569
    :try_start_2
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;-><init>()V

    .line 571
    .local v10, "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    const-string v0, "server_roaming_partner_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->roamingPartnerID:Ljava/lang/String;

    .line 573
    const-string v0, "country"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    .line 575
    const-string v0, "fqdn_match"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    .line 577
    const-string v0, "priority"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    .line 579
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: Country"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "preferredRoamingPartner.fQDNMatch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->fQDNMatch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredRoamingPartnerInfo: preferredRoamingPartner.priority"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 568
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 591
    .end local v10    # "preferredRoamingPartner":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;
    :cond_5
    if-eqz v7, :cond_7

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto/16 :goto_0

    .line 586
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 587
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 588
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occurred, Setting preferredRoamingPartnerList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 589
    const/4 v11, 0x0

    .line 591
    if-eqz v7, :cond_0

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 591
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 591
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto :goto_3

    .line 586
    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto :goto_2

    .end local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    .restart local v11    # "preferredRoamingPartnerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;>;"
    goto/16 :goto_0
.end method

.method public getProtoPortTupple(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;",
            ">;"
        }
    .end annotation

    .prologue
    .line 483
    if-nez p2, :cond_1

    .line 484
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getProtoPortTupple: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 486
    if-nez p2, :cond_1

    .line 487
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getProtoPortTupple: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v11, 0x0

    .line 530
    :cond_0
    :goto_0
    return-object v11

    .line 491
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 492
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 495
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 496
    .local v11, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v7, 0x0

    .line 498
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 499
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 500
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getProtoPortTupple: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz v7, :cond_3

    .line 502
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_3
    const/4 v11, 0x0

    .line 526
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    if-eqz v7, :cond_0

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 506
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 507
    .local v6, "count":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 508
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .local v12, "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_5

    .line 511
    :try_start_2
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;-><init>()V

    .line 512
    .local v10, "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    const-string v0, "server_tupple_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->protoPortTuppleID:Ljava/lang/String;

    .line 514
    const-string v0, "ip_protocol"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->ipProtocol:I

    .line 516
    const-string v0, "port_number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;->portNumber:I

    .line 518
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 510
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 526
    .end local v10    # "protoPortTupple":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;
    :cond_5
    if-eqz v7, :cond_7

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_0

    .line 521
    .end local v6    # "count":I
    .end local v9    # "i":I
    :catch_0
    move-exception v8

    .line 522
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occurred, Setting protoPortTuppleList to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 524
    const/4 v11, 0x0

    .line 526
    if-eqz v7, :cond_0

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 526
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_6

    .line 527
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 526
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v6    # "count":I
    .restart local v9    # "i":I
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_3

    .line 521
    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto :goto_2

    .end local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    .restart local v11    # "protoPortTuppleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;>;"
    goto/16 :goto_0
.end method

.method public getRemediationInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 2484
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getRemediationInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    if-nez p2, :cond_1

    .line 2486
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Check one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 2488
    if-nez p2, :cond_1

    .line 2489
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 2529
    :cond_0
    :goto_0
    return-object v9

    .line 2493
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2494
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 2497
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2498
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2500
    .local v9, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2502
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2503
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getRemediationInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    if-eqz v7, :cond_3

    .line 2506
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2525
    :cond_3
    if-eqz v7, :cond_4

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 2510
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2511
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 2512
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2525
    if-eqz v7, :cond_6

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 2515
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2516
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2517
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .local v10, "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :try_start_3
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->URI:Ljava/lang/String;

    .line 2519
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;->trustRootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    .line 2520
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2525
    if-eqz v7, :cond_9

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_0

    .line 2521
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2522
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2523
    const/4 v9, 0x0

    .line 2525
    if-eqz v7, :cond_0

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2525
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 2526
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2525
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v6    # "count":I
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_2

    .line 2521
    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_1

    .end local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    :cond_9
    move-object v9, v10

    .end local v10    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    .restart local v9    # "subRemediation":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;
    goto :goto_0
.end method

.method public getSIMInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 815
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;-><init>()V

    .line 816
    .local v0, "sim":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;
    const-string v1, "sim_eaptype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->eapType:Ljava/lang/String;

    .line 817
    const-string v1, "imsi"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;->imsi:Ljava/lang/String;

    .line 818
    return-object v0
.end method

.method public getSpIcon(I)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .locals 14
    .param p1, "hsId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1985
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1986
    .local v9, "hotspotId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1987
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1989
    .local v10, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_0
    const-string v3, "hotspot_id=?"

    .line 1990
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 1993
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1994
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1995
    :cond_0
    if-eqz v7, :cond_1

    .line 1996
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2018
    :cond_1
    if-eqz v7, :cond_2

    .line 2019
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v12

    .line 2022
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2000
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2001
    .local v6, "count":I
    if-le v6, v13, :cond_6

    .line 2002
    if-eqz v7, :cond_4

    .line 2003
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2018
    :cond_4
    if-eqz v7, :cond_5

    .line 2019
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v12

    goto :goto_0

    .line 2007
    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2008
    new-instance v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    invoke-direct {v11}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2009
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .local v11, "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :try_start_3
    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    .line 2011
    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    .line 2013
    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2018
    if-eqz v7, :cond_9

    .line 2019
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v10, v11

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectArgs":[Ljava/lang/String;
    .end local v6    # "count":I
    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :cond_7
    :goto_1
    move-object v0, v10

    .line 2022
    goto :goto_0

    .line 2015
    :catch_0
    move-exception v8

    .line 2016
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2018
    if-eqz v7, :cond_7

    .line 2019
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2018
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v7, :cond_8

    .line 2019
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 2018
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectArgs":[Ljava/lang/String;
    .restart local v6    # "count":I
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :catchall_1
    move-exception v0

    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_3

    .line 2015
    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :catch_1
    move-exception v8

    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_2

    .end local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    :cond_9
    move-object v10, v11

    .end local v11    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    .restart local v10    # "icon":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;
    goto :goto_1
.end method

.method public getSpIconList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2761
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSpIconList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    const/4 v7, 0x0

    .line 2763
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 2765
    .local v11, "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2767
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2768
    :cond_0
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSpIconList: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2769
    if-eqz v7, :cond_1

    .line 2770
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2772
    :cond_1
    const/4 v0, 0x0

    .line 2792
    if-eqz v7, :cond_2

    .line 2793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2796
    :cond_2
    :goto_0
    return-object v0

    .line 2774
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2775
    .local v6, "count":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2776
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2777
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_4

    .line 2778
    const-string v0, "sp_icon_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2780
    .local v13, "name":Ljava/lang/String;
    const-string v0, "sp_icon_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2782
    .local v14, "type":Ljava/lang/String;
    const-string v0, "sp_icon_hash"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2784
    .local v9, "hash":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2785
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2777
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2787
    .end local v9    # "hash":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "type":Ljava/lang/String;
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2792
    if-eqz v7, :cond_7

    .line 2793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v11, v12

    .end local v6    # "count":I
    .end local v10    # "i":I
    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_2
    move-object v0, v11

    .line 2796
    goto :goto_0

    .line 2788
    :catch_0
    move-exception v8

    .line 2789
    .local v8, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2790
    const/4 v11, 0x0

    .line 2792
    if-eqz v7, :cond_5

    .line 2793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2792
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v7, :cond_6

    .line 2793
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2792
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "count":I
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .line 2788
    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .end local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    .restart local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    move-object v11, v12

    .end local v12    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "iconDetails":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getSubscriptionParameterInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 153
    if-nez p2, :cond_1

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 155
    if-nez p2, :cond_1

    .line 156
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionParameterInfo: SP Info doesnt exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 199
    :cond_0
    :goto_0
    return-object v9

    .line 160
    :cond_1
    const-string v3, ""

    .line 161
    .local v3, "selection":Ljava/lang/String;
    const-string v3, "hotspot_id=?"

    .line 162
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 165
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 166
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 168
    .local v9, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 170
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionParameterInfo: Corresponding entry doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz v7, :cond_3

    .line 172
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_3
    if-eqz v7, :cond_4

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 176
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 177
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 178
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionParameterInfo: More than 2 entry exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    if-eqz v7, :cond_6

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 182
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 183
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .local v10, "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->creationDate:Ljava/lang/String;

    .line 186
    const-string v0, "expiration_date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->expirationDate:Ljava/lang/String;

    .line 188
    const-string v0, "type_of_subscription"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->typeOfSubscription:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;->usageLimitobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    if-eqz v7, :cond_9

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_0

    .line 191
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 192
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    const/4 v9, 0x0

    .line 195
    if-eqz v7, :cond_0

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 195
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 196
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 195
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v6    # "count":I
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_2

    .line 191
    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto :goto_1

    .end local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    :cond_9
    move-object v9, v10

    .end local v10    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    .restart local v9    # "subParameters":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;
    goto/16 :goto_0
.end method

.method public getSubscriptionUpdateInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .locals 13
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 403
    if-nez p2, :cond_1

    .line 404
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Check the hotspot details once again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 406
    if-nez p2, :cond_1

    .line 407
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Entry doesn\'t exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v11

    .line 461
    :cond_0
    :goto_0
    return-object v9

    .line 411
    :cond_1
    const-string v3, "hotspot_id=? AND type_of_node=?"

    .line 413
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const-string v0, "1"

    aput-object v0, v4, v12

    .line 416
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 417
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 419
    .local v9, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 421
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 422
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionUpdateInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-eqz v7, :cond_3

    .line 424
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_3
    if-eqz v7, :cond_4

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v11

    goto :goto_0

    .line 428
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 429
    .local v6, "count":I
    if-le v6, v12, :cond_7

    .line 430
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getSubscriptionUpdateInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    if-eqz v7, :cond_6

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v9, v11

    goto :goto_0

    .line 434
    :cond_7
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    new-instance v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

    invoke-direct {v10}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 436
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .local v10, "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :try_start_3
    const-string v0, "other"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->other:Ljava/lang/String;

    .line 438
    const-string v0, "restriction"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->restriction:Ljava/lang/String;

    .line 440
    const-string v0, "update_interval"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateInterval:J

    .line 442
    const-string v0, "update_method"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->updateMethod:Ljava/lang/String;

    .line 444
    const-string v0, "uri"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->uri:Ljava/lang/String;

    .line 446
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;-><init>()V

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    .line 447
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "username"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->username:Ljava/lang/String;

    .line 449
    iget-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->passwordUsernameobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;

    const-string v1, "password"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;->password:[B

    .line 451
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;->trustrootObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    if-eqz v7, :cond_9

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto/16 :goto_0

    .line 452
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 453
    .local v8, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception Occurred, Setting subscriptionUpdate to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 455
    const/4 v9, 0x0

    .line 457
    if-eqz v7, :cond_0

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 457
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v7, :cond_8

    .line 458
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 457
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v6    # "count":I
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto :goto_2

    .line 452
    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :catch_1
    move-exception v8

    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto :goto_1

    .end local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    :cond_9
    move-object v9, v10

    .end local v10    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    .restart local v9    # "subscriptionUpdate":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;
    goto/16 :goto_0
.end method

.method public getTrustRootInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 468
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;-><init>()V

    .line 469
    .local v0, "trustroot":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;
    const-string v1, "certurl"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->trustRootURL:Ljava/lang/String;

    .line 471
    const-string v1, "cert_sha256_finger_print"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;->certSHA256FingerPrint:Ljava/lang/String;

    .line 474
    return-object v0
.end method

.method public getUpdateIdentifier(I)I
    .locals 13
    .param p1, "credentialID"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 2687
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v9

    .line 2689
    .local v9, "hotspotID":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 2690
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getUpdateIdentifier: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2729
    :cond_0
    :goto_0
    return v10

    .line 2693
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 2694
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v9, v4, v0

    .line 2697
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2698
    .local v7, "dbCur":Landroid/database/Cursor;
    const/4 v10, -0x1

    .line 2700
    .local v10, "updateIdentifier":I
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2702
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 2703
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getUpdateIdentifier: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    if-eqz v7, :cond_3

    .line 2706
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2725
    :cond_3
    if-eqz v7, :cond_4

    .line 2726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v10, v11

    goto :goto_0

    .line 2710
    :cond_5
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2711
    .local v6, "count":I
    if-le v6, v12, :cond_8

    .line 2712
    if-eqz v7, :cond_6

    .line 2713
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2725
    :cond_6
    if-eqz v7, :cond_7

    .line 2726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_7
    move v10, v11

    goto :goto_0

    .line 2717
    :cond_8
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2718
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2720
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getupdateIdentifier: ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2721
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2725
    if-eqz v7, :cond_0

    .line 2726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2722
    .end local v6    # "count":I
    :catch_0
    move-exception v8

    .line 2723
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2725
    if-eqz v7, :cond_0

    .line 2726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2725
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 2726
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public getUpdateIdentifierForFqdn(Ljava/lang/String;)I
    .locals 10
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    .line 2733
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getUpdateIdentifier"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string v3, "fqdn=?"

    .line 2735
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2739
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2741
    .local v7, "cr":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2743
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2744
    .local v6, "count":I
    if-nez v6, :cond_0

    .line 2745
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2746
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2757
    .end local v6    # "count":I
    :goto_0
    return v9

    .line 2749
    .restart local v6    # "count":I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2750
    const-string v0, "update_identifier"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2756
    .local v9, "updateIdentifier":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2753
    .end local v6    # "count":I
    .end local v9    # "updateIdentifier":I
    :catch_0
    move-exception v8

    .line 2754
    .local v8, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getUsageLimitInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    .locals 2
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    .line 208
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;-><init>()V

    .line 209
    .local v0, "usageLimit":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;
    const-string v1, "date_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->dataLimit:I

    .line 211
    const-string v1, "start_date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->startDate:Ljava/lang/String;

    .line 213
    const-string v1, "time_limit"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->timeLimit:I

    .line 215
    const-string v1, "usage_interval"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;->usageInterval:I

    .line 217
    return-object v0
.end method

.method public getUserPriority()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2957
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getUserPriority"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    const/4 v6, 0x0

    .line 2959
    .local v6, "dbCur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2960
    .local v8, "userPriority":I
    new-array v2, v9, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "MAX(user_priority)"

    aput-object v1, v2, v0

    .line 2963
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2964
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2965
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2966
    const-string v0, "user_priority"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2971
    :cond_0
    if-eqz v6, :cond_1

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_1
    :goto_0
    return v8

    .line 2968
    :catch_0
    move-exception v7

    .line 2969
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiHs20DBHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserPriority: Exception occured:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2971
    if-eqz v6, :cond_1

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2971
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 2972
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getUsernamePasswordInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;
    .locals 4
    .param p1, "dbCur"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 842
    new-instance v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    invoke-direct {v0}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;-><init>()V

    .line 843
    .local v0, "usernamePasswpord":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;
    const-string v1, "abletoshare"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->ableToShare:Z

    .line 845
    const-string v1, "machine_managed"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    :goto_1
    iput-boolean v2, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->machineManaged:Z

    .line 847
    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->password:[B

    .line 849
    const-string v1, "soft_tokenapp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->softTokenApp:Ljava/lang/String;

    .line 851
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->username:Ljava/lang/String;

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;->eapMethodobj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    .line 854
    return-object v0

    :cond_0
    move v1, v3

    .line 843
    goto :goto_0

    :cond_1
    move v2, v3

    .line 845
    goto :goto_1
.end method

.method public getcredentialInfo(ILjava/lang/String;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .locals 11
    .param p1, "credentialID"    # I
    .param p2, "hotspotID"    # Ljava/lang/String;

    .prologue
    .line 741
    if-nez p2, :cond_1

    .line 742
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getcredentialInfo: Check for one more time"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object p2

    .line 744
    if-nez p2, :cond_1

    .line 745
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getcredentialInfo: Entry doesn\'t exists "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v7, 0x0

    .line 808
    :cond_0
    :goto_0
    return-object v7

    .line 749
    :cond_1
    const-string v3, "hotspot_id=?"

    .line 750
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    .line 753
    .local v4, "selectArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 754
    .local v9, "dbCur":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 756
    .local v7, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 758
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 759
    :cond_2
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getcredentialInfo: Corresponding entry doesnt exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    if-eqz v9, :cond_3

    .line 761
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    :cond_3
    const/4 v7, 0x0

    .line 804
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 765
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_4
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 766
    .local v6, "count":I
    const/4 v0, 0x1

    if-le v6, v0, :cond_5

    .line 767
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "getcredentialInfo: More than 2 entries exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 769
    const/4 v7, 0x0

    .line 804
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    if-eqz v9, :cond_0

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 771
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_5
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 772
    new-instance v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

    invoke-direct {v8}, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 773
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .local v8, "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :try_start_3
    const-string v0, "creation_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->creationDate:Ljava/lang/String;

    .line 775
    const-string v0, "expiration_date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->expirationDate:Ljava/lang/String;

    .line 778
    const-string v0, "realm"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->realm:Ljava/lang/String;

    .line 780
    const-string v0, "check_aaa_server_cert_status"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->checkAAAServerCertStatus:Z

    .line 783
    const-string v0, "credential_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialType:I

    .line 785
    const-string v0, "hs20_aaa_ca_cert_hash"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->hs20AAAFP:Ljava/lang/String;

    .line 789
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getUsernamePasswordInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;

    .line 791
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getDigitalCertificateInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

    .line 793
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getSIMInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

    .line 794
    const-string v0, "method_type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->methodType:I

    .line 796
    const-string v0, "credential_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->credentialID:I

    .line 798
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getEAPInfo(Landroid/database/Cursor;)Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;->eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 804
    if-eqz v9, :cond_8

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto/16 :goto_0

    .line 780
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 799
    .end local v6    # "count":I
    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catch_0
    move-exception v10

    .line 800
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    const-string v0, "WifiHs20DBHandler"

    const-string v1, "Exception occurred, Setting credentialInfo to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 802
    const/4 v7, 0x0

    .line 804
    if-eqz v9, :cond_0

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 804
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_7

    .line 805
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 804
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v6    # "count":I
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto :goto_3

    .line 799
    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :catch_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto :goto_2

    .end local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    :cond_8
    move-object v7, v8

    .end local v8    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    .restart local v7    # "credentialInfo":Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
    goto/16 :goto_0
.end method

.method public setCertID(I)Z
    .locals 11
    .param p1, "certID"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 964
    const-string v8, "WifiHs20DBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCertID:certID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    const/4 v4, -0x1

    .line 966
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 968
    const-string v7, "WifiHs20DBHandler"

    const-string v8, "setCertID: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_0
    return v6

    .line 971
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 972
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    const-string v2, "hotspot_id=?"

    .line 974
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 977
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v8, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 979
    .local v3, "status":I
    if-ne v3, v7, :cond_1

    .line 980
    const-string v6, "WifiHs20DBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCertID: Updation of credential info successful.status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 981
    goto :goto_0

    .line 983
    :cond_1
    const-string v6, "WifiHs20DBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCertID: Failed to update the credential info. Status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 984
    goto :goto_0
.end method

.method public setCredDetails(Lcom/android/server/wifi/hs20/WifiHs20CredDetails;)Z
    .locals 11
    .param p1, "credDetails"    # Lcom/android/server/wifi/hs20/WifiHs20CredDetails;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2820
    const-string v8, "WifiHs20DBHandler"

    const-string v9, "setCredDetails"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2821
    iget v4, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    .line 2822
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2823
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2824
    const-string v7, "WifiHs20DBHandler"

    const-string v8, "setCredDetails: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_0
    :goto_0
    return v6

    .line 2827
    :cond_1
    const-string v8, "WifiHs20DBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setCredDetails: + cert ID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "cred ID"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->credID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2830
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "cert_id"

    iget v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->certID:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    const-string v8, "private_key_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->privateKeyHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    const-string v8, "client_cert_hash"

    iget-object v9, p1, Lcom/android/server/wifi/hs20/WifiHs20CredDetails;->clientCertHash:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    const-string v2, "hotspot_id=?"

    .line 2834
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 2837
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2839
    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    .line 2840
    goto :goto_0
.end method

.method public setCredId(II)Z
    .locals 9
    .param p1, "hotSpotId"    # I
    .param p2, "credID"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 989
    const-string v6, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredId:hotSpotId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "credID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v6, -0x1

    if-ge p1, v6, :cond_0

    .line 991
    const-string v5, "WifiHs20DBHandler"

    const-string v6, "setCertID: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :goto_0
    return v4

    .line 994
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 995
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    const-string v1, "hotspot_id=?"

    .line 997
    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    .line 1000
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1002
    .local v2, "status":I
    if-ne v2, v5, :cond_1

    .line 1003
    const-string v4, "WifiHs20DBHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCertID: Updation of credential info successful.status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1004
    goto :goto_0

    .line 1006
    :cond_1
    const-string v4, "WifiHs20DBHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCertID: Failed to update the credential info. Status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 1007
    goto :goto_0
.end method

.method public setCredentials(IIII)Z
    .locals 10
    .param p1, "credentialType"    # I
    .param p2, "credentialID"    # I
    .param p3, "methodType"    # I
    .param p4, "old_cred_id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 934
    const-string v7, "WifiHs20DBHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setCredentials:credentialType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "credentialID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "methodType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "old_cred_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-virtual {p0, p4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 937
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 938
    const-string v6, "WifiHs20DBHandler"

    const-string v7, "setCredentials: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :goto_0
    return v5

    .line 941
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 942
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "credential_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    const-string v7, "credential_type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    const-string v7, "method_type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 945
    const-string v2, "hotspot_id=?"

    .line 946
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 949
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 951
    .local v3, "status":I
    if-ne v3, v6, :cond_1

    .line 952
    const-string v5, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredentials: Updation of credential info successful.status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 953
    goto :goto_0

    .line 955
    :cond_1
    const-string v5, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCredentials: Failed to update the credential info. Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 956
    goto :goto_0
.end method

.method public setEAPType(II)Z
    .locals 9
    .param p1, "credID"    # I
    .param p2, "eapType"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1012
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1014
    const-string v6, "WifiHs20DBHandler"

    const-string v7, "setEAPType: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :goto_0
    return v5

    .line 1017
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "eap_type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    const-string v2, "hotspot_id=?"

    .line 1020
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 1023
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1025
    .local v3, "status":I
    if-ne v3, v6, :cond_1

    .line 1026
    const-string v5, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEAPType: Updation of credential info successful.status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1027
    goto :goto_0

    .line 1029
    :cond_1
    const-string v5, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setEAPType: Failed to update the credential info. Status:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1030
    goto :goto_0
.end method

.method public setSpIcon(ILcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;)Z
    .locals 6
    .param p1, "credId"    # I
    .param p2, "icon"    # Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;

    .prologue
    .line 1969
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 1970
    .local v0, "hotspotId":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1971
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "hotspot_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    const-string v3, "sp_icon_name"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1973
    const-string v3, "sp_icon_type"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    const-string v3, "sp_icon_hash"

    iget-object v4, p2, Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;->hash:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    iget-object v3, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1976
    .local v1, "newUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1977
    const-string v3, "WifiHs20DBHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    const/4 v3, 0x1

    .line 1980
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTrustRootFP(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "certSHA256FP"    # Ljava/lang/String;
    .param p2, "credID"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2800
    invoke-virtual {p0, p2}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2801
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2802
    const-string v6, "WifiHs20DBHandler"

    const-string v7, "setTrustRootFP: Entry doesn\'t exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_0
    :goto_0
    return v5

    .line 2805
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2806
    .local v4, "values":Landroid/content/ContentValues;
    const-string v7, "hs20_aaa_ca_cert_hash"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    const-string v2, "hotspot_id=?"

    .line 2808
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    aput-object v0, v1, v5

    .line 2811
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v4, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2813
    .local v3, "status":I
    if-ne v3, v6, :cond_0

    move v5, v6

    .line 2814
    goto :goto_0
.end method

.method public setUpdateIdentifier(Ljava/lang/String;I)Z
    .locals 13
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "updateIdentier"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2646
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "setUpdateIdentifier"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    const-string v3, "fqdn=?"

    .line 2648
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v11

    .line 2651
    .local v4, "selectArgs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2652
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 2654
    .local v7, "dbCur":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2656
    if-nez v7, :cond_1

    .line 2657
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "setUpdateIdentifier: Database doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2679
    if-eqz v7, :cond_0

    .line 2680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move v1, v11

    .line 2683
    :goto_0
    return v1

    .line 2660
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2661
    .local v6, "count":I
    if-lt v6, v12, :cond_2

    .line 2662
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2663
    .local v10, "values":Landroid/content/ContentValues;
    const-string v1, "update_identifier"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2665
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2666
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v6, :cond_3

    .line 2667
    iget-object v1, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2670
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 2666
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2673
    .end local v9    # "i":I
    .end local v10    # "values":Landroid/content/ContentValues;
    :cond_2
    const-string v1, "WifiHs20DBHandler"

    const-string v2, "setUpdateIdentifier: Entry doesnt exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2679
    if-eqz v7, :cond_4

    .line 2680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    :cond_4
    :goto_2
    move v1, v12

    .line 2683
    goto :goto_0

    .line 2676
    :catch_0
    move-exception v8

    .line 2677
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2679
    if-eqz v7, :cond_4

    .line 2680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2679
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_5

    .line 2680
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method public setUserPriority(II)Z
    .locals 11
    .param p1, "credID"    # I
    .param p2, "userPriority"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2847
    const-string v8, "WifiHs20DBHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setUserPriority credid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " userPriority:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    move v4, p1

    .line 2849
    .local v4, "tempCredentialID":I
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->getHotspotId(I)Ljava/lang/String;

    move-result-object v0

    .line 2850
    .local v0, "hotspotID":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2851
    const-string v7, "WifiHs20DBHandler"

    const-string v8, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    :cond_0
    :goto_0
    return v6

    .line 2854
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2855
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2856
    const-string v2, "hotspot_id=?"

    .line 2857
    .local v2, "selection":Ljava/lang/String;
    new-array v1, v7, [Ljava/lang/String;

    aput-object v0, v1, v6

    .line 2860
    .local v1, "selectArgs":[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v9, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v9, v5, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2861
    .local v3, "status":I
    if-ne v3, v7, :cond_0

    move v6, v7

    .line 2862
    goto :goto_0
.end method

.method public setUserPriority(Ljava/lang/String;I)Z
    .locals 9
    .param p1, "hotspotID"    # Ljava/lang/String;
    .param p2, "userPriority"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2869
    const-string v6, "WifiHs20DBHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setUserPriority hotspotID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " userPriority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2870
    if-nez p1, :cond_1

    .line 2871
    const-string v5, "WifiHs20DBHandler"

    const-string v6, "setUserPriority: Entry doesn\'t exists"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    :cond_0
    :goto_0
    return v4

    .line 2874
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2875
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "user_priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2876
    const-string v1, "hotspot_id=?"

    .line 2877
    .local v1, "selection":Ljava/lang/String;
    new-array v0, v5, [Ljava/lang/String;

    aput-object p1, v0, v4

    .line 2880
    .local v0, "selectArgs":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/wifi/hs20/WifiHs20DBHandler;->cr:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2881
    .local v2, "status":I
    if-ne v2, v5, :cond_0

    move v4, v5

    .line 2882
    goto :goto_0
.end method
