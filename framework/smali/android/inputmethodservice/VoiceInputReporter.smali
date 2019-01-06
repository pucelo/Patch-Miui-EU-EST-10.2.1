.class public Landroid/inputmethodservice/VoiceInputReporter;
.super Ljava/lang/Object;
.source "VoiceInputReporter.java"


# static fields
.field private static final BAIDU_IME_PKGNAME:Ljava/lang/String; = "com.baidu.input_mi"

.field public static final EVENT_NO_NETWORK:I = 0x3

.field public static final EVENT_VOICE_BTN_PRESSED:I = 0x2

.field public static final EVENT_VOICE_BTN_SHOW:I = 0x1

.field private static final KEY_NO_NETWORK_BAIDU:Ljava/lang/String; = "show_no_network_dialog_from_baidu"

.field private static final KEY_NO_NETWORK_SOGOU:Ljava/lang/String; = "show_no_network_dialog_from_sogou"

.field private static final KEY_VOICE_BTN_PRESSED_BAIDU:Ljava/lang/String; = "press_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_PRESSED_SOGOU:Ljava/lang/String; = "press_voice_input_button_from_sogou"

.field private static final KEY_VOICE_BTN_SHOWN_BAIDU:Ljava/lang/String; = "show_voice_input_button_from_baidu"

.field private static final KEY_VOICE_BTN_SHOWN_SOGOU:Ljava/lang/String; = "show_voice_input_button_from_sogou"

.field private static final MQS_REPORT_MODULE:Ljava/lang/String; = "InputMethod"

.field private static final SOGOU_IME_PKGNAME:Ljava/lang/String; = "com.sohu.inputmethod.sogou.xiaomi"

.field private static final TAG:Ljava/lang/String; = "VoiceInputReporter"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v2, "show_voice_input_button_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_voice_input_button_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "press_voice_input_button_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "press_voice_input_button_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_no_network_dialog_from_sogou"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "show_no_network_dialog_from_baidu"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    :goto_3b
    return-object v0

    :catch_3c
    move-exception v1

    const-string/jumbo v2, "VoiceInputReporter"

    const-string/jumbo v3, "build base json fail"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method static reportEvent(ILjava/lang/String;)V
    .registers 9

    :try_start_0
    const-string/jumbo v3, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    const-string/jumbo v3, "com.baidu.input_mi"

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "only support baidu or sogou"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1e
    invoke-static {}, Landroid/inputmethodservice/VoiceInputReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_44

    if-eqz v2, :cond_40

    const-string/jumbo v3, "show_voice_input_button_from_sogou"

    :goto_2a
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_30
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v3

    const-string/jumbo v4, "InputMethod"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3f
    return-void

    :cond_40
    const-string/jumbo v3, "show_voice_input_button_from_baidu"

    goto :goto_2a

    :cond_44
    const/4 v3, 0x2

    if-ne p0, v3, :cond_62

    if-eqz v2, :cond_5e

    const-string/jumbo v3, "press_voice_input_button_from_sogou"

    :goto_4c
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_30

    :catch_53
    move-exception v1

    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "report event fail"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :cond_5e
    :try_start_5e
    const-string/jumbo v3, "press_voice_input_button_from_baidu"

    goto :goto_4c

    :cond_62
    const/4 v3, 0x3

    if-ne p0, v3, :cond_75

    if-eqz v2, :cond_71

    const-string/jumbo v3, "show_no_network_dialog_from_sogou"

    :goto_6a
    const-string/jumbo v4, "1"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_30

    :cond_71
    const-string/jumbo v3, "show_no_network_dialog_from_baidu"

    goto :goto_6a

    :cond_75
    const-string/jumbo v3, "VoiceInputReporter"

    const-string/jumbo v4, "event type is wrong"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_5e .. :try_end_7e} :catch_53

    return-void
.end method
