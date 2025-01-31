.class public Lcom/android/server/wifi/anqp/ANQPFactory;
.super Ljava/lang/Object;
.source "ANQPFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/ANQPFactory$1;
    }
.end annotation


# static fields
.field private static final BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

.field private static final HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPVenueName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNwkAuthType:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPRoamingConsortium:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPIPAddrAvailability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPNAIRealm:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQP3GPPNetwork:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ANQPDomName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    new-array v0, v6, [Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSFriendlyName:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSWANMetrics:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->HSConnCapability:Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const v5, 0xffff

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Runt payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v1, v3, v5

    .local v1, "infoIDNumber":I
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->mapANQPElement(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v0

    .local v0, "infoID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v0, :cond_1

    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad info ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    and-int v2, v3, v5

    .local v2, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_2

    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Truncated payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {p0, v0, v2}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v3

    return-object v3
.end method

.method public static buildElement(Ljava/nio/ByteBuffer;Lcom/android/server/wifi/anqp/Constants$ANQPElementType;I)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 8
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    if-gtz p2, :cond_0

    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payload position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payload length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-le v5, v6, :cond_1

    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payload position: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payload limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " payload capacity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .local v1, "elementPayload":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    sget-object v5, Lcom/android/server/wifi/anqp/ANQPFactory$1;->$SwitchMap$com$android$server$wifi$anqp$Constants$ANQPElementType:[I

    invoke-virtual {p1}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "elementPayload":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/ProtocolException;
    throw v0

    .end local v0    # "e":Ljava/net/ProtocolException;
    .restart local v1    # "elementPayload":Ljava/nio/ByteBuffer;
    :pswitch_0
    :try_start_1
    new-instance v5, Lcom/android/server/wifi/anqp/CapabilityListElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/CapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    :goto_0
    return-object v5

    :pswitch_1
    new-instance v5, Lcom/android/server/wifi/anqp/VenueNameElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/VenueNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v1    # "elementPayload":Ljava/nio/ByteBuffer;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/net/ProtocolException;

    const-string v6, "Unknown parsing error"

    invoke-direct {v5, v6, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "elementPayload":Ljava/nio/ByteBuffer;
    :pswitch_2
    :try_start_2
    new-instance v5, Lcom/android/server/wifi/anqp/EmergencyNumberElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/EmergencyNumberElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_3
    new-instance v5, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/NetworkAuthenticationTypeElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_4
    new-instance v5, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/RoamingConsortiumElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_5
    new-instance v5, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/IPAddressTypeAvailabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_6
    new-instance v5, Lcom/android/server/wifi/anqp/NAIRealmElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/NAIRealmElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_7
    new-instance v5, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/ThreeGPPNetworkElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_8
    new-instance v5, Lcom/android/server/wifi/anqp/GEOLocationElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GEOLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_9
    new-instance v5, Lcom/android/server/wifi/anqp/CivicLocationElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/CivicLocationElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_a
    new-instance v5, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_b
    new-instance v5, Lcom/android/server/wifi/anqp/DomainNameElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/DomainNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_c
    new-instance v5, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_d
    new-instance v5, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_e
    new-instance v5, Lcom/android/server/wifi/anqp/GenericStringElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericStringElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_f
    new-instance v5, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .local v3, "oi":I
    const v5, 0x119a6f50

    if-eq v3, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    and-int/lit16 v4, v5, 0xff

    .local v4, "subType":I
    invoke-static {v4}, Lcom/android/server/wifi/anqp/Constants;->mapHS20Element(I)Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    move-result-object v2

    .local v2, "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    if-nez v2, :cond_3

    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad HS20 info ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    invoke-static {v2, v1}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v5

    goto/16 :goto_0

    .end local v2    # "hs20ID":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v3    # "oi":I
    .end local v4    # "subType":I
    :cond_4
    new-instance v5, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v5, p1, v1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
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
    .end packed-switch
.end method

.method public static buildHS20Element(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;
    .locals 3
    .param p0, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/anqp/ANQPFactory$1;->$SwitchMap$com$android$server$wifi$anqp$Constants$ANQPElementType:[I

    invoke-virtual {p0}, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/android/server/wifi/anqp/HSCapabilityListElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSCapabilityListElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/net/ProtocolException;
    throw v0

    .end local v0    # "e":Ljava/net/ProtocolException;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSFriendlyNameElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Unknown parsing error"

    invoke-direct {v1, v2, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    new-instance v1, Lcom/android/server/wifi/anqp/HSWanMetricsElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSWanMetricsElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_3
    new-instance v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/android/server/wifi/anqp/GenericBlobElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/GenericBlobElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSOsuProvidersElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :pswitch_6
    new-instance v1, Lcom/android/server/wifi/anqp/HSIconFileElement;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/anqp/HSIconFileElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static buildHomeRealmRequest(Ljava/util/List;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p0, "realmNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v4, -0x2223

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .local v1, "lenPos":I
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v4, 0x119a6f50

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v4, 0x6

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "realmName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .local v2, "octets":[B
    array-length v4, v2

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0

    .end local v2    # "octets":[B
    .end local v3    # "realmName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x2

    int-to-short v4, v4

    invoke-virtual {p1, v1, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static buildIconRequest(Ljava/lang/String;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, -0x2223

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "lenPos":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v1, 0x119a6f50

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    int-to-short v1, v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static buildQueryRequest(Ljava/util/Set;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9
    .param p1, "target"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    .prologue
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v7, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, "elementIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v6, 0x100

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .local v3, "lenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    invoke-static {v6}, Lcom/android/server/wifi/anqp/Constants;->getANQPElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v2

    .local v2, "id":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->shortValue()S

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .end local v2    # "id":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    invoke-virtual {p1, v3, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, -0x2223

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .local v5, "vsLenPos":I
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const v6, 0x119a6f50

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    .local v1, "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    invoke-static {v1}, Lcom/android/server/wifi/anqp/Constants;->getHS20ElementID(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)Ljava/lang/Integer;

    move-result-object v2

    .restart local v2    # "id":Ljava/lang/Integer;
    if-nez v2, :cond_2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmapped ANQPElementType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .end local v1    # "elementType":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .end local v2    # "id":Ljava/lang/Integer;
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    invoke-virtual {p1, v5, v6}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .end local v5    # "vsLenPos":I
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public static getBaseANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->BaseANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static getHS20ANQPSet()[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/anqp/ANQPFactory;->HS20ANQPSet:[Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    return-object v0
.end method

.method public static parsePayload(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 2
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildElement(Ljava/nio/ByteBuffer;)Lcom/android/server/wifi/anqp/ANQPElement;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
