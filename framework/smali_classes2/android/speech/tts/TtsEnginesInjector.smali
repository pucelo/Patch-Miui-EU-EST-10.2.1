.class Landroid/speech/tts/TtsEnginesInjector;
.super Ljava/lang/Object;
.source "TtsEnginesInjector.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    return-object v4

    :cond_23
    const/4 v4, 0x0

    return-object v4
.end method

.method static getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v1, "com.baidu.duersdk.opensdk"

    const-string/jumbo v0, "com.xiaomi.mibrain.speech"

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "com.xiaomi.mibrain.speech"

    invoke-virtual {p0, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "com.xiaomi.mibrain.speech"

    return-object v2

    :cond_23
    const-string/jumbo v2, "com.baidu.duersdk.opensdk"

    invoke-virtual {p0, v2}, Landroid/speech/tts/TtsEngines;->isEngineInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string/jumbo v2, "com.baidu.duersdk.opensdk"

    return-object v2

    :cond_30
    const/4 v2, 0x0

    return-object v2
.end method
