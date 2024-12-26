.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 92
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 79
    if-nez p0, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 82
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 84
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 957
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 138
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    sparse-switch p1, :sswitch_data_0

    .line 952
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 101
    :sswitch_0
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 103
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 104
    .local v7, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 105
    .local v8, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 106
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_3
    move-object/from16 v5, p0

    .line 107
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 108
    const/4 v5, 0x1

    goto :goto_0

    .line 103
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 104
    .restart local v7    # "finished":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 106
    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 113
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :sswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 115
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v131, 0x1

    .line 116
    .local v131, "show":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 117
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 118
    const/4 v5, 0x1

    goto :goto_0

    .line 115
    .end local v9    # "configChanges":I
    .end local v131    # "show":Z
    :cond_3
    const/16 v131, 0x0

    goto :goto_4

    .line 123
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 125
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v131, 0x1

    .line 126
    .restart local v131    # "show":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v131

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 127
    const/4 v5, 0x1

    goto :goto_0

    .line 125
    .end local v131    # "show":Z
    :cond_4
    const/16 v131, 0x0

    goto :goto_5

    .line 132
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 134
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v133, 0x1

    .line 135
    .local v133, "sleeping":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v133

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 136
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 134
    .end local v133    # "sleeping":Z
    :cond_5
    const/16 v133, 0x0

    goto :goto_6

    .line 141
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 143
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 144
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 145
    .local v27, "isForward":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v128

    .line 146
    .local v128, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v128

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 147
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 144
    .end local v27    # "isForward":Z
    .end local v128    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    goto :goto_7

    .line 152
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    :sswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 154
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ApplicationThreadNative;->forceCallResumeActivity(Landroid/os/IBinder;)V

    .line 155
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 160
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 162
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 163
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 164
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 169
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :sswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 171
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 172
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 173
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 174
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 175
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 176
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 177
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 179
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 180
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 181
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 183
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 184
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 185
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 186
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 187
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 188
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 189
    .local v26, "notResumed":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 190
    .restart local v27    # "isForward":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 193
    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_a
    const/16 v29, 0x0

    .line 199
    .local v29, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "displayId":I
    move-object/from16 v11, p0

    move-object v13, v6

    .line 201
    invoke-virtual/range {v11 .. v30}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 205
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 188
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "displayId":I
    :cond_8
    const/16 v26, 0x0

    goto :goto_8

    .line 189
    .restart local v26    # "notResumed":Z
    :cond_9
    const/16 v27, 0x0

    goto :goto_9

    .line 190
    .restart local v27    # "isForward":Z
    :cond_a
    const/16 v28, 0x0

    goto :goto_a

    .line 210
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :sswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 212
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 213
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 214
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 215
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 216
    .restart local v26    # "notResumed":Z
    :goto_b
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 217
    .local v37, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 218
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 219
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 222
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_b
    const/16 v29, 0x0

    .line 228
    .restart local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .restart local v30    # "displayId":I
    move-object/from16 v31, p0

    move-object/from16 v32, v6

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    move/from16 v35, v9

    move/from16 v36, v26

    move-object/from16 v38, v17

    move-object/from16 v39, v29

    move/from16 v40, v30

    .line 230
    invoke-virtual/range {v31 .. v40}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 233
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 215
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v26    # "notResumed":Z
    .end local v29    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v30    # "displayId":I
    .end local v37    # "config":Landroid/content/res/Configuration;
    :cond_c
    const/16 v26, 0x0

    goto :goto_b

    .line 238
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 240
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 241
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 242
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 247
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :sswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 249
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v107, 0x1

    .line 250
    .local v107, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 251
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 252
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 249
    .end local v9    # "configChanges":I
    .end local v107    # "finishing":Z
    :cond_d
    const/16 v107, 0x0

    goto :goto_c

    .line 258
    .end local v6    # "b":Landroid/os/IBinder;
    :sswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 260
    .local v119, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 261
    .local v56, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v112

    .line 262
    .local v112, "isDisable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v119

    move-object/from16 v2, v56

    move/from16 v3, v112

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->updateOverlayPath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 269
    .end local v56    # "packageName":Ljava/lang/String;
    .end local v112    # "isDisable":I
    .end local v119    # "path":Ljava/lang/String;
    :sswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 271
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 272
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 273
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 274
    .local v42, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v43

    .line 275
    .local v43, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v44

    .line 276
    .local v44, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v45, 0x1

    .line 277
    .local v45, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 278
    .local v46, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .local v47, "processState":I
    move-object/from16 v38, p0

    move-object/from16 v39, v12

    move-object/from16 v40, v15

    move-object/from16 v41, v18

    .line 279
    invoke-virtual/range {v38 .. v47}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 281
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 276
    .end local v45    # "sync":Z
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    :cond_e
    const/16 v45, 0x0

    goto :goto_d

    .line 285
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v42    # "resultCode":I
    .end local v43    # "resultData":Ljava/lang/String;
    .end local v44    # "resultExtras":Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 287
    .local v49, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 288
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 289
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 290
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v18

    move/from16 v3, v47

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 296
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v47    # "processState":I
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 298
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 299
    .restart local v15    # "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 300
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 301
    .restart local v47    # "processState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 302
    .restart local v30    # "displayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v54

    .local v54, "callerActivityToken":Landroid/os/IBinder;
    move-object/from16 v48, p0

    move-object/from16 v50, v15

    move-object/from16 v51, v18

    move/from16 v52, v47

    move/from16 v53, v30

    .line 303
    invoke-virtual/range {v48 .. v54}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;IILandroid/os/IBinder;)V

    .line 304
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 309
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "displayId":I
    .end local v47    # "processState":I
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v54    # "callerActivityToken":Landroid/os/IBinder;
    :sswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 311
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 312
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v125, 0x1

    .line 313
    .local v125, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 314
    .restart local v47    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v125

    move/from16 v3, v47

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 315
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 312
    .end local v47    # "processState":I
    .end local v125    # "rebind":Z
    :cond_f
    const/16 v125, 0x0

    goto :goto_e

    .line 319
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 321
    .restart local v49    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 322
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 323
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 328
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 330
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v50, 0x1

    .line 331
    .local v50, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v51

    .line 332
    .local v51, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v52

    .line 334
    .local v52, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 335
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/content/Intent;

    .local v53, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v48, p0

    .line 339
    invoke-virtual/range {v48 .. v53}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 340
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 330
    .end local v50    # "taskRemoved":Z
    .end local v51    # "startId":I
    .end local v52    # "fl":I
    .end local v53    # "args":Landroid/content/Intent;
    :cond_10
    const/16 v50, 0x0

    goto :goto_f

    .line 337
    .restart local v50    # "taskRemoved":Z
    .restart local v51    # "startId":I
    .restart local v52    # "fl":I
    :cond_11
    const/16 v53, 0x0

    .restart local v53    # "args":Landroid/content/Intent;
    goto :goto_10

    .line 345
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v50    # "taskRemoved":Z
    .end local v51    # "startId":I
    .end local v52    # "fl":I
    .end local v53    # "args":Landroid/content/Intent;
    :sswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 347
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 348
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 353
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .line 355
    .restart local v56    # "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 357
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v58

    .line 359
    .local v58, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    new-instance v59, Landroid/content/ComponentName;

    move-object/from16 v0, v59

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 361
    .local v59, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 363
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v61

    .line 364
    .local v61, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 365
    .local v101, "binder":Landroid/os/IBinder;
    invoke-static/range {v101 .. v101}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v62

    .line 366
    .local v62, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v101

    .line 367
    invoke-static/range {v101 .. v101}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v63

    .line 369
    .local v63, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v64

    .line 370
    .local v64, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v65, 0x1

    .line 371
    .local v65, "openGlTrace":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v66, 0x1

    .line 372
    .local v66, "restrictedBackupMode":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v67, 0x1

    .line 374
    .local v67, "persistent":Z
    :goto_15
    new-instance v68, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    .line 380
    .local v68, "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    const/4 v5, 0x0

    sget-object v11, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, v68

    invoke-virtual {v0, v5, v11}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 384
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v70

    .line 385
    .local v70, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v71

    .line 387
    .local v71, "coreSettings":Landroid/os/Bundle;
    const/16 v30, 0x0

    .line 392
    .restart local v30    # "displayId":I
    const/high16 v73, 0x3f800000    # 1.0f

    .line 394
    .local v73, "dssScale":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v73

    move-object/from16 v55, p0

    move-object/from16 v57, v15

    move-object/from16 v60, v28

    move-object/from16 v69, v18

    move/from16 v72, v30

    .line 398
    invoke-virtual/range {v55 .. v73}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLcom/samsung/android/multidisplay/common/UnRestrictedArrayList;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;IF)V

    .line 402
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 359
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v30    # "displayId":I
    .end local v59    # "testName":Landroid/content/ComponentName;
    .end local v61    # "testArgs":Landroid/os/Bundle;
    .end local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v64    # "testMode":I
    .end local v65    # "openGlTrace":Z
    .end local v66    # "restrictedBackupMode":Z
    .end local v67    # "persistent":Z
    .end local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    .end local v70    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v71    # "coreSettings":Landroid/os/Bundle;
    .end local v73    # "dssScale":F
    .end local v101    # "binder":Landroid/os/IBinder;
    :cond_12
    const/16 v59, 0x0

    goto/16 :goto_11

    .line 361
    .restart local v59    # "testName":Landroid/content/ComponentName;
    :cond_13
    const/16 v28, 0x0

    goto :goto_12

    .line 370
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v61    # "testArgs":Landroid/os/Bundle;
    .restart local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v64    # "testMode":I
    .restart local v101    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v65, 0x0

    goto :goto_13

    .line 371
    .restart local v65    # "openGlTrace":Z
    :cond_15
    const/16 v66, 0x0

    goto :goto_14

    .line 372
    .restart local v66    # "restrictedBackupMode":Z
    :cond_16
    const/16 v67, 0x0

    goto :goto_15

    .line 407
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v56    # "packageName":Ljava/lang/String;
    .end local v58    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v59    # "testName":Landroid/content/ComponentName;
    .end local v61    # "testArgs":Landroid/os/Bundle;
    .end local v62    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v63    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v64    # "testMode":I
    .end local v65    # "openGlTrace":Z
    .end local v66    # "restrictedBackupMode":Z
    .end local v101    # "binder":Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 409
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 414
    :sswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 416
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 421
    :sswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 423
    .restart local v37    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 424
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 428
    .end local v37    # "config":Landroid/content/res/Configuration;
    :sswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 430
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 434
    :sswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 436
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 440
    :sswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 442
    .local v75, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 443
    .local v76, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    .line 444
    .local v79, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/net/Uri;

    .line 445
    .local v80, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    move-object/from16 v3, v79

    move-object/from16 v4, v80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 451
    .end local v75    # "proxy":Ljava/lang/String;
    .end local v76    # "port":Ljava/lang/String;
    .end local v79    # "exclList":Ljava/lang/String;
    .end local v80    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v75

    .line 453
    .restart local v75    # "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v76

    .line 454
    .restart local v76    # "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v77

    .line 455
    .local v77, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 456
    .local v78, "password":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v79

    .line 457
    .restart local v79    # "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/net/Uri;

    .restart local v80    # "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v74, p0

    .line 458
    invoke-virtual/range {v74 .. v80}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 465
    .end local v75    # "proxy":Ljava/lang/String;
    .end local v76    # "port":Ljava/lang/String;
    .end local v77    # "username":Ljava/lang/String;
    .end local v78    # "password":Ljava/lang/String;
    .end local v79    # "exclList":Ljava/lang/String;
    .end local v80    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    const/16 v124, 0x0

    .line 467
    .local v124, "proxyInfo":Landroid/net/ProxyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_17

    .line 468
    sget-object v5, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v124

    .end local v124    # "proxyInfo":Landroid/net/ProxyInfo;
    check-cast v124, Landroid/net/ProxyInfo;

    .line 470
    .restart local v124    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v124

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 471
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 476
    .end local v124    # "proxyInfo":Landroid/net/ProxyInfo;
    :sswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 478
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 482
    :sswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 484
    .local v106, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v129

    .line 485
    .local v129, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 486
    .local v53, "args":[Ljava/lang/String;
    if-eqz v106, :cond_18

    .line 487
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 489
    :try_start_0
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_18
    :goto_16
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 497
    .end local v53    # "args":[Ljava/lang/String;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v129    # "service":Landroid/os/IBinder;
    :sswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 499
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v129

    .line 500
    .restart local v129    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 501
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_19

    .line 502
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 504
    :try_start_1
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 508
    :cond_19
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 512
    .end local v53    # "args":[Ljava/lang/String;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v129    # "service":Landroid/os/IBinder;
    :sswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v82

    .line 515
    .local v82, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 516
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 517
    .restart local v42    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .line 518
    .local v85, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v86

    .line 519
    .local v86, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v87, 0x1

    .line 520
    .local v87, "ordered":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    const/16 v88, 0x1

    .line 521
    .local v88, "sticky":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 522
    .restart local v46    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .restart local v47    # "processState":I
    move-object/from16 v81, p0

    move-object/from16 v83, v12

    move/from16 v84, v42

    move/from16 v89, v46

    move/from16 v90, v47

    .line 523
    invoke-virtual/range {v81 .. v90}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 525
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 519
    .end local v46    # "sendingUser":I
    .end local v47    # "processState":I
    .end local v87    # "ordered":Z
    .end local v88    # "sticky":Z
    :cond_1a
    const/16 v87, 0x0

    goto :goto_18

    .line 520
    .restart local v87    # "ordered":Z
    :cond_1b
    const/16 v88, 0x0

    goto :goto_19

    .line 530
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v42    # "resultCode":I
    .end local v82    # "receiver":Landroid/content/IIntentReceiver;
    .end local v85    # "dataStr":Ljava/lang/String;
    .end local v86    # "extras":Landroid/os/Bundle;
    .end local v87    # "ordered":Z
    :sswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 532
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 537
    :sswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 539
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 540
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 541
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 543
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 544
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 549
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :sswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v98

    .line 551
    .local v98, "activityToken":Landroid/os/IBinder;
    new-instance v135, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v0, v135

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Landroid/os/Parcel;)V

    .line 552
    .local v135, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 553
    .local v116, "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v135

    move/from16 v3, v116

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowStyleChanged(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 559
    .end local v98    # "activityToken":Landroid/os/IBinder;
    .end local v116    # "notifyReason":I
    .end local v135    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :sswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v98

    .line 561
    .restart local v98    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_1d

    const/4 v5, 0x1

    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    const/16 v31, 0x1

    move/from16 v0, v31

    if-ne v11, v0, :cond_1e

    const/4 v11, 0x1

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v13, v5, v11}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowFocusChanged(Landroid/os/IBinder;IZZ)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 561
    :cond_1d
    const/4 v5, 0x0

    goto :goto_1a

    :cond_1e
    const/4 v11, 0x0

    goto :goto_1b

    .line 567
    .end local v98    # "activityToken":Landroid/os/IBinder;
    :sswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v98

    .line 569
    .restart local v98    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleMultiWindowExitByCloseBtn(Landroid/os/IBinder;)V

    .line 570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 578
    .end local v98    # "activityToken":Landroid/os/IBinder;
    :sswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 580
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 581
    .restart local v30    # "displayId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleActivityDisplayIdChanged(Landroid/os/IBinder;I)V

    .line 582
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 590
    .end local v30    # "displayId":I
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 592
    .restart local v30    # "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleApplicationDisplayIdChanged(I)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 599
    .end local v30    # "displayId":I
    :sswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 601
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 602
    .local v121, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 603
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_1f

    .line 604
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v121

    move-object/from16 v2, v53

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpContextRelationInfo(Ljava/io/FileDescriptor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 606
    :try_start_2
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 610
    :cond_1f
    :goto_1c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 615
    .end local v53    # "args":[Ljava/lang/String;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "prefix":Ljava/lang/String;
    :sswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    new-instance v68, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;

    invoke-direct/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;-><init>()V

    .line 617
    .restart local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    const/16 v110, 0x0

    .local v110, "i":I
    :goto_1d
    const/4 v5, 0x4

    move/from16 v0, v110

    if-ge v0, v5, :cond_20

    .line 618
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/res/Configuration;

    .line 619
    .restart local v37    # "config":Landroid/content/res/Configuration;
    if-eqz v37, :cond_20

    move-object/from16 v0, v37

    iget v5, v0, Landroid/content/res/Configuration;->displayId:I

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_20

    invoke-virtual/range {v68 .. v68}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->size()I

    move-result v5

    move-object/from16 v0, v37

    iget v11, v0, Landroid/content/res/Configuration;->displayId:I

    if-le v5, v11, :cond_21

    .line 622
    .end local v37    # "config":Landroid/content/res/Configuration;
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationsChanged(Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;)V

    .line 623
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 620
    .restart local v37    # "config":Landroid/content/res/Configuration;
    :cond_21
    move-object/from16 v0, v37

    iget v5, v0, Landroid/content/res/Configuration;->displayId:I

    move-object/from16 v0, v68

    move-object/from16 v1, v37

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 617
    add-int/lit8 v110, v110, 0x1

    goto :goto_1d

    .line 628
    .end local v37    # "config":Landroid/content/res/Configuration;
    .end local v68    # "configs":Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList;, "Lcom/samsung/android/multidisplay/common/UnRestrictedArrayList<Landroid/content/res/Configuration;>;"
    .end local v110    # "i":I
    :sswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v132, 0x1

    .line 630
    .local v132, "shrinkRequested":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v132

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setShrinkRequestedState(Z)V

    .line 631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 629
    .end local v132    # "shrinkRequested":Z
    :cond_22
    const/16 v132, 0x0

    goto :goto_1e

    .line 637
    :sswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 639
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 640
    .local v137, "toDisplayId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 641
    .restart local v116    # "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v137

    move/from16 v3, v116

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleSendShrinkRequest(Landroid/os/IBinder;II)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 648
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v116    # "notifyReason":I
    .end local v137    # "toDisplayId":I
    :sswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 650
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 651
    .restart local v116    # "notifyReason":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleSendExpandRequest(Landroid/os/IBinder;I)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 659
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v116    # "notifyReason":I
    :sswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v134, 0x1

    .line 661
    .local v134, "start":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v122

    .line 662
    .local v122, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 664
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v134

    move-object/from16 v2, v28

    move/from16 v3, v122

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 665
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 660
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v122    # "profileType":I
    .end local v134    # "start":Z
    :cond_23
    const/16 v134, 0x0

    goto :goto_1f

    .line 662
    .restart local v122    # "profileType":I
    .restart local v134    # "start":Z
    :cond_24
    const/16 v28, 0x0

    goto :goto_20

    .line 670
    .end local v122    # "profileType":I
    .end local v134    # "start":Z
    :sswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v109

    .line 672
    .local v109, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v109

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 673
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 678
    .end local v109    # "group":I
    :sswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/content/pm/ApplicationInfo;

    .line 680
    .local v99, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 681
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v100

    .line 682
    .local v100, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v18

    move/from16 v3, v100

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 683
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 688
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v99    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v100    # "backupMode":I
    :sswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/content/pm/ApplicationInfo;

    .line 690
    .restart local v99    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 691
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v99

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 692
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 697
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v99    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :sswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v102

    .line 699
    .local v102, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v118

    .line 700
    .local v118, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v102

    move-object/from16 v2, v118

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 701
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 706
    .end local v102    # "cmd":I
    .end local v118    # "packages":[Ljava/lang/String;
    :sswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .line 708
    .local v115, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 709
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 714
    .end local v115    # "msg":Ljava/lang/String;
    :sswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v114, 0x1

    .line 716
    .local v114, "managed":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v119

    .line 717
    .restart local v119    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v106, v5

    .line 719
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_22
    move-object/from16 v0, p0

    move/from16 v1, v114

    move-object/from16 v2, v119

    move-object/from16 v3, v106

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 720
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 715
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v114    # "managed":Z
    .end local v119    # "path":Ljava/lang/String;
    :cond_25
    const/16 v114, 0x0

    goto :goto_21

    .line 717
    .restart local v114    # "managed":Z
    .restart local v119    # "path":Ljava/lang/String;
    :cond_26
    const/16 v106, 0x0

    goto :goto_22

    .line 724
    .end local v114    # "managed":Z
    .end local v119    # "path":Ljava/lang/String;
    :sswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 726
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v97

    .line 727
    .local v97, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 728
    .restart local v121    # "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 729
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_27

    .line 730
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v121

    move-object/from16 v3, v53

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 732
    :try_start_3
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 736
    :cond_27
    :goto_23
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 740
    .end local v53    # "args":[Ljava/lang/String;
    .end local v97    # "activity":Landroid/os/IBinder;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v121    # "prefix":Ljava/lang/String;
    :sswitch_34
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v130

    .line 742
    .local v130, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 743
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 747
    .end local v130    # "settings":Landroid/os/Bundle;
    :sswitch_35
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v120

    .line 749
    .local v120, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Landroid/content/res/CompatibilityInfo;

    .line 750
    .local v103, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move-object/from16 v2, v103

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 751
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 755
    .end local v103    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v120    # "pkg":Ljava/lang/String;
    :sswitch_36
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v113

    .line 757
    .local v113, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 758
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 763
    .end local v113    # "level":I
    :sswitch_37
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 765
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Landroid/os/Debug$MemoryInfo;

    .line 766
    .local v91, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_29

    const/16 v92, 0x1

    .line 767
    .local v92, "checkin":Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v93, 0x1

    .line 768
    .local v93, "dumpInfo":Z
    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v94, 0x1

    .line 769
    .local v94, "dumpDalvik":Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v95, 0x1

    .line 770
    .local v95, "dumpSummaryOnly":Z
    :goto_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 771
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_28

    .line 773
    :try_start_4
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v90

    move-object/from16 v89, p0

    move-object/from16 v96, v53

    invoke-virtual/range {v89 .. v96}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 777
    :try_start_5
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 783
    :cond_28
    :goto_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 766
    .end local v53    # "args":[Ljava/lang/String;
    .end local v92    # "checkin":Z
    .end local v93    # "dumpInfo":Z
    .end local v94    # "dumpDalvik":Z
    .end local v95    # "dumpSummaryOnly":Z
    :cond_29
    const/16 v92, 0x0

    goto :goto_24

    .line 767
    .restart local v92    # "checkin":Z
    :cond_2a
    const/16 v93, 0x0

    goto :goto_25

    .line 768
    .restart local v93    # "dumpInfo":Z
    :cond_2b
    const/16 v94, 0x0

    goto :goto_26

    .line 769
    .restart local v94    # "dumpDalvik":Z
    :cond_2c
    const/16 v95, 0x0

    goto :goto_27

    .line 776
    .restart local v53    # "args":[Ljava/lang/String;
    .restart local v95    # "dumpSummaryOnly":Z
    :catchall_0
    move-exception v5

    .line 777
    :try_start_6
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 780
    :goto_29
    throw v5

    .line 789
    .end local v53    # "args":[Ljava/lang/String;
    .end local v91    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v92    # "checkin":Z
    .end local v93    # "dumpInfo":Z
    .end local v94    # "dumpDalvik":Z
    .end local v95    # "dumpSummaryOnly":Z
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_38
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 791
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 792
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_2d

    .line 794
    :try_start_7
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 797
    :try_start_8
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 803
    :cond_2d
    :goto_2a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 796
    :catchall_1
    move-exception v5

    .line 797
    :try_start_9
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 800
    :goto_2b
    throw v5

    .line 809
    .end local v53    # "args":[Ljava/lang/String;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_39
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v106

    .line 811
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v53

    .line 812
    .restart local v53    # "args":[Ljava/lang/String;
    if-eqz v106, :cond_2e

    .line 814
    :try_start_a
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 817
    :try_start_b
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 823
    :cond_2e
    :goto_2c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 816
    :catchall_2
    move-exception v5

    .line 817
    :try_start_c
    invoke-virtual/range {v106 .. v106}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 820
    :goto_2d
    throw v5

    .line 829
    .end local v53    # "args":[Ljava/lang/String;
    .end local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    :sswitch_3a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v123

    .line 831
    .local v123, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 838
    .end local v123    # "provider":Landroid/os/IBinder;
    :sswitch_3b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v98

    .line 840
    .restart local v98    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v126

    .line 841
    .local v126, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 842
    .local v127, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v126

    move/from16 v3, v127

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 849
    .end local v98    # "activityToken":Landroid/os/IBinder;
    .end local v126    # "requestToken":Landroid/os/IBinder;
    .end local v127    # "requestType":I
    :sswitch_3c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 851
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_2f

    const/16 v136, 0x1

    .line 852
    .local v136, "timeout":Z
    :goto_2e
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 853
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 851
    .end local v136    # "timeout":Z
    :cond_2f
    const/16 v136, 0x0

    goto :goto_2e

    .line 859
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_3d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 861
    .restart local v49    # "token":Landroid/os/IBinder;
    new-instance v117, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v117

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 862
    .local v117, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 869
    .end local v49    # "token":Landroid/os/IBinder;
    .end local v117    # "options":Landroid/app/ActivityOptions;
    :sswitch_3e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 870
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 871
    .local v22, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 872
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 873
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 878
    .end local v22    # "state":I
    :sswitch_3f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v123

    check-cast v123, Landroid/content/pm/ProviderInfo;

    .line 880
    .local v123, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 887
    .end local v123    # "provider":Landroid/content/pm/ProviderInfo;
    :sswitch_40
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v98

    .line 889
    .restart local v98    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .line 890
    .restart local v115    # "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v98

    move-object/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleResetTargetHeapUtilization(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 891
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 898
    .end local v98    # "activityToken":Landroid/os/IBinder;
    .end local v115    # "msg":Ljava/lang/String;
    :sswitch_41
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    sget-object v5, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v104

    check-cast v104, Landroid/view/DisplayInfo;

    .line 900
    .local v104, "dInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleDisplayMetricsChanged(Landroid/view/DisplayInfo;)V

    .line 901
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 907
    .end local v104    # "dInfo":Landroid/view/DisplayInfo;
    :sswitch_42
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 908
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v111

    .line 909
    .local v111, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v111

    if-ne v0, v5, :cond_30

    const/4 v5, 0x1

    :goto_2f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 909
    :cond_30
    const/4 v5, 0x0

    goto :goto_2f

    .line 916
    .end local v111    # "is24Hour":B
    :sswitch_43
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 918
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 925
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_44
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 927
    .restart local v49    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_31

    const/16 v105, 0x1

    .line 928
    .local v105, "enabled":Z
    :goto_30
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v105

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 927
    .end local v105    # "enabled":Z
    :cond_31
    const/16 v105, 0x0

    goto :goto_30

    .line 935
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_45
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v49

    .line 937
    .restart local v49    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 938
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 944
    .end local v49    # "token":Landroid/os/IBinder;
    :sswitch_46
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v108

    .line 946
    .local v108, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v108

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 947
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 490
    .end local v108    # "firstPacket":[B
    .restart local v53    # "args":[Ljava/lang/String;
    .restart local v106    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v129    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_16

    .line 505
    :catch_1
    move-exception v5

    goto/16 :goto_17

    .line 607
    .end local v129    # "service":Landroid/os/IBinder;
    .restart local v121    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1c

    .line 733
    .restart local v97    # "activity":Landroid/os/IBinder;
    :catch_3
    move-exception v5

    goto/16 :goto_23

    .line 778
    .end local v97    # "activity":Landroid/os/IBinder;
    .end local v121    # "prefix":Ljava/lang/String;
    .restart local v91    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v92    # "checkin":Z
    .restart local v93    # "dumpInfo":Z
    .restart local v94    # "dumpDalvik":Z
    .restart local v95    # "dumpSummaryOnly":Z
    :catch_4
    move-exception v5

    goto/16 :goto_28

    :catch_5
    move-exception v11

    goto/16 :goto_29

    .line 798
    .end local v91    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v92    # "checkin":Z
    .end local v93    # "dumpInfo":Z
    .end local v94    # "dumpDalvik":Z
    .end local v95    # "dumpSummaryOnly":Z
    :catch_6
    move-exception v5

    goto/16 :goto_2a

    :catch_7
    move-exception v11

    goto/16 :goto_2b

    .line 818
    :catch_8
    move-exception v5

    goto/16 :goto_2c

    :catch_9
    move-exception v11

    goto/16 :goto_2d

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_9
        0x9 -> :sswitch_a
        0xa -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_12
        0xd -> :sswitch_13
        0xe -> :sswitch_14
        0x10 -> :sswitch_16
        0x11 -> :sswitch_11
        0x12 -> :sswitch_17
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_1d
        0x17 -> :sswitch_1f
        0x18 -> :sswitch_20
        0x19 -> :sswitch_21
        0x1a -> :sswitch_8
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2c
        0x1d -> :sswitch_2d
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_2f
        0x20 -> :sswitch_3d
        0x21 -> :sswitch_15
        0x22 -> :sswitch_30
        0x23 -> :sswitch_31
        0x24 -> :sswitch_32
        0x25 -> :sswitch_33
        0x26 -> :sswitch_18
        0x27 -> :sswitch_19
        0x28 -> :sswitch_34
        0x29 -> :sswitch_35
        0x2a -> :sswitch_36
        0x2b -> :sswitch_37
        0x2c -> :sswitch_38
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_39
        0x2f -> :sswitch_3a
        0x30 -> :sswitch_3b
        0x31 -> :sswitch_3c
        0x32 -> :sswitch_3e
        0x33 -> :sswitch_3f
        0x34 -> :sswitch_42
        0x35 -> :sswitch_43
        0x36 -> :sswitch_44
        0x37 -> :sswitch_45
        0x38 -> :sswitch_46
        0x3e9 -> :sswitch_22
        0x3ea -> :sswitch_23
        0x3eb -> :sswitch_24
        0x5dd -> :sswitch_1a
        0x7d0 -> :sswitch_40
        0x7d1 -> :sswitch_b
        0x9c5 -> :sswitch_41
        0xbba -> :sswitch_25
        0xbbb -> :sswitch_27
        0xbbc -> :sswitch_e
        0xbbd -> :sswitch_28
        0xbbe -> :sswitch_26
        0xbbf -> :sswitch_29
        0xbc0 -> :sswitch_2a
        0xbc1 -> :sswitch_2b
        0xbc2 -> :sswitch_1b
        0xbcd -> :sswitch_5
    .end sparse-switch
.end method
