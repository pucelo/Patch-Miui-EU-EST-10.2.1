.class public Landroid/inputmethodservice/VoiceInputHelper;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/VoiceInputHelper$1;,
        Landroid/inputmethodservice/VoiceInputHelper$2;,
        Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;,
        Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    }
.end annotation


# static fields
.field public static final API_KEY:Ljava/lang/String; = "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

.field public static final CLIENT_ID:Ljava/lang/String; = "2882303761517744214"

.field private static final DEBUG:Z = true

.field private static final DETECTION_PREFIX:Ljava/lang/String; = "..."

.field private static final DETECTION_SHOW_MAX_LEN:I = 0xe

.field public static final MI_BRAIN_ASR_SERVICE:Ljava/lang/String; = "com.xiaomi.mibrain.speech.asr.AsrService"

.field public static final MI_BRAIN_PKG:Ljava/lang/String; = "com.xiaomi.mibrain.speech"

.field public static final PERMISSION_RECORD_AUDIO:Ljava/lang/String; = "android.permission.RECORD_AUDIO"

.field public static final SIGN_SECRET:Ljava/lang/String; = "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

.field private static final TAG:Ljava/lang/String; = "VoiceInputHelper"

.field private static blacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

.field private static sIsInSpeech:Z

.field private static sIsSpeechRecognizerReady:Z

.field private static sRandom:Ljava/util/Random;

.field private static sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private static supportedImes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;
    .registers 1

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sRandom:Ljava/util/Random;

    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$1;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$1;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    new-instance v0, Landroid/inputmethodservice/VoiceInputHelper$2;

    invoke-direct {v0}, Landroid/inputmethodservice/VoiceInputHelper$2;-><init>()V

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .registers 2

    const/4 v1, 0x0

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_16

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    sput-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    const-string/jumbo v0, "destroy...success."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "destroy...sSpeechRecognizer already is null."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static enforceAudioPermission(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static enforceMiSpeechSupport(Landroid/content/Context;)Z
    .registers 7

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.xiaomi.mibrain.speech"

    const-string/jumbo v5, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enforceMiSpeechSupport, service size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3b

    const/4 v3, 0x1

    :cond_3b
    return v3
.end method

.method public static formatText(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-le v1, v2, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xe

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    :goto_2f
    return-object v0

    :cond_30
    move-object v0, p0

    goto :goto_2f
.end method

.method public static getErrorStr(I)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "UNKNOWN"

    packed-switch p0, :pswitch_data_2c

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "ERROR_NETWORK_TIMEOUT"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "ERROR_NETWORK"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "ERROR_AUDIO"

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "ERROR_SERVER"

    goto :goto_6

    :pswitch_17
    const-string/jumbo v0, "ERROR_CLIENT"

    goto :goto_6

    :pswitch_1b
    const-string/jumbo v0, "ERROR_SPEECH_TIMEOUT"

    goto :goto_6

    :pswitch_1f
    const-string/jumbo v0, "ERROR_NO_MATCH"

    goto :goto_6

    :pswitch_23
    const-string/jumbo v0, "ERROR_RECOGNIZER_BUSY"

    goto :goto_6

    :pswitch_27
    const-string/jumbo v0, "ERROR_INSUFFICIENT_PERMISSIONS"

    goto :goto_6

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V

    return-void
.end method

.method public static initSpeech(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .registers 7

    const/4 v3, 0x1

    const-string/jumbo v0, "initSpeech....start"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceAudioPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "No permission:android.permission.RECORD_AUDIO"

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void

    :cond_17
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->destroy()V

    invoke-static {p0}, Landroid/inputmethodservice/VoiceInputHelper;->enforceMiSpeechSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.xiaomi.mibrain.speech"

    const-string/jumbo v2, "com.xiaomi.mibrain.speech.asr.AsrService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    sput-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    const-string/jumbo v0, "Mi brain supported."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    new-instance v1, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;

    invoke-direct {v1, p0, p1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;-><init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    sput-boolean v3, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    sput-object p2, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    const-string/jumbo v0, "initSpeech...success."

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void

    :cond_4c
    const-string/jumbo v0, "Mi brain UN-supported."

    invoke-static {v3, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void
.end method

.method public static isSpeechRecognizerReady()Z
    .registers 1

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return-void
.end method

.method public static log(ZLjava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "VoiceInputHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Niel..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setCallback(Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;)V
    .registers 1

    sput-object p0, Landroid/inputmethodservice/VoiceInputHelper;->sCallback:Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    return-void
.end method

.method public static setIsInSpeech(Z)V
    .registers 1

    sput-boolean p0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    return-void
.end method

.method public static showSpeechBar(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->isSpeechRecognizerReady()Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "SpeechRecognizer is NOT ready!"

    invoke-static {v4, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return v5

    :cond_f
    if-nez p1, :cond_17

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_17

    if-nez p0, :cond_4c

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFullScreenMode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", isInternationalBuild="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", editorInfo="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_40

    const-string/jumbo p0, "null"

    :cond_40
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_4c
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v6, 0xff0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inputType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", textVariation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    and-int/lit8 v6, v3, 0x10

    const/16 v7, 0x10

    if-eq v6, v7, :cond_80

    and-int/lit16 v6, v3, 0x90

    const/16 v7, 0x90

    if-ne v6, v7, :cond_87

    :cond_80
    const-string/jumbo v4, "showSpeechBar...password!"

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_87
    and-int/lit16 v6, v3, 0x80

    const/16 v7, 0x80

    if-eq v6, v7, :cond_80

    sget-object v6, Landroid/inputmethodservice/VoiceInputHelper;->supportedImes:Ljava/util/Set;

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ad

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IME not supported, pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    return v5

    :cond_ad
    sget-object v6, Landroid/inputmethodservice/VoiceInputHelper;->blacklist:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showSpeechBar...hit blacklist, pkgName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return v5

    :cond_e1
    iget v6, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v0, v6, 0xff

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Masked imeOptions="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const/4 v6, 0x3

    if-eq v0, v6, :cond_102

    const/4 v6, 0x2

    if-ne v0, v6, :cond_103

    :cond_102
    :goto_102
    return v4

    :cond_103
    move v4, v5

    goto :goto_102
.end method

.method public static startListening(Ljava/lang/String;)V
    .registers 5

    const/4 v3, 0x1

    sget-boolean v1, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    if-eqz v1, :cond_6b

    sget-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v1, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]voice recognizer...pkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string/jumbo v1, "calling_package"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_34
    const-string/jumbo v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "useVad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "client_id"

    const-string/jumbo v2, "2882303761517744214"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "api_key"

    const-string/jumbo v2, "GKGRAg3Rim3Ku6_ZLM77dwjADiVKLrhtva7D8A-9now"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "sign_secret"

    const-string/jumbo v2, "iQGcaANtifIKTw3bRdXOmzpxx9h1jegkIlMsQt2ly6T8udJcLw7VYy7PuyCcE59tuatzhCwzZUMoR1qHa992jw"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "miref"

    const-string/jumbo v2, "com.miui.im_voice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    :goto_6a
    return-void

    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[START]failed, sIsSpeechRecognizerReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_6a
.end method

.method public static stopListening()V
    .registers 2

    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsInSpeech:Z

    if-nez v0, :cond_b

    const-string/jumbo v0, "[STOP]ignore, engine already stopped by itself automatically."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return-void

    :cond_b
    sget-boolean v0, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    if-eqz v0, :cond_1f

    sget-object v0, Landroid/inputmethodservice/VoiceInputHelper;->sSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    const-string/jumbo v0, "[STOP]voice recognizer..."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    :goto_1e
    return-void

    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[STOP]ignore, sIsSpeechRecognizerReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/inputmethodservice/VoiceInputHelper;->sIsSpeechRecognizerReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_1e
.end method
