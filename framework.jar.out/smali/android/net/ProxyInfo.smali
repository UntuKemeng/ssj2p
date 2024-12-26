.class public Landroid/net/ProxyInfo;
.super Ljava/lang/Object;
.source "ProxyInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/ProxyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_EXCL_LIST:Ljava/lang/String; = ""

.field public static final LOCAL_HOST:Ljava/lang/String; = "localhost"

.field public static final LOCAL_PORT:I = -0x1


# instance fields
.field private mEnterpriseProxy:I

.field private mExclusionList:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mPacFileUrl:Landroid/net/Uri;

.field private mParsedExclusionList:[Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    new-instance v0, Landroid/net/ProxyInfo$1;

    invoke-direct {v0}, Landroid/net/ProxyInfo$1;-><init>()V

    sput-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "source"    # Landroid/net/ProxyInfo;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 204
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 208
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getEnterpriseProxy()I

    move-result v0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 137
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 139
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;I)V
    .locals 1
    .param p1, "pacFileUrl"    # Landroid/net/Uri;
    .param p2, "localProxyPort"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 162
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 163
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 164
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 165
    if-nez p1, :cond_0

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 168
    :cond_0
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pacFileUrl"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 151
    const-string/jumbo v0, "localhost"

    iput-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 153
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 111
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 112
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 113
    invoke-direct {p0, p3}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 114
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "exclList"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 122
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 123
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 124
    iput-object p3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    .line 126
    invoke-direct {p0, p5}, Landroid/net/ProxyInfo;->setExclusionList(Ljava/lang/String;)V

    .line 127
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 128
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "exclList"    # Ljava/lang/String;
    .param p6, "parsedExclList"    # [Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 184
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 185
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 186
    iput-object p3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    .line 187
    iput-object p4, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    .line 188
    iput-object p5, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 189
    iput-object p6, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 190
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 191
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # [Ljava/lang/String;
    .param p7, "x6"    # Landroid/net/ProxyInfo$1;

    .prologue
    .line 45
    invoke-direct/range {p0 .. p6}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "parsedExclList"    # [Ljava/lang/String;

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 172
    iput-object p1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    .line 173
    iput p2, p0, Landroid/net/ProxyInfo;->mPort:I

    .line 174
    iput-object p3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 175
    iput-object p4, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 176
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Landroid/net/ProxyInfo$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # [Ljava/lang/String;
    .param p5, "x4"    # Landroid/net/ProxyInfo$1;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .prologue
    .line 81
    new-instance v0, Landroid/net/ProxyInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public static buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/ProxyInfo;"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "exclList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 95
    .local v0, "array":[Ljava/lang/String;
    new-instance v1, Landroid/net/ProxyInfo;

    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method public static buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;
    .locals 1
    .param p0, "pacUri"    # Landroid/net/Uri;

    .prologue
    .line 103
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, p0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method private setExclusionList(Ljava/lang/String;)V
    .locals 2
    .param p1, "exclusionList"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 383
    instance-of v3, p1, Landroid/net/ProxyInfo;

    if-nez v3, :cond_1

    .line 421
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 384
    check-cast v0, Landroid/net/ProxyInfo;

    .line 387
    .local v0, "p":Landroid/net/ProxyInfo;
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 388
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 390
    :cond_3
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v4, v0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    :cond_4
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 399
    :cond_5
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 400
    :cond_6
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 401
    :cond_7
    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    iget v4, v0, Landroid/net/ProxyInfo;->mPort:I

    if-ne v3, v4, :cond_0

    .line 404
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    :cond_8
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 408
    :cond_9
    iget-object v3, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v3, v0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 410
    :cond_a
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    :cond_b
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, v0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 414
    :cond_c
    iget-object v3, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_d

    iget-object v3, v0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 418
    :cond_d
    iget v3, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    iget v4, v0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 421
    goto/16 :goto_0
.end method

.method public getEnterpriseProxy()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return v0
.end method

.method public getExclusionList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    return-object v0
.end method

.method public getExclusionListAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxVpnProfile()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    return v0
.end method

.method public getPacFileUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    return v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 4

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 225
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v3, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .local v1, "inetSocketAddress":Ljava/net/InetSocketAddress;
    move-object v0, v1

    .line 227
    .end local v1    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .restart local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 437
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 331
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    if-nez v1, :cond_2

    const-string v1, ""

    :goto_2
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    :goto_4
    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public makeProxy()Ljava/net/Proxy;
    .locals 5

    .prologue
    .line 341
    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 342
    .local v1, "proxy":Ljava/net/Proxy;
    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 344
    :try_start_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    iget v4, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-direct {v0, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 345
    .local v0, "inetSocketAddress":Ljava/net/InetSocketAddress;
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "proxy":Ljava/net/Proxy;
    .local v2, "proxy":Ljava/net/Proxy;
    move-object v1, v2

    .line 349
    .end local v0    # "inetSocketAddress":Ljava/net/InetSocketAddress;
    .end local v2    # "proxy":Ljava/net/Proxy;
    .restart local v1    # "proxy":Ljava/net/Proxy;
    :cond_0
    :goto_0
    return-object v1

    .line 346
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setEnterpriseProxy(I)V
    .locals 0
    .param p1, "enterpriseProxy"    # I

    .prologue
    .line 292
    iput p1, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 293
    return-void
.end method

.method public setKnoxVpnProfile(I)V
    .locals 0
    .param p1, "knoxVpnProfile"    # I

    .prologue
    .line 281
    iput p1, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    .line 282
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    const-string v1, "PAC Script: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    :cond_0
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 360
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v1, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, "[username : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-object v1, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, "[pw : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v1, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 373
    const-string v1, " xl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    :cond_2
    const-string v1, "[ProxyProperties.mHost == null]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 447
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v1, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 449
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPacFileUrl:Landroid/net/Uri;

    invoke-virtual {v0, p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 450
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 479
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 458
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 460
    iget-object v0, p0, Landroid/net/ProxyInfo;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget v0, p0, Landroid/net/ProxyInfo;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    iget v0, p0, Landroid/net/ProxyInfo;->mEnterpriseProxy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 467
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 468
    iget-object v0, p0, Landroid/net/ProxyInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/net/ProxyInfo;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    :goto_1
    iget-object v0, p0, Landroid/net/ProxyInfo;->mExclusionList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Landroid/net/ProxyInfo;->mParsedExclusionList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 475
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1
.end method
