.class final Lcom/android/server/VibratorServiceInjector$2;
.super Landroid/telephony/PhoneStateListener;
.source "VibratorServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorServiceInjector;->listenForCallState(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v0}, Lcom/android/server/VibratorServiceInjector;->-set0(Z)Z

    return-void
.end method
