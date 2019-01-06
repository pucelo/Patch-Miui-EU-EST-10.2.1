.class Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;
.super Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SrcIdBinder"
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lmiui/maml/elements/ScreenElement;)V
    .registers 6

    iget-object v1, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v1, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lmiui/maml/data/ContextVariables;

    iget-object v2, p0, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$1:Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v2, v2, Lmiui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/data/ContextVariables;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    check-cast p1, Lmiui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_16

    const-wide/16 v2, 0x0

    :goto_12
    invoke-virtual {p1, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->setSrcId(D)V

    return-void

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_12
.end method
