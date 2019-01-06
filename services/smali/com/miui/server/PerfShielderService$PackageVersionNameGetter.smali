.class Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;
.super Ljava/lang/Object;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageVersionNameGetter"
.end annotation


# instance fields
.field packageVersionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, ""

    return-object v2

    :cond_a
    iget-object v2, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string/jumbo v1, ""

    :try_start_15
    iget-object v2, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v2}, Lcom/miui/server/PerfShielderService;->-get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_34

    :goto_26
    iget-object v2, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v2, p0, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->packageVersionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :catch_34
    move-exception v0

    goto :goto_26
.end method
