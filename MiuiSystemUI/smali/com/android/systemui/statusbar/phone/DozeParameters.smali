.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# instance fields
.field private final mAmbientDisplayConfigurationCompat:Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfigurationCompat:Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;

    return-void
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAlwaysOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfigurationCompat:Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getPulseInDuration(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "doze.pulse.duration.in.pickup"

    const v1, 0x7f0b0019

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "doze.pulse.duration.in"

    const v1, 0x7f0b0018

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getPulseOutDuration()I
    .locals 2

    const-string/jumbo v0, "doze.pulse.duration.out"

    const v1, 0x7f0b001a

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDuration()I
    .locals 2

    const-string/jumbo v0, "doze.pulse.duration.visible"

    const v1, 0x7f0b001b

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPulseVisibleDurationExtended()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method
