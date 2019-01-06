.class final synthetic Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_21943(Ljava/lang/String;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;

    invoke-static {v0, p1}, Lcom/android/server/pm/InstantAppRegistry;->lambda$-com_android_server_pm_InstantAppRegistry_11324(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/InstantAppRegistry$UninstalledInstantAppState;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_5308(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/dex/DexManager;

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_5578(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;->lambda$-com_android_server_pm_ShortcutService$LocalService_90794(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$id:B

    iput-object p2, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-byte v0, p0, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$id:B

    packed-switch v0, :pswitch_data_24

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_15
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1a
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1f
    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$KFbchFEqJgs_hY1HweauKRNA_ds;->$m$4(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_b
        :pswitch_10
        :pswitch_15
        :pswitch_1a
        :pswitch_1f
    .end packed-switch
.end method
