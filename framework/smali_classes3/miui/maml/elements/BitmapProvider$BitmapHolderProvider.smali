.class public Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHolderProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapHolder"


# instance fields
.field private mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

.field private mId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;->getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    :cond_d
    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    move-object v1, p1

    :goto_15
    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3, v1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v2

    instance-of v3, v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    if-eqz v3, :cond_23

    check-cast v2, Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    iput-object v2, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mBitmapHolder:Lmiui/maml/elements/BitmapProvider$IBitmapHolder;

    :cond_23
    return-void

    :cond_24
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/BitmapProvider$BitmapHolderProvider;->mId:Ljava/lang/String;

    goto :goto_15
.end method
