.class public Landroid/os/StrictMode$StrictModeViolation;
.super Ldalvik/system/BlockGuard$BlockGuardPolicyException;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrictModeViolation"
.end annotation


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Ldalvik/system/BlockGuard$BlockGuardPolicyException;-><init>(IILjava/lang/String;)V

    return-void
.end method