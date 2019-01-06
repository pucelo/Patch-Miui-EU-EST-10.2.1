.class public Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "SystemTraceSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SystemTraceSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysTraceFields"
.end annotation


# instance fields
.field public traceName:Ljava/lang/String;

.field public traceTag:J

.field public traceValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method
