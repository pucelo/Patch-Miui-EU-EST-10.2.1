.class final synthetic Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# static fields
.field public static final synthetic $INST$0:Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    invoke-static {p1}, Lcom/android/server/am/BatteryExternalStatsWorker;->lambda$-com_android_server_am_BatteryExternalStatsWorker_2654(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;

    invoke-direct {v0}, Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;-><init>()V

    sput-object v0, Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;->$INST$0:Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/am/-$Lambda$pTkujrAbcljW_zZtzXt4TxsgOZU;->$m$0(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
