.class Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;
.super Ljava/lang/Object;
.source "ProcessStarter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessPriorityInfo"
.end annotation


# instance fields
.field app:Lcom/android/server/am/ProcessRecord;

.field maxAdj:I

.field maxProcState:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->app:Lcom/android/server/am/ProcessRecord;

    sget v0, Lmiui/process/ProcessManager;->DEFAULT_MAX_ADJ:I

    iput v0, p0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxAdj:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/android/server/am/ProcessStarter$ProcessPriorityInfo;->maxProcState:I

    return-void
.end method
