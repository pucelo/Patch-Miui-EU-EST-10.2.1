.class public Landroid/service/voice/VoiceInteractionServiceInfo;
.super Ljava/lang/Object;
.source "VoiceInteractionServiceInfo.java"


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceInfo"


# instance fields
.field private mParseError:Ljava/lang/String;

.field private mRecognitionService:Ljava/lang/String;

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSessionService:Ljava/lang/String;

.field private mSettingsActivity:Ljava/lang/String;

.field private mSupportsAssist:Z

.field private mSupportsLaunchFromKeyguard:Z

.field private mSupportsLocalInteraction:Z


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    invoke-static {p2, p3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V
    .registers 16

    const/4 v12, 0x2

    const/4 v11, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_d

    const-string/jumbo v9, "Service not available"

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-void

    :cond_d
    const-string/jumbo v9, "android.permission.BIND_VOICE_INTERACTION"

    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    const-string/jumbo v9, "Service does not require permission android.permission.BIND_VOICE_INTERACTION"

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-void

    :cond_1e
    const/4 v6, 0x0

    :try_start_1f
    const-string/jumbo v9, "android.voice_interaction"

    invoke-virtual {p2, p1, v9}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-nez v6, :cond_46

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No android.voice_interaction meta-data for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_40
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_40} :catch_118
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_40} :catch_cc
    .catchall {:try_start_1f .. :try_end_40} :catchall_13e

    if-eqz v6, :cond_45

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_45
    return-void

    :cond_46
    :try_start_46
    iget-object v9, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    :cond_50
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    if-eq v8, v11, :cond_58

    if-ne v8, v12, :cond_50

    :cond_58
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "voice-interaction-service"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_70

    const-string/jumbo v9, "Meta-data does not start with voice-interaction-service tag"

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_6a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_6a} :catch_118
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_6a} :catch_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_6a} :catch_cc
    .catchall {:try_start_46 .. :try_end_6a} :catchall_13e

    if-eqz v6, :cond_6f

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6f
    return-void

    :cond_70
    :try_start_70
    sget-object v9, Lcom/android/internal/R$styleable;->VoiceInteractionService:[I

    invoke-virtual {v7, v1, v9}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    const/4 v9, 0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    if-nez v9, :cond_b5

    const-string/jumbo v9, "No sessionService specified"

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_af} :catch_118
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_af} :catch_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_70 .. :try_end_af} :catch_cc
    .catchall {:try_start_70 .. :try_end_af} :catchall_13e

    if-eqz v6, :cond_b4

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b4
    return-void

    :cond_b5
    :try_start_b5
    iget-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    if-nez v9, :cond_c4

    const-string/jumbo v9, "No recognitionService specified"

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b5 .. :try_end_be} :catch_118
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_be} :catch_f2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_be} :catch_cc
    .catchall {:try_start_b5 .. :try_end_be} :catchall_13e

    if-eqz v6, :cond_c3

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c3
    return-void

    :cond_c4
    if-eqz v6, :cond_c9

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c9
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-void

    :catch_cc
    move-exception v2

    :try_start_cd
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ec
    .catchall {:try_start_cd .. :try_end_ec} :catchall_13e

    if-eqz v6, :cond_f1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_f1
    return-void

    :catch_f2
    move-exception v3

    :try_start_f3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_f3 .. :try_end_112} :catchall_13e

    if-eqz v6, :cond_117

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_117
    return-void

    :catch_118
    move-exception v4

    :try_start_119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing voice interation service meta-data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    const-string/jumbo v9, "VoiceInteractionServiceInfo"

    const-string/jumbo v10, "error parsing voice interaction service meta-data"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_138
    .catchall {:try_start_119 .. :try_end_138} :catchall_13e

    if-eqz v6, :cond_13d

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_13d
    return-void

    :catchall_13e
    move-exception v9

    if-eqz v6, :cond_144

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_144
    throw v9
.end method

.method static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const v3, 0x100c0080

    invoke-interface {v2, p0, v3, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    move-result-object v1

    if-eqz v1, :cond_f

    return-object v1

    :catch_e
    move-exception v0

    :cond_f
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getParseError()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public getRecognitionService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mRecognitionService:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSessionService()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSessionService:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsAssist()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsAssist:Z

    return v0
.end method

.method public getSupportsLaunchFromKeyguard()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLaunchFromKeyguard:Z

    return v0
.end method

.method public getSupportsLocalInteraction()Z
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionServiceInfo;->mSupportsLocalInteraction:Z

    return v0
.end method
