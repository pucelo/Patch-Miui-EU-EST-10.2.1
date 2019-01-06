.class public Landroid/os/statistics/EventLogSuperviser$EventLogFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogFields"
.end annotation


# instance fields
.field public eventLogValueObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    return-void
.end method
