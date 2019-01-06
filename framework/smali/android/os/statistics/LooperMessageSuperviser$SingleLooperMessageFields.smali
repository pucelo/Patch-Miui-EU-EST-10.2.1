.class public Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/LooperMessageSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleLooperMessageFields"
.end annotation


# instance fields
.field public messageCallbackClazz:Ljava/lang/Class;

.field public messageName:Ljava/lang/String;

.field public messageTargetClazz:Ljava/lang/Class;

.field public messageWhat:I

.field public planUptimeMillis:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method
