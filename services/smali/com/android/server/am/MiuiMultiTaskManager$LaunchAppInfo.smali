.class Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;
.super Ljava/lang/Object;
.source "MiuiMultiTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiMultiTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LaunchAppInfo"
.end annotation


# instance fields
.field private returnTarget:Landroid/content/ComponentName;

.field private supports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->supports:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/am/MiuiMultiTaskManager$LaunchAppInfo;->returnTarget:Landroid/content/ComponentName;

    return-void
.end method
