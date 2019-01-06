.class public Lmiui/securityspace/CrossUserPickerActivity;
.super Lmiui/app/Activity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    return-void
.end method

.method private validateCallingPackage()Z
    .registers 3

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method private validateCrossUser()I
    .registers 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCallingPackage()Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    return v3
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 6

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_26

    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_25

    new-instance v0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p0, v2, v3}, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiui/securityspace/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_32

    :cond_25
    monitor-exit v1

    :cond_26
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_35
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 4

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_21

    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_20

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lmiui/securityspace/CrossUserPickerActivity;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_2d

    :cond_20
    monitor-exit v1

    :cond_21
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getContentResolver: CrossUserContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    return-object v0

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCrossUserPick()Z
    .registers 3

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    invoke-super {p0, p1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 5

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 6

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 7

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_10
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
