.class public Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/LockscreenActionCommandFactory;
.super Lmiui/maml/ObjectFactory$ActionCommandFactory;
.source "LockscreenActionCommandFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/ObjectFactory$ActionCommandFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected doCreate(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;
    .locals 2

    invoke-interface {p2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UnlockVerifyPasswordCommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;

    invoke-direct {v1, p1, p2}, Lcom/miui/internal/policy/impl/AwesomeLockScreenImp/UnlockVerifyPasswordCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
