.class public Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;
.super Lcom/samsung/android/contextaware/creator/ContextProviderCreator;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$1;,
        Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
    }
.end annotation


# static fields
.field private static sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .param p5, "version"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "runnerCreator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/samsung/android/contextaware/creator/ContextProviderCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;I)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V

    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$1300()Landroid/content/Context;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()Landroid/os/Looper;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$2000()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$2500()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getRunnerCreator()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->removeObj(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getApPowerObservable()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private static getRunnerCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private static setRunnerCreator(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/creator/ContextProviderCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "runnerCreator":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/creator/ContextProviderCreator;>;"
    sput-object p0, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator;->sRunnerCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final getSubCollectionList(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getValueOfList(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/IListObjectCreator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-static {p1}, Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;

    move-result-object v0

    return-object v0
.end method
