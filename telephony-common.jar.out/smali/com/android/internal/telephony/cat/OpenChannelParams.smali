.class Lcom/android/internal/telephony/cat/OpenChannelParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

.field mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

.field mBufferSize:I

.field mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

.field mNetworkAccessName:Ljava/lang/String;

.field mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

.field mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

.field mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "bufferSize"    # I
    .param p3, "transportLevel"    # Lcom/android/internal/telephony/cat/TransportLevel;
    .param p4, "dataDestinationAddress"    # Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .param p5, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    iput-object p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/BearerDescription;ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/DataDestinationAddress;Ljava/lang/String;Lcom/android/internal/telephony/cat/BearerMode;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "bearerDesc"    # Lcom/android/internal/telephony/cat/BearerDescription;
    .param p3, "bufferSize"    # I
    .param p4, "transportLevel"    # Lcom/android/internal/telephony/cat/TransportLevel;
    .param p5, "dataDestinationAddress"    # Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .param p6, "networkAccessName"    # Ljava/lang/String;
    .param p7, "bearerMode"    # Lcom/android/internal/telephony/cat/BearerMode;
    .param p8, "textMessage"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p9, "usernameTextMessage"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p10, "passwordTextMessage"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    iput-object p2, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iput p3, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    iput-object p4, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iput-object p5, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iput-object p6, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iput-object p8, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p9, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p10, p0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method
