.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/WindowState;

    iget-object v2, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/view/WindowManagerPolicy$WindowState;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DisplayContent;->lambda$-com_android_server_wm_DisplayContent_112070(Lcom/android/server/wm/WindowState;Landroid/view/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$3;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method