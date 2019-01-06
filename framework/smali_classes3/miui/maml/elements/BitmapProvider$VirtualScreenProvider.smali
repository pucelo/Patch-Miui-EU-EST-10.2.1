.class Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualScreenProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VirtualScreen"


# instance fields
.field private mVirtualScreen:Lmiui/maml/elements/VirtualScreen;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    if-eqz v2, :cond_d

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    invoke-virtual {v0}, Lmiui/maml/elements/VirtualScreen;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_d
    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/elements/VirtualScreen;

    if-eqz v1, :cond_11

    check-cast v0, Lmiui/maml/elements/VirtualScreen;

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$VirtualScreenProvider;->mVirtualScreen:Lmiui/maml/elements/VirtualScreen;

    :cond_11
    return-void
.end method
