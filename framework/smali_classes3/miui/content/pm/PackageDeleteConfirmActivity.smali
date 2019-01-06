.class public Lmiui/content/pm/PackageDeleteConfirmActivity;
.super Landroid/app/Activity;
.source "PackageDeleteConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/PackageDeleteConfirmActivity$1;
    }
.end annotation


# static fields
.field private static final DELETE_MSG_NEXT_STEP_INTERVAL:I = 0x3e8

.field private static final DELETE_MSG_NEXT_STEP_WHAT:I = 0x64

.field public static final EXTRA_PKGNAME:Ljava/lang/String; = "extra_pkgname"

.field private static final MAX_STEPS:I = 0x3


# instance fields
.field private delete:Z

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mAutoNextStepTime:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentStep:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

.field private mPkgName:Ljava/lang/String;

.field private mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .registers 2

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return v0
.end method

.method static synthetic -get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .registers 2

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    return v0
.end method

.method static synthetic -get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/content/pm/PackageDeleteConfirmActivity;I)I
    .registers 2

    iput p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    new-instance v0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;

    invoke-direct {v0, p0}, Lmiui/content/pm/PackageDeleteConfirmActivity$1;-><init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V

    iput-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_7
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d4

    invoke-virtual {p0, v1, v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_13
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d5

    invoke-virtual {p0, v1, v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d6

    invoke-virtual {p0, v1, v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_1f
    .end packed-switch
.end method

.method private loadAppLabel()Ljava/lang/CharSequence;
    .registers 6

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_4
    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_e} :catch_10

    move-result-object v3

    return-object v3

    :catch_10
    move-exception v1

    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_80

    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    goto :goto_c

    :pswitch_18
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_27

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    goto :goto_c

    :cond_27
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_69

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x110900d3

    invoke-virtual {p0, v2, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_57
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_c

    :cond_69
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x110900d1

    invoke-virtual {p0, v2, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_57

    :pswitch_data_80
    .packed-switch 0x110c0015
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x11030001

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_e
    const-string/jumbo v2, "extra_pkgname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_23

    :goto_17
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    return-void

    :catch_23
    move-exception v0

    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    goto :goto_17

    :cond_28
    const-string/jumbo v2, "observer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPackageDeleteConfirmObserver;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    invoke-direct {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->loadAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    const v2, 0x110c0014

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    const v2, 0x110c0015

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x110c0016

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x110900d1

    invoke-virtual {p0, v4, v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .registers 4

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_7
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    iget-boolean v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-interface {v1, v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver;->onConfirm(Z)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_15

    :goto_e
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    return-void

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_e
.end method
