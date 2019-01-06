.class public Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleMonitorFields"
.end annotation


# instance fields
.field public javaBackTrace:Ljava/lang/Object;

.field public stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method
