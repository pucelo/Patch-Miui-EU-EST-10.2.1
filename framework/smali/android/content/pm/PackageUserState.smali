.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "PackageUserState.java"


# instance fields
.field public appLinkGeneration:I

.field public categoryHint:I

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public overlayPaths:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z

.field public virtualPreload:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget-wide v2, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v1, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iput-boolean v1, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget v1, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v1, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v1, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez v1, :cond_56

    :goto_53
    iput-object v0, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-void

    :cond_56
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_53
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x0

    instance-of v2, p1, Landroid/content/pm/PackageUserState;

    if-nez v2, :cond_6

    return v6

    :cond_6
    move-object v1, p1

    check-cast v1, Landroid/content/pm/PackageUserState;

    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iget-wide v4, v1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_12

    return v6

    :cond_12
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->installed:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eq v2, v3, :cond_19

    return v6

    :cond_19
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eq v2, v3, :cond_20

    return v6

    :cond_20
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eq v2, v3, :cond_27

    return v6

    :cond_27
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eq v2, v3, :cond_2e

    return v6

    :cond_2e
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v3, :cond_35

    return v6

    :cond_35
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eq v2, v3, :cond_3c

    return v6

    :cond_3c
    iget-boolean v2, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iget-boolean v3, v1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eq v2, v3, :cond_43

    return v6

    :cond_43
    iget v2, p0, Landroid/content/pm/PackageUserState;->enabled:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->enabled:I

    if-eq v2, v3, :cond_4a

    return v6

    :cond_4a
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-nez v2, :cond_53

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_53

    :cond_52
    return v6

    :cond_53
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v2, :cond_63

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_52

    :cond_63
    iget v2, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eq v2, v3, :cond_6a

    return v6

    :cond_6a
    iget v2, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eq v2, v3, :cond_71

    return v6

    :cond_71
    iget v2, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->categoryHint:I

    if-eq v2, v3, :cond_78

    return v6

    :cond_78
    iget v2, p0, Landroid/content/pm/PackageUserState;->installReason:I

    iget v3, v1, Landroid/content/pm/PackageUserState;->installReason:I

    if-eq v2, v3, :cond_7f

    return v6

    :cond_7f
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_88

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_88

    :cond_87
    return v6

    :cond_88
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_90

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_87

    :cond_90
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_bf

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_a3

    return v6

    :cond_a3
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_ab
    if-ltz v0, :cond_bf

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bc

    return v6

    :cond_bc
    add-int/lit8 v0, v0, -0x1

    goto :goto_ab

    :cond_bf
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-nez v2, :cond_c8

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_c8

    :cond_c7
    return v6

    :cond_c8
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_d0

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_c7

    :cond_d0
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    if-eqz v2, :cond_ff

    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-eq v2, v3, :cond_e3

    return v6

    :cond_e3
    iget-object v2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_eb
    if-ltz v0, :cond_ff

    iget-object v2, v1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    return v6

    :cond_fc
    add-int/lit8 v0, v0, -0x1

    goto :goto_eb

    :cond_ff
    const/4 v2, 0x1

    return v2
.end method

.method public isAvailable(I)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_18

    const/4 v0, 0x1

    :goto_8
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_1a

    const/4 v1, 0x1

    :goto_d
    if-nez v0, :cond_1c

    iget-boolean v4, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v4, :cond_20

    iget-boolean v3, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_1e

    :goto_17
    return v1

    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    :cond_1a
    const/4 v1, 0x0

    goto :goto_d

    :cond_1c
    move v1, v2

    goto :goto_17

    :cond_1e
    move v1, v2

    goto :goto_17

    :cond_20
    move v1, v3

    goto :goto_17
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p2, 0x200

    if-eqz v0, :cond_7

    return v3

    :cond_7
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    packed-switch v0, :pswitch_data_34

    :cond_c
    :pswitch_c
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v3

    :pswitch_17
    return v2

    :pswitch_18
    const v0, 0x8000

    and-int/2addr v0, p2

    if-nez v0, :cond_1f

    return v2

    :cond_1f
    :pswitch_1f
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_c

    return v2

    :cond_26
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    return v2

    :cond_31
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    return v0

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_c
        :pswitch_17
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .registers 9

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const v5, 0x402000

    and-int/2addr v5, p2

    if-eqz v5, :cond_1b

    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v5

    if-nez v5, :cond_1f

    if-eqz v0, :cond_1d

    :goto_16
    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_1f

    return v4

    :cond_1b
    const/4 v1, 0x0

    goto :goto_e

    :cond_1d
    move v1, v4

    goto :goto_16

    :cond_1f
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    move-result v5

    if-nez v5, :cond_26

    return v4

    :cond_26
    const/high16 v5, 0x100000

    and-int/2addr v5, p2

    if-eqz v5, :cond_2e

    if-nez v0, :cond_2e

    return v4

    :cond_2e
    const/high16 v4, 0x40000

    and-int/2addr v4, p2

    if-eqz v4, :cond_41

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    xor-int/lit8 v3, v4, 0x1

    :goto_37
    const/high16 v4, 0x80000

    and-int/2addr v4, p2

    if-eqz v4, :cond_43

    iget-boolean v2, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    :goto_3e
    if-nez v3, :cond_45

    :goto_40
    return v2

    :cond_41
    const/4 v3, 0x0

    goto :goto_37

    :cond_43
    const/4 v2, 0x0

    goto :goto_3e

    :cond_45
    const/4 v2, 0x1

    goto :goto_40
.end method
