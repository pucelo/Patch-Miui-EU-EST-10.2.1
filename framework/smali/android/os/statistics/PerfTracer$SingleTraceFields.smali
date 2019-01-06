.class public Landroid/os/statistics/PerfTracer$SingleTraceFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "PerfTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTraceFields"
.end annotation


# instance fields
.field private numberValue:J

.field private objectValue:Ljava/lang/Object;

.field private tag:Ljava/lang/String;

.field private textValue:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/os/statistics/PerfTracer$SingleTraceFields;)J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->numberValue:J

    return-wide v0
.end method

.method static synthetic -get1(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->objectValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->textValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/os/statistics/PerfTracer$SingleTraceFields;J)J
    .registers 4

    iput-wide p1, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->numberValue:J

    return-wide p1
.end method

.method static synthetic -set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->objectValue:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic -set2(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->tag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->textValue:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method
