.class public Lmiui/maml/SoundManager$SoundOptions;
.super Ljava/lang/Object;
.source "SoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundOptions"
.end annotation


# instance fields
.field public mKeepCur:Z

.field public mLoop:Z

.field public mVolume:F


# direct methods
.method public constructor <init>(ZZF)V
    .registers 7

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    iput-boolean p2, p0, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    cmpg-float v0, p3, v1

    if-gez v0, :cond_11

    iput v1, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    :goto_10
    return-void

    :cond_11
    cmpl-float v0, p3, v2

    if-lez v0, :cond_18

    iput v2, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_10

    :cond_18
    iput p3, p0, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    goto :goto_10
.end method
