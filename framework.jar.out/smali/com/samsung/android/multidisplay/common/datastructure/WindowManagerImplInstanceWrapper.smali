.class Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;
.super Ljava/lang/Object;
.source "WindowManagerImplInstanceWrapper.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;


# static fields
.field private static final CALLSTACK_DUMP_PREFIX:Ljava/lang/String; = "                         "

.field public static final DEBUG:Z

.field public static final DUMP_DETAIL:Z

.field public static final TAG:Ljava/lang/String; = "WindowManagerImplInstanceHandler"


# instance fields
.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field lastDisplayId:I

.field private mContextCallStack:Ljava/lang/String;

.field private mContextTimeStamp:J

.field private mWindowManagerImplCallStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManagerImplRefList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/WindowManagerImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWindowManagerImplTimeStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceHandler;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_itemRef"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->lastDisplayId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextTimeStamp:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->lastDisplayId:I

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplCallStacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextTimeStamp:J

    const/16 v0, 0x19

    const-string v1, "                         "

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->trimCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public addWindowManagerImplRef(Landroid/view/WindowManagerImpl;)V
    .locals 10
    .param p1, "wm"    # Landroid/view/WindowManagerImpl;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "refSize":I
    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v2

    :cond_2
    const/4 v4, 0x0

    .local v4, "tempWindowManagerImpl":Landroid/view/WindowManagerImpl;
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .local v3, "tempDisplayRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tempWindowManagerImpl":Landroid/view/WindowManagerImpl;
    check-cast v4, Landroid/view/WindowManagerImpl;

    .restart local v4    # "tempWindowManagerImpl":Landroid/view/WindowManagerImpl;
    if-eqz v4, :cond_3

    if-ne v4, p1, :cond_3

    goto :goto_0

    .end local v3    # "tempDisplayRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_4
    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .local v5, "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v6, :cond_5

    const/16 v6, 0x19

    const-string v7, "                         "

    invoke-static {v6, v7}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStack":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->trimCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "callStack":Ljava/lang/String;
    :cond_5
    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowManagerImplInstanceHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDisplayRef() : wm= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " refSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " final size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpCallStack"    # Z

    .prologue
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .local v6, "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManagerImpl;

    .local v5, "wm":Landroid/view/WindowManagerImpl;
    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .local v2, "id":I
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Landroid/view/WindowManagerImpl;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .local v0, "d":Landroid/view/Display;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "@0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v7, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v7, :cond_1

    new-instance v4, Ljava/util/Date;

    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Ljava/util/Date;-><init>(J)V

    .local v4, "time":Ljava/util/Date;
    sget-object v8, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v8

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "d":Landroid/view/Display;
    .end local v4    # "time":Ljava/util/Date;
    :cond_1
    :goto_1
    const-string/jumbo v7, "}"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v7, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v7, :cond_0

    if-eqz p3, :cond_0

    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0    # "d":Landroid/view/Display;
    .restart local v4    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .end local v0    # "d":Landroid/view/Display;
    .end local v4    # "time":Ljava/util/Date;
    :cond_2
    const-string/jumbo v7, "null"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "id":I
    .end local v5    # "wm":Landroid/view/WindowManagerImpl;
    .end local v6    # "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_3
    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v7, "no reference"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public garbageCollect()V
    .locals 8

    .prologue
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .local v2, "removingWindowManagerImplRefList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;>;"
    const/4 v4, 0x0

    .local v4, "wm":Landroid/view/WindowManagerImpl;
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .local v3, "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "wm":Landroid/view/WindowManagerImpl;
    check-cast v4, Landroid/view/WindowManagerImpl;

    .restart local v4    # "wm":Landroid/view/WindowManagerImpl;
    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .restart local v3    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManagerImplInstanceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "garbageCollect() : removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v3    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "WindowManagerImplInstanceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "garbageCollect() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public getCallStack()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->getObject()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManagerImplRefSize()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "wmRefSize":I
    iget-object v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerImpl;

    .local v1, "wm":Landroid/view/WindowManagerImpl;
    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "wm":Landroid/view/WindowManagerImpl;
    .end local v2    # "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_1
    return v3
.end method

.method public release()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Context {"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "outerContext":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_1

    const-string v5, "a "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mContextTimeStamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v4, "time":Ljava/util/Date;
    sget-object v6, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v6

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "time":Ljava/util/Date;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " wmSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->getWindowManagerImplRefSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "id":I
    .end local v2    # "outerContext":Landroid/content/Context;
    :goto_1
    const-string/jumbo v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v2    # "outerContext":Landroid/content/Context;
    :cond_1
    instance-of v5, v2, Landroid/app/Service;

    if-eqz v5, :cond_2

    const-string/jumbo v5, "s "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_3

    const-string/jumbo v5, "p "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    instance-of v5, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "t "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
    const-string v5, "c "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .restart local v1    # "id":I
    .restart local v4    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .end local v1    # "id":I
    .end local v2    # "outerContext":Landroid/content/Context;
    .end local v4    # "time":Ljava/util/Date;
    :cond_5
    const-string/jumbo v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public updateDisplay(IZ)V
    .locals 17
    .param p1, "displayId"    # I
    .param p2, "force"    # Z

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .local v3, "context":Landroid/content/Context;
    if-eqz v3, :cond_8

    sget-boolean v14, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v14, :cond_0

    const-string v14, "WindowManagerImplInstanceHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "update window manager of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v11, 0x0

    .local v11, "token":Landroid/os/IBinder;
    instance-of v14, v3, Landroid/app/Activity;

    if-eqz v14, :cond_1

    move-object v2, v3

    check-cast v2, Landroid/app/Activity;

    .local v2, "a":Landroid/app/Activity;
    invoke-virtual {v2}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v11

    .end local v2    # "a":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    .local v6, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v6, v0, v14}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v5

    .local v5, "display":Landroid/view/Display;
    sget-boolean v14, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v14, :cond_2

    const-string v14, "WindowManagerImplInstanceHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "updateDisplay() : displayId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " display="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " token="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " mWindowManagerImplRefList size="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/ref/WeakReference;

    .local v13, "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    invoke-virtual {v13}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManagerImpl;

    .local v12, "wm":Landroid/view/WindowManagerImpl;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    move/from16 v0, p1

    if-eq v14, v0, :cond_3

    if-nez p2, :cond_4

    invoke-virtual {v12}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getDisplayId()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->lastDisplayId:I

    if-ne v14, v15, :cond_3

    :cond_4
    sget-boolean v14, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DEBUG:Z

    if-eqz v14, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v9, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .local v4, "d":Landroid/view/Display;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "{d"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "@0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplRefList:Ljava/util/LinkedList;

    invoke-virtual {v14, v13}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .local v8, "id":I
    sget-boolean v14, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v14, :cond_5

    new-instance v10, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->mWindowManagerImplTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-direct {v10, v14, v15}, Ljava/util/Date;-><init>(J)V

    .local v10, "time":Ljava/util/Date;
    sget-object v15, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v15

    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v16, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v10    # "time":Ljava/util/Date;
    :cond_5
    const-string/jumbo v14, "}"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "WindowManagerImplInstanceHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "update display of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to d"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "d":Landroid/view/Display;
    .end local v8    # "id":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {v12, v5}, Landroid/view/WindowManagerImpl;->setDisplay(Landroid/view/Display;)V

    goto/16 :goto_0

    .restart local v4    # "d":Landroid/view/Display;
    .restart local v8    # "id":I
    .restart local v9    # "sb":Ljava/lang/StringBuilder;
    .restart local v10    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v14

    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .end local v4    # "d":Landroid/view/Display;
    .end local v8    # "id":I
    .end local v9    # "sb":Ljava/lang/StringBuilder;
    .end local v10    # "time":Ljava/util/Date;
    .end local v12    # "wm":Landroid/view/WindowManagerImpl;
    .end local v13    # "wmRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/WindowManagerImpl;>;"
    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->lastDisplayId:I

    .end local v5    # "display":Landroid/view/Display;
    .end local v6    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "token":Landroid/os/IBinder;
    :cond_8
    return-void
.end method

.method public varargs updateRelatedInfo([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "displayId":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceWrapper;->updateDisplay(IZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "displayId":I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
