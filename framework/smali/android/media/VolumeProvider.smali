.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/media/VolumeProvider$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    return v0
.end method

.method public final getMaxVolume()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    return v0
.end method

.method public final getVolumeControl()I
    .registers 2

    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    return v0
.end method

.method public onAdjustVolume(I)V
    .registers 2

    return-void
.end method

.method public onSetVolumeTo(I)V
    .registers 2

    return-void
.end method

.method public setCallback(Landroid/media/VolumeProvider$Callback;)V
    .registers 2

    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    return-void
.end method

.method public final setCurrentVolume(I)V
    .registers 3

    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    :cond_b
    return-void
.end method
