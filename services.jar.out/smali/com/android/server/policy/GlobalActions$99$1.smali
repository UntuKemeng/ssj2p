.class Lcom/android/server/policy/GlobalActions$99$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$99;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$99;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$99;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$99$1;->this$1:Lcom/android/server/policy/GlobalActions$99;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    sput p2, Lcom/android/server/policy/GlobalActions$SinglePressAction;->rebootMode:I

    return-void
.end method
