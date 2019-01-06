.class final Lcom/android/server/HandyMode$3;
.super Landroid/database/ContentObserver;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    const-string/jumbo v1, "handy_mode_size"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Lcom/android/server/HandyMode;->-wrap1()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_8

    :cond_24
    const-string/jumbo v1, "handy_mode_state"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/android/server/HandyMode;->sHandyModeUtils:Lmiui/util/HandyModeUtils;

    invoke-virtual {v1}, Lmiui/util/HandyModeUtils;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_44

    sget-object v1, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    sget-object v2, Lcom/android/server/HandyMode;->sHandyModeInputFilter:Lcom/android/server/MiuiInputFilter;

    invoke-virtual {v1, v2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    :goto_40
    invoke-static {}, Lcom/android/server/HandyMode;->-wrap1()V

    goto :goto_21

    :cond_44
    sget-object v1, Lcom/android/server/HandyMode;->sInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    goto :goto_40
.end method
