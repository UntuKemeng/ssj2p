.class Landroid/speech/tts/TextToSpeech$Connection$1;
.super Landroid/speech/tts/ITextToSpeechCallback$Stub;
.source "TextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeech$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeech$Connection;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$Connection;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "isStarted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/UtteranceProgressListener;->onStop(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$Connection$1;->this$1:Landroid/speech/tts/TextToSpeech$Connection;

    iget-object v1, v1, Landroid/speech/tts/TextToSpeech$Connection;->this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mUtteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$1300(Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/UtteranceProgressListener;

    move-result-object v0

    .local v0, "listener":Landroid/speech/tts/UtteranceProgressListener;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onDone(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
