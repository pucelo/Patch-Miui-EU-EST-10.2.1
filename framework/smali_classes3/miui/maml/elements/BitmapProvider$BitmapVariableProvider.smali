.class public Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapVariableProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BitmapVar"


# instance fields
.field private mCurSrc:Ljava/lang/String;

.field private mIndexExpression:Lmiui/maml/data/Expression;

.field private mVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .registers 16

    const/4 v10, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    invoke-static {v7, p1}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_57

    iput-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iput-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    const/16 v7, 0x5b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, -0x1

    if-eq v4, v7, :cond_43

    add-int/lit8 v7, v5, -0x1

    if-ge v4, v7, :cond_43

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5d

    if-ne v7, v8, :cond_43

    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    add-int/lit8 v9, v5, -0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    :cond_43
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    if-nez v7, :cond_79

    move-object v6, p1

    :goto_48
    new-instance v7, Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-direct {v7, v6, v8, v10}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    :cond_55
    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    :cond_57
    const/4 v2, 0x0

    :try_start_58
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_71

    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    if-eqz v7, :cond_7e

    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iget-object v8, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mIndexExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v8

    double-to-int v8, v8

    invoke-virtual {v7, v8}, Lmiui/maml/data/IndexedVariable;->getArr(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_71
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_71} :catch_89

    :cond_71
    :goto_71
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v7, v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v7

    :cond_79
    invoke-virtual {p1, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_48

    :cond_7e
    :try_start_7e
    iget-object v7, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v7}, Lmiui/maml/data/IndexedVariable;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v2, v0
    :try_end_88
    .catch Ljava/lang/ClassCastException; {:try_start_7e .. :try_end_88} :catch_89

    goto :goto_71

    :catch_89
    move-exception v3

    const-string/jumbo v7, "BitmapProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fail to cast as Bitmap from object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method public init(Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mVar:Lmiui/maml/data/IndexedVariable;

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$BitmapVariableProvider;->mCurSrc:Ljava/lang/String;

    return-void
.end method
