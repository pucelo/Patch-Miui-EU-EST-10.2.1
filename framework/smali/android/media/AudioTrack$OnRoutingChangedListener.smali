.class public interface abstract Landroid/media/AudioTrack$OnRoutingChangedListener;
.super Ljava/lang/Object;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting$OnRoutingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRoutingChangedListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public onRoutingChanged(Landroid/media/AudioRouting;)V
    .registers 3

    instance-of v0, p1, Landroid/media/AudioTrack;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/media/AudioTrack;

    invoke-interface {p0, p1}, Landroid/media/AudioTrack$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioTrack;)V

    :cond_9
    return-void
.end method

.method public abstract onRoutingChanged(Landroid/media/AudioTrack;)V
.end method
