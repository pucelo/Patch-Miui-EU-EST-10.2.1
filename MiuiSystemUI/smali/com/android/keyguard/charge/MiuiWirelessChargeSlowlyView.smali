.class public Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;
.super Ljava/lang/Object;
.source "MiuiWirelessChargeSlowlyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mImageView:Landroid/widget/ImageView;

.field private mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)Landroid/net/Uri;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$1;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)V

    iput-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    iput-object p1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getVideoUri()Landroid/net/Uri;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "android.resource://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f100014

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private initView()V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d007d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0342

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f0a0343

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/TextureView;

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mTextureView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mTextureView:Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v3, 0x7f1201f3

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView$2;-><init>(Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;)V

    const v3, 0x7f110716

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iput-object v1, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->initView()V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
