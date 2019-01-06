.class public Lmiui/maml/elements/AttrDataBinders;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
    }
.end annotation


# static fields
.field private static final ATTR_BITMAP:Ljava/lang/String; = "bitmap"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PARAMS:Ljava/lang/String; = "params"

.field private static final ATTR_PARAS:Ljava/lang/String; = "paras"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_SRCID:Ljava/lang/String; = "srcid"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final LOG_TAG:Ljava/lang/String; = "AttrDataBinders"

.field public static final TAG:Ljava/lang/String; = "AttrDataBinders"


# instance fields
.field private mBinders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mVars:Lmiui/maml/data/ContextVariables;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/ContextVariables;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    iput-object p2, p0, Lmiui/maml/elements/AttrDataBinders;->mVars:Lmiui/maml/data/ContextVariables;

    const-string/jumbo v0, "AttrDataBinder"

    new-instance v1, Lmiui/maml/elements/AttrDataBinders$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/AttrDataBinders$1;-><init>(Lmiui/maml/elements/AttrDataBinders;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ElementGroup;)V
    .registers 5

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->bind(Lmiui/maml/elements/ElementGroup;)Z

    goto :goto_6

    :cond_16
    return-void
.end method
