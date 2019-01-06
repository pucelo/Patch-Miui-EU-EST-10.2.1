.class public Lcom/android/keyguard/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"


# instance fields
.field private final mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/phone/DozeParameters;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/keyguard/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/phone/DozeParameters;->mAmbientDisplayConfiguration:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDisplayStateSupported()Z
    .locals 2

    const-string/jumbo v0, "doze.display.supported"

    const v1, 0x7f050034

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
