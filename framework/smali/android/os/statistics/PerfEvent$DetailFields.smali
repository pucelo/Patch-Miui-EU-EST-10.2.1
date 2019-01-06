.class public Landroid/os/statistics/PerfEvent$DetailFields;
.super Ljava/lang/Object;
.source "PerfEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailFields"
.end annotation


# instance fields
.field public lazyInfoResolved:Z

.field public packageName:Ljava/lang/String;

.field public processName:Ljava/lang/String;

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
