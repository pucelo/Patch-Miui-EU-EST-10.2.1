.class final synthetic Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/GraphicsStatsService;

    invoke-virtual {v0}, Lcom/android/server/GraphicsStatsService;->-com_android_server_GraphicsStatsService-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAlarm()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/-$Lambda$o3e2BPeEiY4LSvdQI9l_B7RsPtQ;->$m$0()V

    return-void
.end method
