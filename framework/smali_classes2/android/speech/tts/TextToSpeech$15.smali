.class Landroid/speech/tts/TextToSpeech$15;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getDefaultVoice()Landroid/speech/tts/Voice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Landroid/speech/tts/Voice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$15;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getClientDefaultLanguage()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    array-length v9, v1

    if-nez v9, :cond_17

    :cond_d
    const-string/jumbo v9, "TextToSpeech"

    const-string/jumbo v10, "service.getClientDefaultLanguage() returned empty array"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_17
    aget-object v2, v1, v10

    array-length v9, v1

    if-le v9, v12, :cond_2a

    aget-object v0, v1, v12

    :goto_1e
    array-length v9, v1

    if-le v9, v13, :cond_2e

    aget-object v4, v1, v13

    :goto_23
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_32

    return-object v11

    :cond_2a
    const-string/jumbo v0, ""

    goto :goto_1e

    :cond_2e
    const-string/jumbo v4, ""

    goto :goto_23

    :cond_32
    invoke-interface {p1, v2, v0, v4}, Landroid/speech/tts/ITextToSpeechService;->getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3d

    return-object v11

    :cond_3d
    invoke-interface {p1}, Landroid/speech/tts/ITextToSpeechService;->getVoices()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_44

    return-object v11

    :cond_44
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_48
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/speech/tts/Voice;

    invoke-virtual {v5}, Landroid/speech/tts/Voice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    return-object v5

    :cond_5f
    return-object v11
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$15;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    move-result-object v0

    return-object v0
.end method
