.class public abstract Lmiui/maml/ObjectFactory$BitmapProviderFactory;
.super Lmiui/maml/ObjectFactory$ObjectFactoryBase;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapProviderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/maml/ObjectFactory$ObjectFactoryBase",
        "<",
        "Lmiui/maml/ObjectFactory$BitmapProviderFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BitmapProvider"


# direct methods
.method protected constructor <init>()V
    .registers 2

    const-string/jumbo v0, "BitmapProvider"

    invoke-direct {p0, v0}, Lmiui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->doCreate(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    iget-object v2, p0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lmiui/maml/ObjectFactory;

    if-nez v2, :cond_d

    :goto_c
    return-object v1

    :cond_d
    iget-object v1, p0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lmiui/maml/ObjectFactory;

    check-cast v1, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    goto :goto_c
.end method

.method protected abstract doCreate(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
.end method
