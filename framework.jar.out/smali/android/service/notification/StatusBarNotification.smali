.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appGroupKey:Ljava/lang/String;

.field private final groupKey:Ljava/lang/String;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final score:I

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 93
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    .line 96
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 97
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 99
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 101
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->appGroupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->appGroupKey:Ljava/lang/String;

    .line 102
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "initialPid"    # I
    .param p7, "score"    # I
    .param p8, "notification"    # Landroid/app/Notification;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    .line 71
    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    .line 72
    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    .line 73
    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    .line 74
    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    .line 75
    iput p7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    .line 76
    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 77
    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    .line 78
    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    .line 79
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->appGroupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->appGroupKey:Ljava/lang/String;

    .line 82
    return-void
.end method

.method private appGroupKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->secPriority:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->secFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    .line 142
    :goto_0
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroupAllowedPackage()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getAppGroup()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 133
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getAppGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isSystemNotification()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    const-string/jumbo v0, "ongoing"

    .line 136
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const-string/jumbo v2, "ongoing"

    invoke-virtual {v1, v2}, Landroid/app/Notification;->setAppGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_4
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 139
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification;->setAppGroup(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private groupKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "group":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "sortKey":Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 113
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    .line 115
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "g:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Landroid/service/notification/StatusBarNotification;
    .locals 12

    .prologue
    .line 247
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v8}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v8

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public cloneLight()Landroid/service/notification/StatusBarNotification;
    .locals 12

    .prologue
    .line 238
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 239
    .local v8, "no":Landroid/app/Notification;
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 240
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget v7, p0, Landroid/service/notification/StatusBarNotification;->score:I

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public getAppGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->appGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 374
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 381
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    .line 383
    :cond_1
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    return-object v2

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    return-wide v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public isActiveMeida()Z
    .locals 7

    .prologue
    .line 179
    const-string/jumbo v5, "media_session"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v4

    .line 182
    .local v4, "sm":Landroid/media/session/ISessionManager;
    const/4 v5, 0x0

    const/4 v6, -0x1

    :try_start_0
    invoke-interface {v4, v5, v6}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    .line 183
    .local v0, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 184
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 185
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v2

    .line 186
    .local v2, "sc":Landroid/media/session/ISessionController;
    invoke-interface {v2}, Landroid/media/session/ISessionController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    const/4 v5, 0x1

    .line 193
    .end local v0    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v1    # "i":I
    .end local v2    # "sc":Landroid/media/session/ISessionController;
    .end local v3    # "size":I
    :goto_1
    return v5

    .line 184
    .restart local v0    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .restart local v1    # "i":I
    .restart local v2    # "sc":Landroid/media/session/ISessionController;
    .restart local v3    # "size":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v1    # "i":I
    .end local v2    # "sc":Landroid/media/session/ISessionController;
    .end local v3    # "size":I
    :catch_0
    move-exception v5

    .line 193
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isAppGroupAllowedPackage()Z
    .locals 10

    .prologue
    .line 147
    iget-object v6, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 148
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Framework_ConfigExcludePackageFromNotificationGroup"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "disAllowedPackage":Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "disAllowedPackages":[Ljava/lang/String;
    iget-object v7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->isAppGroupSummary()Z

    move-result v7

    if-nez v7, :cond_1

    .line 153
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 154
    .local v5, "p":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 155
    const/4 v7, 0x0

    .line 160
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Ljava/lang/String;
    :goto_1
    return v7

    .line 153
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "p":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "p":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMiniCon()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    and-int/lit16 v0, v0, 0x3bf

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOngoing()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemNotification()Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 167
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->isAppGroupSummary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.servicemodeapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    :cond_0
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 254
    const-string v0, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s score=%d key=%s: %s)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 198
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 211
    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 213
    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 214
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
