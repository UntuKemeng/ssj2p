.class Lorg/simpleframework/xml/stream/PullReader;
.super Ljava/lang/Object;
.source "PullReader.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/EventReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/PullReader$1;,
        Lorg/simpleframework/xml/stream/PullReader$End;,
        Lorg/simpleframework/xml/stream/PullReader$Text;,
        Lorg/simpleframework/xml/stream/PullReader$Start;,
        Lorg/simpleframework/xml/stream/PullReader$Entry;
    }
.end annotation


# instance fields
.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field private peek:Lorg/simpleframework/xml/stream/EventNode;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method private attribute(I)Lorg/simpleframework/xml/stream/PullReader$Entry;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Entry;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1, p1}, Lorg/simpleframework/xml/stream/PullReader$Entry;-><init>(Lorg/xmlpull/v1/XmlPullParser;I)V

    return-object v0
.end method

.method private build(Lorg/simpleframework/xml/stream/PullReader$Start;)Lorg/simpleframework/xml/stream/PullReader$Start;
    .locals 4
    .param p1, "event"    # Lorg/simpleframework/xml/stream/PullReader$Start;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/PullReader;->attribute(I)Lorg/simpleframework/xml/stream/PullReader$Entry;

    move-result-object v1

    .local v1, "entry":Lorg/simpleframework/xml/stream/PullReader$Entry;
    invoke-virtual {v1}, Lorg/simpleframework/xml/stream/PullReader$Entry;->isReserved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v1}, Lorg/simpleframework/xml/stream/PullReader$Start;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "entry":Lorg/simpleframework/xml/stream/PullReader$Entry;
    :cond_1
    return-object p1
.end method

.method private end()Lorg/simpleframework/xml/stream/PullReader$End;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$End;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$End;-><init>(Lorg/simpleframework/xml/stream/PullReader$1;)V

    return-object v0
.end method

.method private read()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "event":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->start()Lorg/simpleframework/xml/stream/PullReader$Start;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->text()Lorg/simpleframework/xml/stream/PullReader$Text;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->end()Lorg/simpleframework/xml/stream/PullReader$End;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private start()Lorg/simpleframework/xml/stream/PullReader$Start;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Start;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$Start;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v0, "event":Lorg/simpleframework/xml/stream/PullReader$Start;
    invoke-virtual {v0}, Lorg/simpleframework/xml/stream/PullReader$Start;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/PullReader;->build(Lorg/simpleframework/xml/stream/PullReader$Start;)Lorg/simpleframework/xml/stream/PullReader$Start;

    move-result-object v0

    .end local v0    # "event":Lorg/simpleframework/xml/stream/PullReader$Start;
    :cond_0
    return-object v0
.end method

.method private text()Lorg/simpleframework/xml/stream/PullReader$Text;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/simpleframework/xml/stream/PullReader$Text;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/stream/PullReader$Text;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public next()Lorg/simpleframework/xml/stream/EventNode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    .local v0, "next":Lorg/simpleframework/xml/stream/EventNode;
    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/simpleframework/xml/stream/PullReader;->read()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    goto :goto_0
.end method

.method public peek()Lorg/simpleframework/xml/stream/EventNode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/PullReader;->next()Lorg/simpleframework/xml/stream/EventNode;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    :cond_0
    iget-object v0, p0, Lorg/simpleframework/xml/stream/PullReader;->peek:Lorg/simpleframework/xml/stream/EventNode;

    return-object v0
.end method
