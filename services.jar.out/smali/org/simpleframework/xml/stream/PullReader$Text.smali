.class Lorg/simpleframework/xml/stream/PullReader$Text;
.super Lorg/simpleframework/xml/stream/EventToken;
.source "PullReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simpleframework/xml/stream/PullReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Text"
.end annotation


# instance fields
.field private final source:Lorg/xmlpull/v1/XmlPullParser;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "source"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/EventToken;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->source:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader$Text;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isText()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method
