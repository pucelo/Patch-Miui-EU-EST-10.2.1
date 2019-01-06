.class public Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;
.super Ljava/lang/Object;
.source "AmbientDisplayConfigurationCompat.java"


# instance fields
.field private mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-direct {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-void
.end method


# virtual methods
.method public alwaysOnEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/hardware/AmbientDisplayConfigurationCompat;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    return v0
.end method
