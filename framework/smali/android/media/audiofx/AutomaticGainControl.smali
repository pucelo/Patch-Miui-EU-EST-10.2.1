.class public Landroid/media/audiofx/AutomaticGainControl;
.super Landroid/media/audiofx/AudioEffect;
.source "AutomaticGainControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutomaticGainControl"


# direct methods
.method private constructor <init>(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AutomaticGainControl;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/media/audiofx/AutomaticGainControl;

    invoke-direct {v1, p0}, Landroid/media/audiofx/AutomaticGainControl;-><init>(I)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_1e
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_6} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6} :catch_8

    move-object v0, v1

    :goto_7
    return-object v0

    :catch_8
    move-exception v3

    const-string/jumbo v5, "AutomaticGainControl"

    const-string/jumbo v6, "not enough memory"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_13
    move-exception v4

    const-string/jumbo v5, "AutomaticGainControl"

    const-string/jumbo v6, "not enough resources"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_1e
    move-exception v2

    const-string/jumbo v5, "AutomaticGainControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not implemented on this device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static isAvailable()Z
    .registers 1

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
