.class public Lcom/samsung/android/security/MdppTrustManager;
.super Ljava/lang/Object;
.source "MdppTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final NOTIFICATION_TEXT:Ljava/lang/String; = " An error has been encountered while validating server\'s certificate chain"

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "Certificate chain error"


# instance fields
.field private context:Landroid/content/Context;

.field private trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/security/KeyStore;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    iput-object p1, p0, Lcom/samsung/android/security/MdppTrustManager;->context:Landroid/content/Context;

    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v6

    .local v6, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v6, p2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    invoke-virtual {v6}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .local v0, "arr$":[Ljavax/net/ssl/TrustManager;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .local v4, "manager":Ljavax/net/ssl/TrustManager;
    instance-of v7, v4, Lcom/android/org/conscrypt/TrustManagerImpl;

    if-eqz v7, :cond_1

    check-cast v4, Lcom/android/org/conscrypt/TrustManagerImpl;

    .end local v4    # "manager":Ljavax/net/ssl/TrustManager;
    iput-object v4, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Can\'t find TrustManagerImpl instance"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v2

    .local v2, "kse":Ljava/security/KeyStoreException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "kse":Ljava/security/KeyStoreException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "manager":Ljavax/net/ssl/TrustManager;
    .restart local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "manager":Ljavax/net/ssl/TrustManager;
    .end local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1
    move-exception v5

    .local v5, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v5    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "arr$":[Ljavax/net/ssl/TrustManager;
    .restart local v1    # "i$":I
    .restart local v3    # "len$":I
    .restart local v6    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_2
    return-void
.end method

.method private showNotification(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v4, 0x1

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/security/MdppTrustManager;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v0, "builder":Landroid/app/Notification$Builder;
    const v2, 0x108008a

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, "Certificate chain error"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, " An error has been encountered while validating server\'s certificate chain"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/security/MdppTrustManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, "mNotifyMgr":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "exceprion":Ljava/security/cert/CertificateException;
    invoke-direct {p0, v0}, Lcom/samsung/android/security/MdppTrustManager;->showNotification(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/security/MdppTrustManager;->trustManager:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
